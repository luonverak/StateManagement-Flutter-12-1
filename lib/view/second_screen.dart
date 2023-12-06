import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondScreen'),
      ),
      body: Center(
          child: Obx(
        () => Text(
          '${controller.counter.value}',
          style: const TextStyle(fontSize: 30),
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () async => controller.increase(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () async => controller.decrease(),
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}

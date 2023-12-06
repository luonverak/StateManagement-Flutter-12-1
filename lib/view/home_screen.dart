import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/counter_controller.dart';
import 'package:state_management/view/second_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        actions: [
          IconButton(
            onPressed: () => Get.to(SecondScreen()),
            icon: const Icon(Icons.forward),
          ),
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.counter.value}',
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
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
          ),
          FloatingActionButton(
            onPressed: () {
              Get.changeTheme(
                Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
              );
            },
            child: const Icon(Icons.event),
          )
        ],
      ),
    );
  }
}

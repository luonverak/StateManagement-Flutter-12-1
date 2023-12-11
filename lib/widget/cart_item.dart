import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/product_controller.dart';

import '../model/shoe_model.dart';

Widget itemCart(ShoeData data) {
  final ProductController controller = Get.put(ProductController());
  return Slidable(
    endActionPane: ActionPane(
      motion: const DrawerMotion(),
      children: [
        SlidableAction(
          borderRadius: BorderRadius.circular(10),
          onPressed: (context) async {
            controller.removeCart(data);
          },
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Remove',
        ),
      ],
    ),
    child: SizedBox(
      width: double.infinity,
      height: 100,
      child: Card(
        child: Row(
          children: [
            Container(
              width: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data.image),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Price ${data.price}',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Qty ${data.counter}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

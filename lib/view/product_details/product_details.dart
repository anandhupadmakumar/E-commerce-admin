import 'package:ecommerce_admin/view/constants/colors.dart';
import 'package:ecommerce_admin/view/widgets/gridview_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_product.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Products',
          style: TextStyle(color: black),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: black,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () {
                Get.to(() => const AddProductScreen());
              },
              icon: const Icon(
                Icons.add,
                color: black,
              ),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: const GridviewCardWidget(),
    );
  }
}

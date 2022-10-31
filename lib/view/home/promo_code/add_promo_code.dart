import 'package:ecommerce_admin/view/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';

class PromoCodeScreen extends StatelessWidget {
  const PromoCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Promocode details',
          style: TextStyle(color: black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          color: black,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 100,
            left: 20,
            top: 0,
            right: 0,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: Center(
                        child: Icon(Icons.percent),
                      ),
                    ),
                    title: const Text('Special 25% off'),
                    subtitle: const Text('Spedial promo only today!'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return height20;
                },
                itemCount: 5),
          ),
          Positioned(
            bottom: 20,
            left: 45,
            child: InkWell(
              onTap: () {
                //add a alertdialoge box
                Get.defaultDialog(
                  title: 'Add promo details',
                  content: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter title ',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: black, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                      height20,
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'enter the details ',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: black, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Cancel'),
                  ),
                  confirm: TextButton(
                    onPressed: () {},
                    child: const Text('Add'),
                  ),
                );
              },
              child: Container(
                width: 300,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

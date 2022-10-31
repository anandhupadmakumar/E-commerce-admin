import 'package:ecommerce_admin/view/constants/colors.dart';
import 'package:ecommerce_admin/view/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Add new Product',
          style: TextStyle(color: black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children:  [
         const  SizedBox(
            height: 180,
            child:  Image(
                image: AssetImage('assets/images/shoes-wasatch-running-3.png')),
          ),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera),
              label:const  Text('Add Image')),
          height20,
          TextFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              hintText: 'Name of the product',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          height10,
          TextFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              hintText: 'Price of the product',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          height10,
          TextFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              hintText: 'Brand of the  product',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          height10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
                width: 100,
                child: DropdownButton<String>(
                  hint:const  Text('Category'),
                  borderRadius: BorderRadius.circular(20),
                  items: <String>[
                    'Casual',
                    'Formal',
                    'Sports',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                   
                  },
                ),
              ),
              SizedBox(
                height: 40,
                width: 150,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'no.of stock',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: black, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          height10,
          TextFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              hintText: 'Discription',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          height20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: InkWell(
              onTap: (() {}),
              child: Container(
                width: 40,
                height: 50,
                decoration: const BoxDecoration(
                    color: black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Center(
                  child: Text(
                    'Add Product',
                    style: TextStyle(color: white),
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

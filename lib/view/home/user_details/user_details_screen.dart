import 'package:ecommerce_admin/view/constants/colors.dart';
import 'package:ecommerce_admin/view/constants/constants.dart';
import 'package:ecommerce_admin/view/home/user_details/user_profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'User Details',
          style: TextStyle(color: black),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: black,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: black,
            ),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return ListTile(
              onTap: (() {
                //user full profile page
                Get.to(() => const UserProfileScreen());
              }),
              leading: const CircleAvatar(
                radius: 30,
              ),
              title: Row(
                children: [
                  const Text('Name of User'),
                  const Spacer(),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.block),
                      label: const Text('Block')),
                ],
              ),
            );
          }),
          separatorBuilder: ((context, index) {
            return height20;
          }),
          itemCount: 5),
    );
  }
}

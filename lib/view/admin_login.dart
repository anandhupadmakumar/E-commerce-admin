import 'package:ecommerce_admin/view/constants/colors.dart';
import 'package:ecommerce_admin/view/constants/constants.dart';
import 'package:ecommerce_admin/view/home/admin_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            height: 300,
            width: 300,
            child: Image(
              image: AssetImage(
                  'assets/images/undraw_My_password_re_ydq7 (1).png'),
            ),
          ),
          height20,
          const Divider(
            thickness: 2,
            color: black,
          ),
          height20,
          TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(
              hintText: 'User Name',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          height20,
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: 'Password',
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
              onTap: () {
                








                Get.to(() => const AdminHomeScreen());
              },
              child: Container(
                width: 80,
                height: 60,
                decoration: const BoxDecoration(
                    color: black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(color: white),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

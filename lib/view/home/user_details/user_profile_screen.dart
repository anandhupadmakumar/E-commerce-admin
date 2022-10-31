import 'package:clippy_flutter/arc.dart';
import 'package:ecommerce_admin/view/constants/colors.dart';
import 'package:ecommerce_admin/view/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: black,
              )),
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            Arc(
              height: 30,
              child: Container(
                width: double.infinity,
                height: 150,
                color: const Color.fromARGB(255, 196, 195, 193),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/78-786207_user-avatar-png-user-avatar-icon-png-transparent.png'),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        Icons.circle,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
           const  Center(
                child: Text(
              'Name of the user',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            height20,
            const ProfileListTileWidget(
                icon: Icons.person,
                title: 'Address',
                trailingIcon: Icons.arrow_forward_ios),
            const ProfileListTileWidget(
                icon: Icons.location_on,
                title: 'Orders',
                trailingIcon: Icons.arrow_forward_ios),
            const ProfileListTileWidget(
                icon: Icons.notifications,
                title: 'Payments',
                trailingIcon: Icons.arrow_forward_ios),
          ],
        ));
  }
}

class ProfileListTileWidget extends StatelessWidget {
  const ProfileListTileWidget({
    required this.icon,
    required this.title,
    required this.trailingIcon,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(trailingIcon),
    );
  }
}

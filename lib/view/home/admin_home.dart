import 'package:ecommerce_admin/view/constants/colors.dart';
import 'package:ecommerce_admin/view/home/promo_code/add_promo_code.dart';
import 'package:ecommerce_admin/view/home/user_details/user_details_screen.dart';
import 'package:ecommerce_admin/view/product_details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../constants/constants.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: const TabBar(indicatorColor: Colors.grey, tabs: [
            Tab(
                child: Text(
              'Dash Board',
              style: TextStyle(color: Colors.black),
            )),
            Tab(
                child: Text(
              'Manage',
              style: TextStyle(color: Colors.black),
            ))
          ]),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1 / 0.9),
                  children: const [
                    DashBoardContainerWidget(),
                    DashBoardContainerWidget(),
                    DashBoardContainerWidget(),
                    DashBoardContainerWidget(),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Order Overview',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SfCartesianChart(
                  plotAreaBorderColor: black,
                  plotAreaBackgroundColor: white,
                  backgroundColor: const Color.fromARGB(255, 7, 255, 205),
                ),
              ],
            ),
          ),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: const [
              height20,
              ManageTileContainer(
                title: 'Product Details',
                icon: Icons.shopping_bag_rounded,
                navigationScreen: ProductDetails(),
              ),
              height10,
              ManageTileContainer(
                title: 'User Details',
                icon: Icons.person,
                navigationScreen: UserDetailScreen(),
              ),
              height10,
              ManageTileContainer(
                navigationScreen: PromoCodeScreen(),
                title: 'Promo Code',
                icon: Icons.local_offer_rounded,
              ),
              // height10,
              // ManageTileContainer(
              //   title: 'Order details',
              //   icon: Icons.shopping_cart,
              // ),
            ],
          ),
        ]),
      ),
    );
  }
}

class ManageTileContainer extends StatelessWidget {
  const ManageTileContainer({
    Key? key,
    required this.title,
    required this.icon,
    required this.navigationScreen,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final StatelessWidget navigationScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 201, 199, 199),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: ListTile(
        onTap: () {
          Get.to(() => navigationScreen);
        },
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}

class DashBoardContainerWidget extends StatelessWidget {
  const DashBoardContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 69, 149, 210),
            Color.fromARGB(255, 219, 10, 230)
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.location_city,
                  color: white,
                ),
                height20,
                Text(
                  '25012',
                  style: TextStyle(color: white),
                ),
                height05,
                Text(
                  "Today's Sales",
                  style: TextStyle(color: white),
                ),
                height10,
                Text(
                  'Tap to view',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ]),
        ),
      ),
    );
  }
}

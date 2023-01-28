// ignore_for_file: unused_local_variable

import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/views/cart_screen/cart_screen.dart';
import 'package:ecommerce/views/category_screen/category_screen.dart';
import 'package:ecommerce/views/home_screen/home_screen.dart';
import 'package:ecommerce/views/profile_screen/profile_screen.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navBar = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: "home"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: "Catagories"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: "Account"),
    ];

    var navBody = [
     const HomeScreen(),
     const CategoryScreen(),
     const CartScreen(),
     const ProfileScreen()
      
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          items: navBar,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          onTap: ((value) => controller.currentNavIndex.value = value),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/modules/cart_screen_module/screen/cart_screen.dart';
import 'package:my_app/modules/cart_screen_module/screen/shoppinglist_screen.dart';

import 'package:my_app/modules/categories_screen_module/screen/category_screen.dart';

import 'package:my_app/modules/home_screen_module/screen/home_screen.dart';

import 'package:my_app/modules/profile_screen_module/screen/profile_screen.dart';
import 'package:my_app/utils/colors.dart';

class BottomNavigationModule extends StatefulWidget {
  const BottomNavigationModule({super.key});

  @override
  State<BottomNavigationModule> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationModule> {
  List pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const CartScreen(),
    const ShoppinglistScreen(),
    const ProfileScreen(),
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff192c5c),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) {
            myIndex = index;
            setState(() {});
          },
          currentIndex: myIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/home_unselected.png',
                color: myIndex == 0 ? null : Colors.grey,
                height: 25,
                width: 25,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/categories_unselected.png',
                  height: 25,
                  width: 25,
                  color: myIndex == 1 ? null : Colors.grey,
                ),
                label: "Category"),
            BottomNavigationBarItem(
                icon: Badge(
                  label: const Text('0'),
                  backgroundColor: tealColor,
                  largeSize: 17,
                  child: Image.asset(
                    'assets/images/shopping_cart.png',
                    color: myIndex == 2 ? null : Colors.grey,
                    height: 25,
                    width: 25,
                  ),
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/order.png',
                  color: myIndex == 3 ? null : Colors.grey,
                  height: 25,
                  width: 25,
                ),
                label: "Orders"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/user_2.png',
                  color: myIndex == 4 ? null : Colors.grey,
                  height: 25,
                  width: 25,
                ),
                label: "You"),
          ]),
    );
  }
}

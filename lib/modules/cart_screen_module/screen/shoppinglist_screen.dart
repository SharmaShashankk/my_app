import 'package:flutter/material.dart';
import 'package:my_app/modules/cart_screen_module/screen/cart_screen.dart';
import 'package:my_app/utils/colors.dart';

class ShoppinglistScreen extends StatefulWidget {
  const ShoppinglistScreen({super.key});

  @override
  State<ShoppinglistScreen> createState() => _ShoppinglistScreenState();
}

class _ShoppinglistScreenState extends State<ShoppinglistScreen> {
  List tileName = [
    {
      'image': 'assets/images/Dhara.png',
      'title': 'Grocery',
      'sub1': 'Dhara Groundnut Refined Cooking\nOil 5L',
      'sub2': 'Rs.540.00',
      'trailing': 'assets/images/Group112.png'
    },
    {
      'image': 'assets/images/Image2.png',
      'title': 'Grocery',
      'sub1': 'Mountain Dew 1L Soft Drink Bottle',
      'sub2': 'Rs.55.00',
      'trailing': 'assets/images/Group112.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              backgroundColor: Color(0xff192c5c),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: const Text(
          'My Shopping list',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff192c5c),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                size: 50,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tileName.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 150,
                        width: 80,
                        child: Image.asset(
                          tileName[index]['image'],
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      title: Text(
                        tileName[index]['title'],
                        style: TextStyle(color: tealColor, fontSize: 10),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tileName[index]['sub1'],
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            tileName[index]['sub2'],
                          ),
                        ],
                      ),
                      trailing: Image.asset(tileName[index]['trailing']),
                    ),
                    const Divider()
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/shopping-cart-add 1.png'),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Add to Cart (2)',
                    style: TextStyle(color: whiteColor),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: tealColor, minimumSize: const Size(50, 60)),
            ),
          ),
        ],
      ),
    );
  }
}

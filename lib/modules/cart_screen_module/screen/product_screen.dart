import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/modules/cart_screen_module/screen/shoppinglist_Screen.dart';
import 'package:my_app/utils/colors.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List imageList = [
    {'id': 'assets/images/Dhara.png'},
    {'id': 'assets/images/Dhara.png'},
    {'id': 'assets/images/Dhara.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: const Color(0xff192c5c),
              child: Icon(
                Icons.arrow_back,
                color: whiteColor,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset('assets/images/Group 87.png'),
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffE3E3E4),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 15),
              color: const Color(0xffE3E3E4),
              child: Column(
                children: [
                  CarouselSlider(
                    items: imageList
                        .map((item) => Image.asset(
                              item['id'],
                              fit: BoxFit.fitWidth,
                            ))
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        imageList.length,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: index == currentIndex
                                      ? Colors.teal
                                      : Colors.grey),
                            ),
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 15),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Grocery',
                        style: TextStyle(color: tealColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Dhara Groundnut Refined Cooking Oil 5L',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Rs.540',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/star 1.png'),
                          const Text('4.8(230)')
                        ],
                      ),
                    ],
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Pack/Size/Weight',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: tealColor,
                            borderRadius: BorderRadius.circular(11)),
                        height: 45,
                        width: 80,
                        child: Center(
                          child: Text(
                            '5L',
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        height: 45,
                        width: 80,
                        child: const Center(
                          child: Text(
                            '1L',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Quantity',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 35,
                        width: 35,
                        child: const Center(
                          child: Text(
                            '-',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        '1',
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 35,
                        width: 35,
                        child: const Center(
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                          'It is oil most often used in South Asian and Southeast Asian cuisine. Groundnut oil is appreciated for its high smoke point relative to many other cooking oils. In addition, it has a pleasing taste that can add additional character to a dish apart from the refined groundnut oil which doesn’t hold much major nutty flavor of the groundnut.')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
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
                'Add to Cart',
                style: TextStyle(color: whiteColor),
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShoppinglistScreen(),
                ));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: tealColor, minimumSize: const Size(50, 60)),
        ),
      ),
    );
  }
}

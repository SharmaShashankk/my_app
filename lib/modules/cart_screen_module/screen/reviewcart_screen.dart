import 'package:flutter/material.dart';
import 'package:my_app/modules/cart_screen_module/screen/checkout_screen.dart';
import 'package:my_app/utils/colors.dart';

class ReviewcartScreen extends StatefulWidget {
  const ReviewcartScreen({super.key});

  @override
  State<ReviewcartScreen> createState() => _ReviewcartScreenState();
}

class _ReviewcartScreenState extends State<ReviewcartScreen> {
  List arrItems = [
    {
      'image': 'assets/images/Dhara.png',
      'title': 'Dhara Groundnut Refined Cooking Oil 5L',
      'subtitle': 'x1',
      'trailing': 'Rs.540.00'
    },
    {
      'image': 'assets/images/Image2.png',
      'title': 'Mountain Dew 1L Soft Drink Bottle',
      'subtitle': 'x1',
      'trailing': 'Rs.55.00'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  GestureDetector(
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
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Review',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff192c5c),
                    ),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                          side: BorderSide(color: tealColor)),
                    ),
                    onPressed: () {
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: tealColor),
                            borderRadius: BorderRadius.circular(5)),
                        height: 30,
                        width: 80,
                      );
                    },
                    child: Center(
                        child: Text(
                      'Edit',
                      style: TextStyle(color: tealColor),
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Items',
                    style: TextStyle(color: greyColor),
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemCount: arrItems.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      leading: Image.asset(
                        arrItems[index]['image'],
                      ),
                      title: Text(
                        arrItems[index]['title'],
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        arrItems[index]['subtitle'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            arrItems[index]['trailing'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const Divider()
                  ],
                );
              },
            ),
            const SizedBox(
              height: 210,
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub Total',
                        style: TextStyle(color: greyColor),
                      ),
                      const Text(
                        'Rs.595',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Charges',
                        style: TextStyle(color: greyColor),
                      ),
                      const Text(
                        'Rs.10',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(color: greyColor),
                      ),
                      const Text(
                        'Rs.605',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Payable Amount',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Rs.605',
                        style: TextStyle(color: tealColor, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              child: const Text(
                'Checkout',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckoutScreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: tealColor, minimumSize: const Size(370, 60)),
            ),
          ],
        ),
      ),
    );
  }
}

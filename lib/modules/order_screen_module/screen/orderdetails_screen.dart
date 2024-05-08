import 'package:flutter/material.dart';
import 'package:my_app/components/my_timeline_tile.dart';

import 'package:my_app/utils/colors.dart';

class OrderdetailsScreen extends StatefulWidget {
  const OrderdetailsScreen({super.key});

  @override
  State<OrderdetailsScreen> createState() => _OrderdetailsScreenState();
}

class _OrderdetailsScreenState extends State<OrderdetailsScreen> {
  List arrItems = [
    {
      'image': 'assets/images/Dhara.png',
      'title': 'Dhara Groundnut Refined Cooking Oil 5L',
      'subtitle1': 'x1',
      'subtitle2': 'Rs.540.00'
    },
    {
      'image': 'assets/images/Image2.png',
      'title': 'Mountain Dew 1L Soft Drink Bottle',
      'subtitle1': 'x1',
      'subtitle2': 'Rs.55.00'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
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
                    'Order Details',
                    style: TextStyle(color: Color(0xff192c5c), fontSize: 20),
                  ),
                  const SizedBox(width: 80),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: tealColor)),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_downward_outlined,
                          color: tealColor,
                        ),
                        Text(
                          'Receipt',
                          style: TextStyle(color: tealColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Order Detail',
                style: TextStyle(color: greyColor),
              ),
              const SizedBox(height: 20),
              const Text('Order No. MS36546876584'),
              Text(
                'Order Date/Time : 21 August 2023, 12:04:02 pm',
                style: TextStyle(color: greyColor, fontSize: 12),
              ),
              const Divider(),
              Text(
                'Shipping Detail',
                style: TextStyle(color: greyColor),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Meenu Patel'),
              Text(
                '+91 9928 1234 00',
                style: TextStyle(color: greyColor),
              ),
              const Text(
                'Delivery Address:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'C-15, Patel House, Near Hudda Center, Vatika City,\nNoida-121314',
                    style: TextStyle(fontSize: 11),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.grey[100]),
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      'assets/images/Group 15.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              Text(
                'Items',
                style: TextStyle(color: greyColor),
              ),
              ListView.builder(
                itemCount: arrItems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        leading: Image.asset(arrItems[index]['image']),
                        title: Text(
                          arrItems[index]['title'],
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              arrItems[index]['subtitle1'],
                              style: TextStyle(color: greyColor),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              arrItems[index]['subtitle2'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      const Divider()
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Payment Details',
                style: TextStyle(color: greyColor, fontSize: 12),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Text(
                    'Payment Type: UPI ',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '(992812340001@paytm)',
                    style: TextStyle(color: greyColor, fontSize: 12),
                  )
                ],
              ),
              const Text(
                'Transaction No. T787876436456432 ',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Date/Time : 21 August 2023, 12:04:00 pm',
                style: TextStyle(color: greyColor, fontSize: 12),
              ),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: const Text(
                      'Raise Issue',
                      style: TextStyle(color: Color(0xff003853), fontSize: 20),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: const BorderSide(color: Colors.black)),
                        minimumSize: const Size(50, 60)),
                  ),
                  ElevatedButton(
                    child: const Text(
                      'Order Status',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 10, left: 30, top: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Order Status',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.close),
                                        iconSize: 40),
                                  ],
                                ),
                                Container(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      const MyTimelineTile(
                                          orderType: 'Order Placed',
                                          dateTime: 'Aug 21 2023  12:04:02 PM',
                                          isFirst: true,
                                          isLast: false,
                                          isPast: true),
                                      const MyTimelineTile(
                                          orderType: 'Order Accepted',
                                          dateTime: 'Aug 21 2023  12:06:04 PM',
                                          isFirst: false,
                                          isLast: false,
                                          isPast: true),
                                      const MyTimelineTile(
                                          orderType: 'Order Shipped',
                                          dateTime: 'Aug 21 2023  12:20:01 PM',
                                          isFirst: false,
                                          isLast: false,
                                          isPast: true),
                                      const MyTimelineTile(
                                          orderType: 'Delivered',
                                          dateTime: '-',
                                          isFirst: false,
                                          isLast: true,
                                          isPast: false)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tealColor, minimumSize: const Size(50, 60)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/modules/order_screen_module/screen/orderplaced_Screen.dart';
import 'package:my_app/utils/colors.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int selectIndex = 0;
  List arrPay = [
    {
      'image': 'assets/images/apple.png',
      'title': 'Apple Pay',
      'trailing': 'assets/images/Group 103.png'
    },
    {
      'image': 'assets/images/bhim.png',
      'title': 'UPI',
      'trailing': 'assets/images/Group 104.png'
    },
    {
      'image': 'assets/images/credit-card .png',
      'title': 'Card Payment',
      'trailing': 'assets/images/Group 104.png'
    },
    {
      'image': 'assets/images/bank.png',
      'title': 'Net Banking',
      'trailing': 'assets/images/Group 104.png'
    },
    {
      'image': 'assets/images/money.png',
      'title': 'Cash on Delivery',
      'trailing': 'assets/images/Group 104.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: Column(
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
                    'Checkout',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff192c5c),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Delivery Address',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff677788)),
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.grey[300]),
                        height: 45,
                        width: 45,
                        child: Stack(children: [
                          Positioned.fill(
                              child: Image.asset(
                            'assets/images/address-2.png',
                          ))
                        ]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '248, 7th Street, New South Wales, New\nYork, Zip Code 548799, UK',
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      const Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  const Divider(
                    endIndent: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Payment Methods',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListView.builder(
                    itemCount: arrPay.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            onTap: () {
                              selectIndex = index;
                              setState(() {});
                            },
                            leading: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Colors.grey[300],
                                ),
                                child: Image.asset(arrPay[index]['image'])),
                            title: Text(arrPay[index]['title']),
                            trailing: Image.asset(selectIndex == index
                                ? 'assets/images/Group 103.png'
                                : 'assets/images/Group 104.png'),
                          ),
                          const Divider(
                            endIndent: 10,
                            indent: 10,
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(fontSize: 20, color: greyColor),
                        ),
                        Text(
                          'Rs. 605',
                          style: TextStyle(color: tealColor, fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                child: const Text(
                  'Pay Now',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderPlacedScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: tealColor,
                    minimumSize: const Size(350, 60)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

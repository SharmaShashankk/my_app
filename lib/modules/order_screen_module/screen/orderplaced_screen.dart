import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:my_app/modules/base_module/bottom_navigation.dart';
import 'package:my_app/modules/order_screen_module/screen/orderdetails_screen.dart';
import 'package:my_app/utils/colors.dart';

class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({super.key});

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Center(
                  child: DottedBorder(
                    padding: const EdgeInsets.only(bottom: 60, right: 30),
                    borderType: BorderType.Circle,
                    color: Colors.grey,
                    dashPattern: [10, 10],
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset('assets/images/Logo Icon.png'),
                        ),
                        Positioned(
                          left: 60,
                          top: 80,
                          child: Container(
                            height: 120,
                            width: 120,
                            child:
                                Image.asset('assets/images/check-mark 1.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Thank You',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003853),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Your order has been placed\nSuccessfully ',
                  style: TextStyle(color: greyColor, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  child: const Text(
                    'View Detail',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderdetailsScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tealColor, minimumSize: const Size(350, 60)),
                ),
                const SizedBox(
                  height: 70,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) {
                        return const BottomNavigationModule();
                      },
                    ), (route) => false);
                  },
                  child: Text(
                    'Continue Shopping',
                    style: TextStyle(color: tealColor, fontSize: 18),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

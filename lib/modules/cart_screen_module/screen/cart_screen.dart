import 'package:flutter/material.dart';
import 'package:my_app/modules/cart_screen_module/screen/reviewcart_Screen.dart';
import 'package:my_app/utils/colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List tileItem = [
    {
      'image': 'assets/images/Dhara.png',
      'title': 'Grocery',
      'sub1': 'Dhara Groundnut Refined Cooking\nOil 5L',
      'sub2': 'Rs.540.00',
      'trailing': '1'
    },
    {
      'image': 'assets/images/Image2.png',
      'title': 'Grocery',
      'sub1': 'Mountain Dew 1L Soft Drink Bottle',
      'sub2': 'Rs.55.00',
      'trailing': '2'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60,
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
          'My Cart',
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
              itemCount: tileItem.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                      leading: Image.asset(
                        tileItem[index]['image'],
                      ),
                      title: Text(
                        tileItem[index]['title'],
                        style: TextStyle(color: tealColor, fontSize: 10),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tileItem[index]['sub1'],
                            style: const TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            tileItem[index]['sub2'],
                          ),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Text('-'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(tileItem[index]['trailing']),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Text('+'),
                          ),
                        ],
                      ),
                    ),
                    const Divider()
                  ],
                );
              },
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
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
                ),
                const SizedBox(
                  height: 20,
                ),
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
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  child: const Text(
                    'Proceed to Checkout',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReviewcartScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tealColor, minimumSize: const Size(350, 60)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/modules/cart_screen_module/screen/product_screen.dart';
import 'package:my_app/utils/colors.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  List tileItem = [
    {
      'image': 'assets/images/Image1.png',
      'title': 'Grocery',
      'subtitle': 'Dhara Groundnut Refined cooking\nOil 5L',
      'subtitle2': 'Rs.540.00',
      'trail': 'assets/images/heart(2) 1.png',
      'trail2': '4.8 (230)',
      'trail3': 'assets/images/star 1.png',
    },
    {
      'image': 'assets/images/Image2.png',
      'title': 'Grocery',
      'subtitle': 'Mountain Dew 1L Soft Drink Bottle',
      'subtitle2': 'Rs.55.00',
      'trail': 'assets/images/heart(2) 1.png',
      'trail2': '4.8 (230)',
      'trail3': 'assets/images/star 1.png'
    }
  ];
  List arrGrid2 = [
    {
      'image': 'assets/images/Image1.png',
      'title': 'Grocery',
      'subtitle': 'Dhara Groundnut Refined\ncooking Oil 5L',
      'price': 'Rs.120.00',
      'star': 'assets/images/star 1.png',
      'rating': '4.8 (230)'
    },
    {
      'image': 'assets/images/Image2.png',
      'title': 'Soft Drinks',
      'subtitle': 'Mountain Dew 1L Soft Drink\nBottle',
      'price': 'Rs.55.00',
      'star': 'assets/images/star 1.png',
      'rating': '4.8 (230)'
    },
    {
      'image': 'assets/images/Image2.png',
      'title': 'Soft Drinks',
      'subtitle': 'Mountain Dew 1L Soft Drink\nBottle',
      'price': 'Rs.55.00',
      'star': 'assets/images/star 1.png',
      'rating': '4.8 (230)'
    },
    {
      'image': 'assets/images/Image1.png',
      'title': 'Grocery',
      'subtitle': 'Dhara Groundnut Refined\ncooking Oil 5L',
      'price': 'Rs.120.00',
      'star': 'assets/images/star 1.png',
      'rating': '4.8 (230)'
    },
    {
      'image': 'assets/images/Image1.png',
      'title': 'Grocery',
      'subtitle': 'Dhara Groundnut Refined\ncooking Oil 5L',
      'price': 'Rs.120.00',
      'star': 'assets/images/star 1.png',
      'rating': '4.8 (230)'
    },
    {
      'image': 'assets/images/Image2.png',
      'title': 'Soft Drinks',
      'subtitle': 'Mountain Dew 1L Soft Drink\nBottle',
      'price': 'Rs.55.00',
      'star': 'assets/images/star 1.png',
      'rating': '4.8 (230)'
    },
    {
      'image': 'assets/images/Image2.png',
      'title': 'Soft Drinks',
      'subtitle': 'Mountain Dew 1L Soft Drink\nBottle',
      'price': 'Rs.55.00',
      'star': 'assets/images/star 1.png',
      'rating': '4.8 (230)'
    },
    {
      'image': 'assets/images/Image1.png',
      'title': 'Grocery',
      'subtitle': 'Dhara Groundnut Refined\ncooking Oil 5L',
      'price': 'Rs.120.00',
      'star': 'assets/images/star 1.png',
      'rating': '4.8 (230)'
    }
  ];
  bool isStyle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
              color: const Color(0xffE3E3E4),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
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
                      const SizedBox(
                        width: 20,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                            text: 'Search in ',
                            style:
                                TextStyle(fontSize: 21, color: Colors.black)),
                        TextSpan(
                            text: 'Grocery',
                            style: TextStyle(fontSize: 21, color: tealColor))
                      ]))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(31),
                                ),
                                prefixIcon: const Icon(Icons.search),
                                hintText: 'Search',
                                hintStyle: const TextStyle(fontSize: 15)),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color(0xffE3E3E4),
                                style: BorderStyle.solid),
                          ),
                          child: Image.asset('assets/images/slider.png'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '234',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        TextSpan(
                          text: ' Results',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/Group 122.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          isStyle = !isStyle;
                          setState(() {});
                        },
                        child: Image.asset(isStyle
                            ? 'assets/images/Group 123-2.png'
                            : 'assets/images/apps 1.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            isStyle
                ? Expanded(
                    child: ListView.builder(
                      itemCount: tileItem.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductScreen(),
                                ));
                          },
                          child: Column(
                            children: [
                              ListTile(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                leading: Image.asset(
                                  tileItem[index]['image'],
                                ),
                                title: Text(
                                  tileItem[index]['title'],
                                  style:
                                      TextStyle(color: tealColor, fontSize: 13),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      tileItem[index]['subtitle'],
                                      style: const TextStyle(fontSize: 10),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: tileItem[index]['subtitle2'],
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                '   ${tileItem[index]['subtitle2']}',
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                trailing: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(tileItem[index]['trail']),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset('assets/images/star 1.png'),
                                        Text(tileItem[index]['trail2']),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 0,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductScreen(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1),
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24),
                                    child:
                                        Image.asset(arrGrid2[index]['image']),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    arrGrid2[index]['title'],
                                    style: TextStyle(
                                        fontSize: 10, color: tealColor),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    arrGrid2[index]['subtitle'],
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    arrGrid2[index]['price'],
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(arrGrid2[index]['star']),
                                      Text(
                                        arrGrid2[index]['rating'],
                                        style: const TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: arrGrid2.length,
                      // physics: NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

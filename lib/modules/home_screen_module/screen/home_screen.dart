import 'package:flutter/material.dart';
import 'package:my_app/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  List arrItems = [
    'Soft Drinks',
    'Grocery',
    'Cosmetics',
    'Kitchen',
    'Cleaning Items',
    'Bath Items',
    'Packed Foods',
    'Frozen Foods'
  ];

  List arrGrid = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  leading: Image.asset('assets/images/address.png'),
                  title: const Text('Deliver at'),
                  subtitle: const Text('F-10,New Housing Colony,Noida'),
                  trailing: Image.asset('assets/images/Group 118.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(31),
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                      hintText: 'Search'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/images/Group 85.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/Group 85.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/Group 85.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/Group 85.png'),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.lightBlue.shade900)),
                            child: Center(
                              child: Text(
                                arrItems[index],
                                style: TextStyle(color: Colors.lightBlue[900]),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      );
                    },
                    itemCount: arrItems.length,
                    // physics: NeverScrollableScrollPhysics(),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Most Selling Items',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: tealColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey.shade200,
                              style: BorderStyle.solid)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Image.asset(arrGrid[index]['image']),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              arrGrid[index]['title'],
                              style: TextStyle(fontSize: 10, color: tealColor),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              arrGrid[index]['subtitle'],
                              style: const TextStyle(fontSize: 10),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              arrGrid[index]['price'],
                              style: const TextStyle(fontSize: 10),
                            ),
                            Row(
                              children: [
                                Image.asset(arrGrid[index]['star']),
                                Text(
                                  arrGrid[index]['rating'],
                                  style: const TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: arrGrid.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

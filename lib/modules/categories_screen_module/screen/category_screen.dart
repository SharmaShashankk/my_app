import 'package:flutter/material.dart';
import 'package:my_app/modules/categories_screen_module/sub_module/grocery_Screen.dart';
import 'package:my_app/utils/colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List arrNames = [
    {
      'image': 'assets/images/delivery-box 1.png',
      'title': 'Soft Drinks',
      'trailing': 'assets/images/Arrow 4.png',
    },
    {
      'image': 'assets/images/delivery-box 1.png',
      'title': 'Grocery',
      'trailing': 'assets/images/Arrow 4.png',
    },
    {
      'image': 'assets/images/delivery-box 1.png',
      'title': 'Cosmetics',
      'trailing': 'assets/images/Arrow 4.png',
    },
    {
      'image': 'assets/images/delivery-box 1.png',
      'title': 'Kitchen',
      'trailing': 'assets/images/Arrow 4.png',
    },
    {
      'image': 'assets/images/delivery-box 1.png',
      'title': 'Cleaning Items',
      'trailing': 'assets/images/Arrow 4.png',
    },
    {
      'image': 'assets/images/delivery-box 1.png',
      'title': 'Bath Items',
      'trailing': 'assets/images/Arrow 4.png',
    },
    {
      'image': 'assets/images/delivery-box 1.png',
      'title': 'Packed Foods',
      'trailing': 'assets/images/Arrow 4.png',
    },
    {
      'image': 'assets/images/delivery-box 1.png',
      'title': 'Frozen Foods',
      'trailing': 'assets/images/Arrow 4.png',
    },
  ];

  List gridItems = [
    {'image': 'assets/images/soda 1.png', 'text': 'Soft Drinks'},
    {'image': 'assets/images/grocery 1.png', 'text': 'Grocery'},
    {'image': 'assets/images/skincare 1.png', 'text': 'Cosmetics'},
    {'image': 'assets/images/tea 1.png', 'text': 'Kitchen'},
    {'image': 'assets/images/cleaning 1.png', 'text': 'Cleaning Items'},
    {'image': 'assets/images/soap 1.png', 'text': 'Bath Items'},
    {'image': 'assets/images/take-away 1.png', 'text': 'Packed Foods'},
    {'image': 'assets/images/frozen-goods 1.png', 'text': 'Frozen Foods'}
  ];

  bool isListtile = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(31),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(31),
                    ),
                    prefixIcon: const Icon(Icons.search, size: 30),
                    hintText: 'Search',
                    hintStyle:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        isListtile = !isListtile;
                        setState(() {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: greyColor),
                        ),
                        child: Image.asset(isListtile
                            ? 'assets/images/Group 123-2.png'
                            : 'assets/images/apps 1.png'),
                      ),
                    )
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    //
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: isListtile
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: arrNames.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const GroceryScreen(),
                                    ));
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: ListTile(
                                        leading: Image.asset(
                                          arrNames[index]['image'],
                                        ),
                                        title: Text(
                                          arrNames[index]['title'],
                                        ),
                                        trailing: const Icon(
                                            Icons.arrow_forward_ios_rounded)),
                                  ),
                                  const Divider(
                                    indent: 25,
                                    endIndent: 25,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const GroceryScreen(),
                                  ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid),
                              ),
                              child: GridTile(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        gridItems[index]['image'],
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(gridItems[index]['text'])
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: gridItems.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.8,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

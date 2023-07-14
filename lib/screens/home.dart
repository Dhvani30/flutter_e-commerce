import 'package:assignment9/screens/login.dart';
import 'package:assignment9/widgets/mobile_catalog.dart';
import 'package:flutter/material.dart';
import 'package:assignment9/widgets/watch_catalog.dart';
import 'package:assignment9/widgets/laptop_catalog.dart';

import '../widgets/groceries_catalog.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> categories = [
    "Groceries",
    "Mobiles",
    "Laptops",
    "Watches",
  ];

  List<String> items = [];
  List<Item> displayedItems = CatalogModel.products;

  void onCategoryPressed(String category) {
    setState(() {
      if (category == 'Groceries') {
        displayedItems = GrModel.products.map((grItem) {
          return Item(
            id: grItem.id,
            name: grItem.name,
            desc: '',
            price: grItem.price,
            image: grItem.image,
          );
        }).toList();
      } else if (category == 'Mobiles') {
        displayedItems = MbModel.products.map((mbItem) {
          return Item(
            id: mbItem.id,
            name: mbItem.name,
            desc: '',
            price: mbItem.price,
            image: mbItem.image,
          );
        }).toList();
      } else if (category == 'Laptops') {
        displayedItems = LaptopModel.products.map((lpItem) {
          return Item(
            id: lpItem.id,
            name: lpItem.name,
            desc: '',
            price: lpItem.price,
            image: lpItem.image,
          );
        }).toList();
      } else if (category == 'Watches') {
        displayedItems = CatalogModel.products;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[100],
          shadowColor: Colors.black,
          title: const Text(
            'Home Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                ),
                child: Text(
                  'User Card',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.black),
                title: const Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: const Text('Profile'),
                onTap: () {},
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: const Icon(Icons.heart_broken, color: Colors.black),
                title: const Text('Favourites'),
                onTap: () {},
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: const Icon(Icons.local_grocery_store_outlined,
                    color: Colors.black),
                title: const Text(
                  'Cart',
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.black),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
              ),
              Container(
                color: Colors.amber[100],
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categories.map((category) {
                      return InkWell(
                        onTap: () => onCategoryPressed(category),
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(60.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orangeAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(1, 5),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Text(
                            category,
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.1,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  ),
                  itemCount: displayedItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 2),
                            blurRadius: 4.0,
                          ),
                        ],
                      ),
                      child: ItemWidget(item: displayedItems[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double maxWidth = constraints.maxWidth;
        final double itemWidth =
            maxWidth > 600 ? maxWidth * 0.3 : maxWidth * 0.5;

        return Card(
          shape: const StadiumBorder(),
          color: Colors.yellow[100],
          shadowColor: Colors.grey[800],
          child: Center(
            child: GridTile(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      item.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    tileColor: Colors.white,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          item.image,
                          width: itemWidth,
                          height: itemWidth,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$${item.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

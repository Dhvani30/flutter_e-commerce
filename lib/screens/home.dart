import 'package:assignment9/screens/cart.dart';
import 'package:assignment9/screens/contact.dart';
import 'package:assignment9/screens/wishlist.dart';
import 'package:assignment9/widgets/mobile_catalog.dart';
import 'package:flutter/material.dart';
import 'package:assignment9/widgets/watch_catalog.dart';
import 'package:assignment9/widgets/laptop_catalog.dart';
import 'package:assignment9/screens/login.dart';
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

  final Map<String, String> categoryImages = {
    "Groceries": "asset/images/groceries.jpg",
    "Mobiles": "asset/images/mobiles.jpg",
    "Laptops": "asset/images/laptop.jpg",
    "Watches": "asset/images/watch.jpg",
  };

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
          backgroundColor: const Color.fromRGBO(24, 21, 30, 1),
          shadowColor: Colors.black,
          title: const Text(
            'Home Page',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        drawer: SizedBox(
          width: 200,
          child: Drawer(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(26, 24, 31, 1),
                  Color.fromRGBO(24, 21, 30, 1),
                ],
              )),
              // color:
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DrawerItem(
                    name: "Profile",
                    icon: Icons.account_circle_rounded,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                  ),
                  DrawerItem(
                    name: "Wishlist",
                    icon: Icons.heart_broken,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WishlistPage()),
                      );
                    },
                  ),
                  DrawerItem(
                    name: "Cart",
                    icon: Icons.shopping_cart,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartPage()),
                      );
                    },
                  ),
                  DrawerItem(
                    name: "Contact us",
                    icon: Icons.mail,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactPage()),
                      );
                    },
                  ),
                  DrawerItem(
                    name: "Logout",
                    icon: Icons.logout,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Padding(
              // padding: EdgeInsets.all(20.0),
              // ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(24, 21, 30, 1),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categories.map((category) {
                      return InkWell(
                        onTap: () => onCategoryPressed(category),
                        child: Container(
                          margin: const EdgeInsets.all(40.0),
                          // padding: const EdgeInsets.all(.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(24, 21, 30, 1),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromRGBO(214, 116, 131, 1)
                                    .withOpacity(0.2),
                                offset: const Offset(0, 5),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 33),
                              SizedBox(
                                width: 120,
                                height: 120,
                                child: ClipOval(
                                  child: Image.asset(
                                    categoryImages[category]!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                category,
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
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
                    mainAxisExtent: 400,
                    crossAxisCount: 2,
                    // childAspectRatio: 2.1,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  ),
                  itemCount: displayedItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(24, 21, 30, 1),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromRGBO(56, 32, 35, 1)
                                .withOpacity(1),
                            offset: const Offset(5, 5),
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
          color: const Color.fromRGBO(46, 42, 55, 1),
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
                    tileColor: const Color.fromRGBO(168, 127, 133, 1),
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

class DrawerItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function() onTap;

  const DrawerItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white70,
      ),
      title: Text(
        name,
        style: const TextStyle(color: Colors.white70),
      ),
      onTap: onTap,
    );
  }
}

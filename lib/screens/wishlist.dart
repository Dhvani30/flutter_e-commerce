import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wishlist Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          "Wishlist Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WishlistPage(),
  ));
}

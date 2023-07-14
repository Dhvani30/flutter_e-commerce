import 'package:flutter/material.dart';
import 'package:assignment9/widgets/watch_catalog.dart';

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
          color: Colors.amber[500],
          shadowColor: Colors.grey[800],
          child: Center(
            child: GridTile(
                child: Column(
              children: [
                ListTile(
                  title: Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                  ),
                  tileColor: Colors.amber[50],
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
                  // textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                // ),
              ],
            )),
          ),
        );
      },
    );
  }
}

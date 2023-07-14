class GrModel {
  static final products = [
    Gr_Item(
        id: "01",
        name: "Carrots",
        price: "10",
        image:
            "https://www.jessicagavin.com/wp-content/uploads/2019/02/carrots-benefits-pin.jpg"),
    Gr_Item(
        id: "02",
        name: "Sugar",
        price: "55",
        image: "https://m.media-amazon.com/images/I/612Ok52ZTZL._SX679_.jpg"),
    Gr_Item(
        id: "03",
        name: "Flour",
        price: "31",
        image: "https://m.media-amazon.com/images/I/61R6EbaAOEL._SX679_.jpg"),
    Gr_Item(
        id: "04",
        name: "Spices",
        price: "12",
        image: "https://m.media-amazon.com/images/I/61lTcI+wJmL._SX679_.jpg"),
    Gr_Item(
        id: "05",
        name: "Bread",
        price: "13",
        image: "https://m.media-amazon.com/images/I/51xynD3nHAL._SX679_.jpg"),
    Gr_Item(
        id: "06",
        name: "Dry Pasta",
        price: "21",
        image: "https://m.media-amazon.com/images/I/615o8xujGEL._SX679_.jpg"),
  ];
}

class Gr_Item {
  final String id;
  final String name;
  final String price;
  final String image;

  Gr_Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.image});
}

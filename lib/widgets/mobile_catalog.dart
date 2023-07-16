class MbModel {
  static final products = [
    Mb_Item(
        id: "01",
        name: "OnePlus Nord CE 2 Lite 5G",
        price: "389",
        image: "https://m.media-amazon.com/images/I/71V--WZVUIL._SX679_.jpg"),
    Mb_Item(
        id: "02",
        name: "OnePlus 11R 5G",
        price: "499",
        image:
            "https://m.media-amazon.com/images/I/41etLpNZV6L._SX300_SY300_QL70_FMwebp_.jpg"),
    Mb_Item(
        id: "03",
        name: "Samsung M13",
        price: "375",
        image:
            "https://m.media-amazon.com/images/I/41Vj+8XWIQL._SY300_SX300_.jpg"),
    Mb_Item(
        id: "04",
        name: "realme narzo 50i Prime ",
        price: "560",
        image: "https://m.media-amazon.com/images/I/81WPIz1l5wL._SX679_.jpg"),
    Mb_Item(
        id: "05",
        name: "realme narzo N55",
        price: "349",
        image: "https://m.media-amazon.com/images/I/81ogvU1j6qL._SX679_.jpg"),
    Mb_Item(
        id: "06",
        name: "Redmi 12C",
        price: "659",
        image: "https://m.media-amazon.com/images/I/81itQPVn-GL._SX679_.jpg"),
  ];
}

class Mb_Item {
  final String id;
  final String name;
  final String price;
  final String image;

  Mb_Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.image});
}

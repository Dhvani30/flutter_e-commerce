class CatalogModel {
  static final products = [
    Item(
        id: "01",
        name: "Rolex Cosmograph",
        desc: "64GB",
        price: "13,150",
        image:
            "https://content.rolex.com/dam/2022/upright-bba-with-shadow/m116503-0004.png"),
    Item(
        id: "02",
        name: "Patek Philippe 7140R",
        desc: "128GB",
        price: "89,000",
        image:
            "https://static.patek.com/images/articles/face_white/350/7140R_001_1.jpg"),
    Item(
        id: "03",
        name: "Rolex Submariner",
        desc: "128GB",
        price: "8,100 ",
        image:
            "https://lombard-privilegia.ru/wp-content/uploads/2018/06/-%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0-2018-06-10-%D0%B2-20.51.05-e1528653239148.png"),
    Item(
        id: "04",
        name: "Breitling Bentley Mulliner Tourbillon",
        desc: "128GB",
        price: "12,000",
        image: "https://m.media-amazon.com/images/I/51kfuOo+K0L.jpg"),
    Item(
        id: "05",
        name: "Seiko Astron",
        desc: "256GB",
        price: "3,400",
        image:
            "https://zimsonwatches.com/cdn/shop/products/SSH024J1.jpg?v=1632310512"),
    Item(
        id: "06",
        name: "Jaeger-LeCoultre Reverso",
        desc: "256GB",
        price: "18,800",
        image:
            "https://m.media-amazon.com/images/I/51dugr3vbAL._AC_UY1000_.jpg"),
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final String price;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.image});
}

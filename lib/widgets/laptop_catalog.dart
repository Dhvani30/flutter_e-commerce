class LaptopModel {
  static final products = [
    Lp_Item(
        id: "01",
        name: "Lenovo IdeaPad 1 AMD Ryzen 5",
        price: "13,150",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHiA5PejwFid6m1nyJd4Bz04RWZXeqNLQsjRRj9SW1_aunAQaIBc2XFXIEcdiCw89fZUc&usqp=CAU"),
    Lp_Item(
        id: "02",
        name: "HP Victus 15-fb0082AX AMD Ryzen 5",
        price: "89,000",
        image:
            "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1668663021/Croma%20Assets/Computers%20Peripherals/Laptop/Images/263237_0_ae9mwq.png?tr=w-640"),
    Lp_Item(
        id: "04",
        name: "Asus E410KA-BV103WS Intel Pentium",
        price: "12,000",
        image:
            "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1688581708/Croma%20Assets/Computers%20Peripherals/Laptop/Images/272530_0_majhi0.png?tr=w-400"),
    Lp_Item(
        id: "05",
        name: "HP 14s AMD Ryzen 3",
        price: "3,400",
        image:
            "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1664420256/Croma%20Assets/Computers%20Peripherals/Laptop/Images/248021_0_kudkqm.png?tr=w-400"),
    Lp_Item(
        id: "06",
        name: "Asus Tuf A15 AMD Ryzen 7",
        price: "18,800",
        image:
            "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1663349273/Croma%20Assets/Computers%20Peripherals/Laptop/Images/250228_0_gyzhei.png?tr=w-400"),
    Lp_Item(
        id: "03",
        name: "HP Victus AMD Ryzzen 5",
        price: "31,500",
        image:
            "https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1688581708/Croma%20Assets/Computers%20Peripherals/Laptop/Images/272530_0_majhi0.png?tr=w-400"),
  ];
}

class Lp_Item {
  final String id;
  final String name;
  final String price;
  final String image;

  Lp_Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.image});
}

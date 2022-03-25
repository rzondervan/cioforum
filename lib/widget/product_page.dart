import 'package:flutter/material.dart';

class Products {
  late String image;
  late String bookname;
  late String bookdes;
  late String price;

  Products(
      {required this.image, required this.bookname, required this.bookdes, required this.price});
}

  List<Products> productlist=[
    Products(image: "assets/image_2_(1).png",bookname: "Handboek Privacy en IT",price: "€21.40",bookdes:"Robert Zondervan MSc (Autor)"),
    Products(image: "assets/image_3_(1).png",bookname: "Bestuur uw IT",bookdes: " Robert Zondervan (Author)",price: "€21.40"),
    Products(image: "assets/image_4.png",bookname: "RFP data center hosting",bookdes: "Robert Zondervan  (Autor)",price: "€28.60"),
    Products(image: "assets/image_2_(1).png",bookname: "Handboek Privacy en IT",price: "€21.40",bookdes:"Robert Zondervan MSc (Autor)"),
    Products(image: "assets/image_3_(1).png",bookname: "Bestuur uw IT",bookdes: " Robert Zondervan (Author)",price: "€21.40"),
    Products(image: "assets/image_4.png",bookname: "RFP data center hosting",bookdes: "Robert Zondervan  (Autor)",price: "€28.60")
  ];

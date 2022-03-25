import 'package:flutter/material.dart';

class News {
  late String image;
  late String bookname;
  late String bookdes;
  late String price;

  News(
      {required this.image, required this.bookname, required this.bookdes, required this.price});
}

List<News> productlist=[
  News(image: "assets/image_2_(1).png",bookname: "Handboek Privacy en IT",price: "€21.40",bookdes:"Robert Zondervan MSc (Autor)"),
  News(image: "assets/image_3_(1).png",bookname: "Bestuur uw IT",bookdes: " Robert Zondervan (Author)",price: "€21.40"),
  News(image: "assets/image_4.png",bookname: "RFP data center hosting",bookdes: "Robert Zondervan  (Autor)",price: "€28.60"),
  News(image: "assets/image_2_(1).png",bookname: "Handboek Privacy en IT",price: "€21.40",bookdes:"Robert Zondervan MSc (Autor)"),
  News(image: "assets/image_3_(1).png",bookname: "Bestuur uw IT",bookdes: " Robert Zondervan (Author)",price: "€21.40"),
  News(image: "assets/image_4.png",bookname: "RFP data center hosting",bookdes: "Robert Zondervan  (Autor)",price: "€28.60")
];

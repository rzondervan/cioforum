import 'package:flutter/material.dart';

class ProductCarousel {
  late String image;
  late String name;
  late String university;
  late String desc;

  ProductCarousel(
      {required this.image, required this.name, required this.university, required this.desc});
}

List<ProductCarousel> carousellist=[
  ProductCarousel(image: "assets/Ellipse 5.png",name: "Prof. dr. Wim Van Grembergen",university: "University of Antwerp (UA):",desc:" Not only suitable for directors, owners and directors without IT expertise, but also for IT managers who want to improve their services to their own organization: Ensuring that IT offers added value, that the organization benefits from efficiency of Cloud and managed services. Prevent IT from doing what it wants, from taking risks itself. A valuable document. "),
  ProductCarousel(image: "assets/Ellipse 6.png",name: "Dr.lec. Barry Derksen",university: "Director at ISACA",desc: "This book captures the essence of the mix between management and architecture processes. Using a pragmatic approach, the AMORT system describes a minimum baseline between COBIT and TOGAF. The points of interest lists are an ideal reference for improving IT processes, creating value for the organization and preventing waste."),
  ProductCarousel(image: "assets/Ellipse 7.png",name: "Prof. dr. em. dr. Aimé Heene",university: "Ghent University",desc: "The breadth of the themes and the depth with which they are treated makes the book an impressive whole. No doubt many managers will find something to their liking in this book. The very practical approach to this will certainly appeal to the intended readership. On the practical side, you can certainly call the work . Chapter 8 is of course very strong."),
];

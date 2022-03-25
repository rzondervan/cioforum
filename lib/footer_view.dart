import 'package:ciofroum_web/responsive.dart';
import 'package:flutter/material.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 1440,
      //   width:double.infinity,
      height: Responsive.isDesktop(context) ? 444 : 1350,
      color: const Color.fromRGBO(50, 59, 75, 1),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Responsive.isDesktop(context)
                ? Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                crossAxisAlignment:
                CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                              "assets/image_1.png",
                              width: 33,
                              height: 40),
                          const SizedBox(width: 10),
                          const Text(
                            "CIOFORUM",
                            style: TextStyle(
                                color: Color.fromRGBO(
                                    225, 225, 225, 1),
                                fontWeight:
                                FontWeight.w800,
                                fontSize: 34,
                                fontStyle:
                                FontStyle.normal,
                                fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "CIOforum offers GDPR services and a\n${"Shared IT Director"}  without the overhead of\na salaried person. Make an appointment \nwithout obligation via",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontStyle: FontStyle.normal,
                          fontFamily: "Cairo",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                          height: 1.7,
                        ),
                      ),
                      const Text(
                          "rzondervan@cioforum.nl ",
                          style: TextStyle(
                            color: Color.fromRGBO(
                                225, 225, 225, 1),
                            fontStyle: FontStyle.normal,
                            fontFamily: "Cairo",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0,
                            height: 1.7,
                          )),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(
                                    40),
                                color:
                                const Color.fromRGBO(
                                    0, 0, 0, 0.5),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "assets/Vector.png"),
                                    scale: 1.5)),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(
                                    40),
                                color:
                                const Color.fromRGBO(
                                    0, 0, 0, 0.5),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "assets/Vector.png"),
                                    scale: 1.5)),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(
                                    40),
                                color:
                                const Color.fromRGBO(
                                    0, 0, 0, 0.5),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "assets/Vector_(1).png"),
                                    scale: 1.5)),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.06),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "QUICK LIKES",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                          fontWeight:
                          FontWeight.w600,
                          color: Color.fromRGBO(
                              139, 190, 43, 1),
                        ),
                      ),
                      SizedBox(height: 70),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: Color.fromRGBO(
                                225, 225, 225, 1),
                            fontWeight:
                            FontWeight.w400,
                            fontFamily: "Cairo",
                            fontStyle:
                            FontStyle.normal,
                            fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Products",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Blog",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "About us",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Contact",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.06),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "OTHERS LIKES",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                          fontWeight:
                          FontWeight.w600,
                          color: Color.fromRGBO(
                              139, 190, 43, 1),
                        ),
                      ),
                      SizedBox(height: 70),
                      Text(
                        "Terms and Conditions",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Cookies",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Sitemap",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "FAQ",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.06),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "GET IN TOUCH",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight:
                          FontWeight.w600,
                          color: Color.fromRGBO(
                              139, 190, 43, 1),
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      const SizedBox(height: 80),
                      Row(
                        children: const [
                          Icon(
                            Icons
                                .add_location_outlined,
                            color: Color.fromRGBO(
                                139, 190, 43, 1),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "CIOFORUM",
                            style: TextStyle(
                              color: Color.fromRGBO(
                                  225, 225, 225, 1),
                              fontWeight:
                              FontWeight.w600,
                              fontSize: 19,
                              fontFamily: "Cairo",
                              fontStyle:
                              FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              SizedBox(width: 40),
                              Text(
                                "Buntlaan 11B 3941 MG Doorn\nNederland",
                                style: TextStyle(
                                    color: Color
                                        .fromRGBO(
                                        225,
                                        225,
                                        225,
                                        1),
                                    fontWeight:
                                    FontWeight
                                        .w400,
                                    fontSize: 16,
                                    fontFamily:
                                    "Cairo",
                                    fontStyle:
                                    FontStyle
                                        .normal,
                                    height: 1.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(
                            Icons.email_outlined,
                            color: Color.fromRGBO(
                                139, 190, 43, 1),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "rzondervan@cioforum.nl",
                            style: TextStyle(
                              color: Color.fromRGBO(
                                  225, 225, 225, 1),
                              fontWeight:
                              FontWeight.w400,
                              fontSize: 16,
                              fontFamily: "Cairo",
                              fontStyle:
                              FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Icon(
                            Icons.call,
                            color: Color.fromRGBO(
                                139, 190, 43, 1),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "+31 6 20 707 442",
                            style: TextStyle(
                              color: Color.fromRGBO(
                                  225, 225, 225, 1),
                              fontWeight:
                              FontWeight.w400,
                              fontSize: 16,
                              fontFamily: "Cairo",
                              fontStyle:
                              FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            )
                : Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.center,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                              "assets/image_1.png",
                              width: 33,
                              height: 40),
                          const SizedBox(width: 10),
                          const Text(
                            "CIOFORUM",
                            style: TextStyle(
                                color: Color.fromRGBO(
                                    225, 225, 225, 1),
                                fontWeight:
                                FontWeight.w800,
                                fontSize: 34,
                                fontStyle:
                                FontStyle.normal,
                                fontFamily:
                                "Montserrat"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "CIOforum offers GDPR services and a ${"Shared IT Director"}  without the overhead of a salaried person. Make an appointment without obligation via",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontStyle: FontStyle.normal,
                          fontFamily: "Cairo",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                          height: 2,
                        ),
                      ),
                      const Text(
                          "rzondervan@cioforum.nl ",
                          style: TextStyle(
                            color: Color.fromRGBO(
                                225, 225, 225, 1),
                            fontStyle: FontStyle.normal,
                            fontFamily: "Cairo",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0,
                            height: 1.7,
                          )),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius
                                    .circular(40),
                                color: const Color
                                    .fromRGBO(0, 0,
                                    0, 0.5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/Vector.png"),
                                    scale: 1.5)),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius
                                    .circular(40),
                                color: const Color
                                    .fromRGBO(0, 0,
                                    0, 0.5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/Vector.png"),
                                    scale: 1.5)),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius
                                    .circular(40),
                                color: const Color
                                    .fromRGBO(0, 0,
                                    0, 0.5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/Vector_(1).png"),
                                    scale: 1.5)),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "QUICK LIKES",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(
                              139, 190, 43, 1),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: Color.fromRGBO(
                                225, 225, 225, 1),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal,
                            fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Products",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Blog",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "About us",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Contact",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "OTHERS LIKES",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(
                              139, 190, 43, 1),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Terms and Conditions",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Cookies",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Sitemap",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "FAQ",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "GET IN TOUCH",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(
                              139, 190, 43, 1),
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: const [
                          Icon(
                            Icons.add_location_outlined,
                            color: Color.fromRGBO(
                                139, 190, 43, 1),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "CIOFORUM",
                            style: TextStyle(
                              color: Color.fromRGBO(
                                  225, 225, 225, 1),
                              fontWeight:
                              FontWeight.w600,
                              fontSize: 19,
                              fontFamily: "Cairo",
                              fontStyle:
                              FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              SizedBox(width: 40),
                              Text(
                                "Buntlaan 11B 3941 MG Doorn\nNederland",
                                style: TextStyle(
                                    color:
                                    Color.fromRGBO(
                                        225,
                                        225,
                                        225,
                                        1),
                                    fontWeight:
                                    FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle
                                        .normal,
                                    height: 1.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(
                            Icons.email_outlined,
                            color: Color.fromRGBO(
                                139, 190, 43, 1),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "rzondervan@cioforum.nl",
                            style: TextStyle(
                              color: Color.fromRGBO(
                                  225, 225, 225, 1),
                              fontWeight:
                              FontWeight.w400,
                              fontSize: 16,
                              fontFamily: "Cairo",
                              fontStyle:
                              FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Icon(
                            Icons.call,
                            color: Color.fromRGBO(
                                139, 190, 43, 1),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "+31 6 20 707 442",
                            style: TextStyle(
                              color: Color.fromRGBO(
                                  225, 225, 225, 1),
                              fontWeight:
                              FontWeight.w400,
                              fontSize: 16,
                              fontFamily: "Cairo",
                              fontStyle:
                              FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            const Center(
              child: Text(
                "©2022 CIOFORUM | All Rights are Reserved",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: "Cairo",
                  fontStyle: FontStyle.normal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

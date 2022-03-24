import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:flutter/material.dart';

Widget Footer1(BuildContext context){
  return   Container(
    // width: 1440,
    //   width:double.infinity,
    // height: Responsive.isDesktop(context) ? 444 : 1350,
    width: MediaQuery.of(context).size.width,
    color: const Color.fromRGBO(50, 59, 75, 1),
    child: Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 40),
      child: Column(
        children: [
          Center(
            child: Wrap(
              children: [
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/image 1.png",
                              width: 33, height: 40),
                          const SizedBox(width: 10),
                          const Text(
                            "CIOFORUM",
                            style: TextStyle(
                                color: Color.fromRGBO(
                                    225, 225, 225, 1),
                                fontWeight: FontWeight.w800,
                                fontSize: 34,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "CIOforum offers GDPR services and a\n${"Shared IT Director"}  without the overhead of\na salaried person. Make an appointment \nwithout obligation via",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(225, 225, 225, 1),
                          fontStyle: FontStyle.normal,
                          fontFamily: "Cairo",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                          height: 1.7,
                        ),
                      ),
                      const Text("rzondervan@cioforum.nl ",
                          style: TextStyle(
                            color:
                            Color.fromRGBO(225, 225, 225, 1),
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
                                BorderRadius.circular(40),
                                color: const Color.fromRGBO(
                                    0, 0, 0, 0.5),
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
                                BorderRadius.circular(40),
                                color: const Color.fromRGBO(
                                    0, 0, 0, 0.5),
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
                                BorderRadius.circular(40),
                                color: const Color.fromRGBO(
                                    0, 0, 0, 0.5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/Vector (1).png"),
                                    scale: 1.5)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // SizedBox(width: 20),
                Container(
                  width:200,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "QUICK LIKES",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(139, 190, 43, 1),
                        ),
                      ),
                      SizedBox(height: 70),
                      Text(
                        "Home",
                        style: TextStyle(
                            color:
                            Color.fromRGBO(225, 225, 225, 1),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal,
                            fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Products",
                        style: TextStyle(
                          color: Color.fromRGBO(225, 225, 225, 1),
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
                          color: Color.fromRGBO(225, 225, 225, 1),
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
                          color: Color.fromRGBO(225, 225, 225, 1),
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
                          color: Color.fromRGBO(225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(width: 20),
                Container(
                  width:200,
                  margin: const EdgeInsets.all(20),
                  child: Column(
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
                ),
                // SizedBox(width: 20),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(20),
                  child: Column(
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
                ),

              ],
            ),
          ),
          Text("©2022 CIOFORUM | All Rights are Reserved",style: TextStyle(
              color: AppTheme.primaryWhiteColor,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              fontStyle: FontStyle.normal

          ),)
        ],
      ),
    ),
  );


}
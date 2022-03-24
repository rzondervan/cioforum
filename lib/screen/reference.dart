import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

class Reference extends StatefulWidget {
  const Reference({Key? key}) : super(key: key);

  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(width);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.2,
              width: double.infinity,
              color: AppTheme.primaryBlueColor,
              child: Center(
                child: Text(
                  "Reference",
                  style: TextStyle(
                      color: AppTheme.primaryWhiteColor,
                      fontFamily: "Cairo",
                      fontSize: width < 600 ? 30 : 45,
                      // fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            Container(
              height: height * 0.4,
              width: double.infinity,
              color: AppTheme.WhiteColor,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "The organizations where CIOforum provides services are",
                    style: TextStyle(
                        color: AppTheme.primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context) ? 31 : 22,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal),
                  ),
                  const SizedBox(height: 50),
                  Wrap(
                    children: [
                      Image.network(
                        "assets/comenius-rgb 1.png",
                        width: 112,
                        height: 70,
                      ),
                      const SizedBox(width: 20),
                      Image.network(
                        "assets/qinas-logo 1.png",
                        width: 112,
                        height: 70,
                      ),
                      const SizedBox(width: 20),
                      Image.network(
                        "assets/erfgooierscollege 1.png",
                        width: 112,
                        height: 70,
                      ),
                      const SizedBox(width: 20),
                      Image.network(
                        "assets/CVO t Gooi RGB 1.png",
                        width: 112,
                        height: 70,
                      ),
                      const SizedBox(width: 20),
                      Image.network(
                        "assets/LC-Logo-Geel-RGB - light theme 1.png",
                        width: 112,
                        height: 70,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "What customers say",
              style: TextStyle(
                  color: AppTheme.primaryBlueColor,
                  fontFamily: "Cairo",
                  fontSize: Responsive.isDesktop(context) ? 31 : 22,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal),
            ),
            const SizedBox(height: 20),
            CarouselSlider.builder(
              itemCount: 1,
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: false,
                aspectRatio: 16/5,
                // viewportFraction: Responsive.isDesktop(context)?0.3:0.85,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                // return Container(
                //   height: 200,
                //   width: 200,
                //   color: Colors.green,
                // );

                return Container(
                  // width: width * 0.7,
                  color: AppTheme.WhiteColor,
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "assets/“ (1).png",
                          height: height * 0.1,
                          width: width * 0.1,
                          // color: Colors.blue,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "Robert delivers to us, through his unique vendor-independent subscription, a new IT vision and strategy, which allowed us to save on unnecessary investments in equipment and work. Robert is good at analyzing IT problems and wishes and comes with solution scenarios where availability and continuity are guaranteed. It is also very nice that he understands proposals from IT suppliers, can adapt them to our advantage, and explains them in understandable language. The latter in particular is a great pleasure for us. able to better leverage the IT capabilities that are important to our industry. We are thrilled with our new subscription to IT strategy assistance. Highly recommended for any organization without its own IT people.",
                                style: TextStyle(
                                    color: AppTheme.primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: Responsive.isDesktop(context)
                                        ? 17
                                        : 10,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    height: 1.5),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Image.network(
                                    "assets/Ellipse 45.png",
                                    width: width * 0.04,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Renée Neuteboom",
                                        style: TextStyle(
                                            color: AppTheme.primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize:
                                                Responsive.isDesktop(context)
                                                    ? 18
                                                    : 10,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      Text(
                                        "Director of Childcare SKDD",
                                        style: TextStyle(
                                            color: AppTheme.primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize:
                                                Responsive.isDesktop(context)
                                                    ? 14
                                                    : 8,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Image.network(
                              "assets/“ (2).png",
                              height: height * 0.1,
                              width: width * 0.1,
                            )),
                      ],
                    ),
                  ),
                );
               },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => buttonCarouselController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppTheme.primaryBlackColor),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: AppTheme.primaryBlackColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () => buttonCarouselController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppTheme.primaryBlackColor),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppTheme.primaryBlackColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Footer1(context),
            // Container(
            //   // width: 1440,
            //   //   width:double.infinity,
            //   // height: Responsive.isDesktop(context) ? 444 : 1350,
            //   width: MediaQuery.of(context).size.width,
            //   color: const Color.fromRGBO(50, 59, 75, 1),
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 40, bottom: 40),
            //     child: Column(
            //       children: [
            //         Center(
            //           child: Wrap(
            //             children: [
            //               Container(
            //                 width: 300,
            //                 margin: const EdgeInsets.all(20),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Row(
            //                       children: [
            //                         Image.asset("assets/image 1.png",
            //                             width: 33, height: 40),
            //                         const SizedBox(width: 10),
            //                         const Text(
            //                           "CIOFORUM",
            //                           style: TextStyle(
            //                               color:
            //                                   Color.fromRGBO(225, 225, 225, 1),
            //                               fontWeight: FontWeight.w800,
            //                               fontSize: 34,
            //                               fontStyle: FontStyle.normal,
            //                               fontFamily: "Montserrat"),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(height: 40),
            //                     const Text(
            //                       "CIOforum offers GDPR services and a\n${"Shared IT Director"}  without the overhead of\na salaried person. Make an appointment \nwithout obligation via",
            //                       // textAlign: TextAlign.left,
            //                       style: TextStyle(
            //                         color: Color.fromRGBO(225, 225, 225, 1),
            //                         fontStyle: FontStyle.normal,
            //                         fontFamily: "Cairo",
            //                         fontSize: 14,
            //                         fontWeight: FontWeight.w400,
            //                         letterSpacing: 1.0,
            //                         height: 1.7,
            //                       ),
            //                     ),
            //                     const Text("rzondervan@cioforum.nl ",
            //                         style: TextStyle(
            //                           color: Color.fromRGBO(225, 225, 225, 1),
            //                           fontStyle: FontStyle.normal,
            //                           fontFamily: "Cairo",
            //                           fontSize: 14,
            //                           fontWeight: FontWeight.w400,
            //                           letterSpacing: 1.0,
            //                           height: 1.7,
            //                         )),
            //                     const SizedBox(height: 30),
            //                     Row(
            //                       children: [
            //                         Container(
            //                           height: 44,
            //                           width: 44,
            //                           decoration: BoxDecoration(
            //                               borderRadius:
            //                                   BorderRadius.circular(40),
            //                               color: const Color.fromRGBO(
            //                                   0, 0, 0, 0.5),
            //                               image: const DecorationImage(
            //                                   image: AssetImage(
            //                                       "assets/Vector.png"),
            //                                   scale: 1.5)),
            //                         ),
            //                         const SizedBox(width: 10),
            //                         Container(
            //                           height: 44,
            //                           width: 44,
            //                           decoration: BoxDecoration(
            //                               borderRadius:
            //                                   BorderRadius.circular(40),
            //                               color: const Color.fromRGBO(
            //                                   0, 0, 0, 0.5),
            //                               image: const DecorationImage(
            //                                   image: AssetImage(
            //                                       "assets/Vector.png"),
            //                                   scale: 1.5)),
            //                         ),
            //                         const SizedBox(width: 10),
            //                         Container(
            //                           height: 44,
            //                           width: 44,
            //                           decoration: BoxDecoration(
            //                               borderRadius:
            //                                   BorderRadius.circular(40),
            //                               color: const Color.fromRGBO(
            //                                   0, 0, 0, 0.5),
            //                               image: const DecorationImage(
            //                                   image: AssetImage(
            //                                       "assets/Vector (1).png"),
            //                                   scale: 1.5)),
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //               // SizedBox(width: 20),
            //               Container(
            //                 width: 200,
            //                 margin: const EdgeInsets.all(20),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: const [
            //                     Text(
            //                       "QUICK LIKES",
            //                       style: TextStyle(
            //                         fontSize: 19,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                         fontWeight: FontWeight.w600,
            //                         color: Color.fromRGBO(139, 190, 43, 1),
            //                       ),
            //                     ),
            //                     SizedBox(height: 70),
            //                     Text(
            //                       "Home",
            //                       style: TextStyle(
            //                           color: Color.fromRGBO(225, 225, 225, 1),
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: "Cairo",
            //                           fontStyle: FontStyle.normal,
            //                           fontSize: 16),
            //                     ),
            //                     SizedBox(height: 20),
            //                     Text(
            //                       "Products",
            //                       style: TextStyle(
            //                         color: Color.fromRGBO(225, 225, 225, 1),
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 16,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                       ),
            //                     ),
            //                     SizedBox(height: 20),
            //                     Text(
            //                       "Blog",
            //                       style: TextStyle(
            //                         color: Color.fromRGBO(225, 225, 225, 1),
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 16,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                       ),
            //                     ),
            //                     SizedBox(height: 20),
            //                     Text(
            //                       "About us",
            //                       style: TextStyle(
            //                         color: Color.fromRGBO(225, 225, 225, 1),
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 16,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                       ),
            //                     ),
            //                     SizedBox(height: 20),
            //                     Text(
            //                       "Contact",
            //                       style: TextStyle(
            //                         color: Color.fromRGBO(225, 225, 225, 1),
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 16,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               // SizedBox(width: 20),
            //               Container(
            //                 width: 200,
            //                 margin: const EdgeInsets.all(20),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: const [
            //                     Text(
            //                       "OTHERS LIKES",
            //                       style: TextStyle(
            //                         fontSize: 19,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                         fontWeight: FontWeight.w600,
            //                         color: Color.fromRGBO(139, 190, 43, 1),
            //                       ),
            //                     ),
            //                     SizedBox(height: 70),
            //                     Text(
            //                       "Terms and Conditions",
            //                       style: TextStyle(
            //                         color: Color.fromRGBO(225, 225, 225, 1),
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 16,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                       ),
            //                     ),
            //                     SizedBox(height: 20),
            //                     Text(
            //                       "Cookies",
            //                       style: TextStyle(
            //                         color: Color.fromRGBO(225, 225, 225, 1),
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 16,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                       ),
            //                     ),
            //                     SizedBox(height: 20),
            //                     Text(
            //                       "Sitemap",
            //                       style: TextStyle(
            //                         color: Color.fromRGBO(225, 225, 225, 1),
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 16,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                       ),
            //                     ),
            //                     SizedBox(height: 20),
            //                     Text(
            //                       "FAQ",
            //                       style: TextStyle(
            //                         color: Color.fromRGBO(225, 225, 225, 1),
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 16,
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                       ),
            //                     ),
            //                     SizedBox(height: 40),
            //                   ],
            //                 ),
            //               ),
            //               // SizedBox(width: 20),
            //               Container(
            //                 width: 300,
            //                 margin: const EdgeInsets.all(20),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     const Text(
            //                       "GET IN TOUCH",
            //                       style: TextStyle(
            //                         fontSize: 19,
            //                         fontWeight: FontWeight.w600,
            //                         color: Color.fromRGBO(139, 190, 43, 1),
            //                         fontFamily: "Cairo",
            //                         fontStyle: FontStyle.normal,
            //                       ),
            //                     ),
            //                     const SizedBox(height: 80),
            //                     Row(
            //                       children: const [
            //                         Icon(
            //                           Icons.add_location_outlined,
            //                           color: Color.fromRGBO(139, 190, 43, 1),
            //                         ),
            //                         SizedBox(width: 20),
            //                         Text(
            //                           "CIOFORUM",
            //                           style: TextStyle(
            //                             color: Color.fromRGBO(225, 225, 225, 1),
            //                             fontWeight: FontWeight.w600,
            //                             fontSize: 19,
            //                             fontFamily: "Cairo",
            //                             fontStyle: FontStyle.normal,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.end,
            //                       children: [
            //                         const SizedBox(
            //                           height: 10,
            //                         ),
            //                         Row(
            //                           children: const [
            //                             SizedBox(width: 40),
            //                             Text(
            //                               "Buntlaan 11B 3941 MG Doorn\nNederland",
            //                               style: TextStyle(
            //                                   color: Color.fromRGBO(
            //                                       225, 225, 225, 1),
            //                                   fontWeight: FontWeight.w400,
            //                                   fontSize: 16,
            //                                   fontFamily: "Cairo",
            //                                   fontStyle: FontStyle.normal,
            //                                   height: 1.5),
            //                             ),
            //                           ],
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(height: 10),
            //                     Row(
            //                       children: const [
            //                         Icon(
            //                           Icons.email_outlined,
            //                           color: Color.fromRGBO(139, 190, 43, 1),
            //                         ),
            //                         SizedBox(width: 20),
            //                         Text(
            //                           "rzondervan@cioforum.nl",
            //                           style: TextStyle(
            //                             color: Color.fromRGBO(225, 225, 225, 1),
            //                             fontWeight: FontWeight.w400,
            //                             fontSize: 16,
            //                             fontFamily: "Cairo",
            //                             fontStyle: FontStyle.normal,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(height: 20),
            //                     Row(
            //                       children: const [
            //                         Icon(
            //                           Icons.call,
            //                           color: Color.fromRGBO(139, 190, 43, 1),
            //                         ),
            //                         SizedBox(width: 20),
            //                         Text(
            //                           "+31 6 20 707 442",
            //                           style: TextStyle(
            //                             color: Color.fromRGBO(225, 225, 225, 1),
            //                             fontWeight: FontWeight.w400,
            //                             fontSize: 16,
            //                             fontFamily: "Cairo",
            //                             fontStyle: FontStyle.normal,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(height: 10),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Text(
            //           "©2022 CIOFORUM | All Rights are Reserved",
            //           style: TextStyle(
            //               color: AppTheme.primaryWhiteColor,
            //               fontFamily: "Cairo",
            //               fontWeight: FontWeight.w400,
            //               fontSize: 14,
            //               fontStyle: FontStyle.normal),
            //         )
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
//
// height: width>1100?width*0.40:width*0.50,
// width: width,
// color:Colors.blue,
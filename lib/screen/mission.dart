import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:flutter/material.dart';

class Mission extends StatelessWidget {
  const Mission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/Group 1.png",
                    width: width,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top:width*0.04),
                      child: Text(
                        "Mission",
                        style: TextStyle(
                            color: AppTheme.primaryWhiteColor,
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal,
                            fontSize: width<600?width*0.08:54,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(
                    left: Responsive.isDesktop(context) ? 170 : 20,
                    right: Responsive.isDesktop(context) ? 170 : 20,
                    top: 20,
                    bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.red,
                      color: const Color.fromRGBO(247, 247, 247, 1),
                      child: Padding(
                        padding:  EdgeInsets.all(Responsive.isDesktop(context) ?60.0:18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The mission of CIOforum is to contribute to a better world by sharing knowledge to prevent waste:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Responsive.isDesktop(context) ?24:18,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme.primaryBlueColor,
                                  letterSpacing: 1),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Text(
                                    "Deliver valuable strategic and tactical IT knowledge to directors, owners, directors and other IT managers in an understandable language.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Responsive.isDesktop(context) ?24:18,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Text(
                                    "Exchanging experiences and benchmarks with peers.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Responsive.isDesktop(context) ?24:18,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Text(
                                    "Providing independent expertise for organizations from around 100 people, who want to save on an IT director in salaried employment.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Responsive.isDesktop(context) ?24:18,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Text(
                              "This creates an independent source of information next to your own supplier(s). A source of information enriched with experiences of colleagues. The topics discussed are suggested by the participants themselves. For example, by completing the short survey below, for which you will receive a valuable article in return.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Responsive.isDesktop(context) ?24:18,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme.primaryBlueColor,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Core values",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Responsive.isDesktop(context) ?31:24,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Cairo",
                          color: AppTheme.primaryBlueColor,
                          letterSpacing: 1),
                    ),
                    // Row(
                    //   children: [
                    //     Container(
                    //       // color: Colors.red,
                    //       child: Expanded(
                    //         child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text(
                    //               "The core values ​​that support this mission are:",
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.w400,
                    //                 fontSize: 20,
                    //                 fontStyle: FontStyle.normal,
                    //                 fontFamily: "Cairo",
                    //                 color: AppTheme.primaryBlueColor,
                    //               ),
                    //             ),
                    //             const SizedBox(height: 10),
                    //             Row(
                    //               children: [
                    //                 const SizedBox(width: 10),
                    //                 Image.asset(
                    //                   "assets/Ellipse 18.png",
                    //                   height: 10,
                    //                   width: 10,
                    //                 ),
                    //                 const SizedBox(width: 10),
                    //                 Expanded(
                    //                   child: Text(
                    //                     "Independence from suppliers and providers.",
                    //                     style: TextStyle(
                    //                       fontWeight: FontWeight.w400,
                    //                       fontSize: 20,
                    //                       fontStyle: FontStyle.normal,
                    //                       fontFamily: "Cairo",
                    //                       color: AppTheme.primaryBlueColor,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             const SizedBox(height: 10),
                    //             Row(
                    //               children: [
                    //                 const SizedBox(width: 10),
                    //                 Image.asset(
                    //                   "assets/Ellipse 18.png",
                    //                   height: 10,
                    //                   width: 10,
                    //                 ),
                    //                 const SizedBox(width: 10),
                    //                 Expanded(
                    //                   child: Text(
                    //                     "Integrity and confidentiality, for example about customer",
                    //                     style: TextStyle(
                    //                       fontWeight: FontWeight.w400,
                    //                       fontSize: 20,
                    //                       fontStyle: FontStyle.normal,
                    //                       fontFamily: "Cairo",
                    //                       color: AppTheme.primaryBlueColor,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             const SizedBox(height: 10),
                    //             Row(
                    //               children: [
                    //                 const SizedBox(width: 10),
                    //                 Image.asset(
                    //                   "assets/Ellipse 18.png",
                    //                   height: 10,
                    //                   width: 10,
                    //                 ),
                    //                 const SizedBox(width: 10),
                    //                 Expanded(
                    //                   child: Text(
                    //                     "risks and impact.Commitment to sustainability.",
                    //                     style: TextStyle(
                    //                       fontWeight: FontWeight.w400,
                    //                       fontSize: 20,
                    //                       fontStyle: FontStyle.normal,
                    //                       fontFamily: "Cairo",
                    //                       color: AppTheme.primaryBlueColor,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             const SizedBox(height: 10),
                    //             Row(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 const SizedBox(width: 30),
                    //                 Image.asset(
                    //                   "assets/Ellipse 20.png",
                    //                   height: 10,
                    //                   width: 10,
                    //                 ),
                    //                 const SizedBox(width: 10),
                    //                 Expanded(
                    //                   child: Text(
                    //                     "CIOforum wants to achieve viable and sustainable goals and has therefore moved to the Triodos bank, for example.",
                    //                     style: TextStyle(
                    //                       fontWeight: FontWeight.w400,
                    //                       fontSize: 20,
                    //                       fontStyle: FontStyle.normal,
                    //                       fontFamily: "Cairo",
                    //                       color: AppTheme.primaryBlueColor,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     Image.asset("assets/image 10.png",
                    //         height: height * 0.5, width: width * 0.25)
                    //   ],
                    // )
                    SizedBox(height: 30),
                    Responsive.isDesktop(context) ? Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The core values ​​that support this mission are:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme.primaryBlueColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Image.network(
                                    "assets/Ellipse 18.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "Independence from suppliers and providers.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "Cairo",
                                      color: AppTheme.primaryBlueColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Image.network(
                                    "assets/Ellipse 18.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "Integrity and confidentiality, for example about customer",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Image.network(
                                    "assets/Ellipse 18.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "risks and impact.Commitment to sustainability.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 30),
                                  Image.network(
                                    "assets/Ellipse 20.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "CIOforum wants to achieve viable and sustainable goals and has therefore moved to the Triodos bank, for example.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Image.network("assets/image 10.png",
                            height: height * 0.5, width: width * 0.25)
                      ],
                    ):
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/image 10.png",
                             width: width * 0.5,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Container(
                          height: height*0.4,
                          // color: Colors.red,`
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The core values ​​that support this mission are:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme.primaryBlueColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    "assets/Ellipse 18.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "Independence from suppliers and providers.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    "assets/Ellipse 18.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "Integrity and confidentiality, for example about customer",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    "assets/Ellipse 18.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "risks and impact.Commitment to sustainability.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 30),
                                  Image.asset(
                                    "assets/Ellipse 20.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "CIOforum wants to achieve viable and sustainable goals and has therefore moved to the Triodos bank, for example.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme.primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: const Color.fromRGBO(230, 255, 249, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.isDesktop(context) ? 150 : 20,
                      right: Responsive.isDesktop(context) ? 150 : 20,
                      top: 20,
                      bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text(
                        "Vision",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: Responsive.isDesktop(context) ? 31:25,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Cairo",
                            color: Color.fromRGBO(30, 84, 71, 1),
                            letterSpacing: 1),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "IT should do what your organization wants, only the most valuable projects, addressing the highest risks, with the most efficient building blocks and processes, and with the fewest resources.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isDesktop(context) ? 31:18,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Cairo",
                            color: Color.fromRGBO(30, 84, 71, 1),
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // width: 1440,
                //   width:double.infinity,
                // height: Responsive.isDesktop(context) ? 444 : 1350,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(50, 59, 75, 1),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
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
                                            color:
                                                Color.fromRGBO(225, 225, 225, 1),
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
                                        color: Color.fromRGBO(225, 225, 225, 1),
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
                              width: 200,
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
                                        color: Color.fromRGBO(225, 225, 225, 1),
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
                              width: 200,
                              margin: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "OTHERS LIKES",
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
                                    "Terms and Conditions",
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
                                    "Cookies",
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
                                    "Sitemap",
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
                                    "FAQ",
                                    style: TextStyle(
                                      color: Color.fromRGBO(225, 225, 225, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "GET IN TOUCH",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(139, 190, 43, 1),
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  const SizedBox(height: 80),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.add_location_outlined,
                                        color: Color.fromRGBO(139, 190, 43, 1),
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        "CIOFORUM",
                                        style: TextStyle(
                                          color: Color.fromRGBO(225, 225, 225, 1),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 19,
                                          fontFamily: "Cairo",
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
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
                                                color: Color.fromRGBO(
                                                    225, 225, 225, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                fontFamily: "Cairo",
                                                fontStyle: FontStyle.normal,
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
                                        color: Color.fromRGBO(139, 190, 43, 1),
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        "rzondervan@cioforum.nl",
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
                                  const SizedBox(height: 20),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.call,
                                        color: Color.fromRGBO(139, 190, 43, 1),
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        "+31 6 20 707 442",
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
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "©2022 CIOFORUM | All Rights are Reserved",
                        style: TextStyle(
                            color: AppTheme.primaryWhiteColor,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontStyle: FontStyle.normal),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

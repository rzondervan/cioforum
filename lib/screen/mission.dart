import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/thememode/provider.dart';
import 'package:ciofroum_web/widget/appbar.dart';
import 'package:ciofroum_web/widget/drawer.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mission extends StatefulWidget {
  // Mission({required this.clickFooterCallback,required this.sitemapClick});
  //
  // ClickFooterCallback clickFooterCallback;
  // SitemapClick sitemapClick;
  @override
  State<Mission> createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey menuKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: Responsive.isMobile(context)
            ? SideDrawer(context:context,homeTabSelected:false,productTabSelected:false,newsTabSelected:false,aboutTabSelected:false,contact:false,menuKey: menuKey,mission:true,founder:false,partner:false,reference: false): null,
        appBar:appbar(context,false,false,false,false,false,_scaffoldKey,menuKey,),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/Group_1.png",
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
                            color: Color.fromRGBO(225, 225, 225, 1),
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal,
                            fontSize: width<600?width*0.08:54,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 20),
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
                      color: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1): Color.fromRGBO(247, 247, 247, 1),
                      child: Padding(
                        padding:  EdgeInsets.all(Responsive.isDesktop(context) ?60.0:18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The mission of CIOforum is to contribute to a better world by sharing knowledge to prevent waste:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme(context).primaryBlueColor,
                                letterSpacing: 1.0,
                                height: 1.7,                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Deliver valuable strategic and tactical IT knowledge to directors, owners, directors and other IT managers in an understandable language.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Responsive.isDesktop(context) ?19:16,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      letterSpacing: 1.0,
                                      height: 1.7,                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Exchanging experiences and benchmarks with peers.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Responsive.isDesktop(context) ?19:16,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      letterSpacing: 1.0,
                                      height: 1.7,                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Providing independent expertise for organizations from around 100 people, who want to save on an IT director in salaried employment.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Responsive.isDesktop(context) ?19:16,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      letterSpacing: 1.0,
                                      height: 1.7,

                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Text(
                              "This creates an independent source of information next to your own supplier(s). A source of information enriched with experiences of colleagues. The topics discussed are suggested by the participants themselves. For example, by completing the short survey below, for which you will receive a valuable article in return.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme(context).primaryBlueColor,
                                letterSpacing: 1.0,
                                height: 1.7,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Text(
                      "Core values",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Responsive.isDesktop(context) ?31:24,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Cairo",
                          color: AppTheme(context).primaryBlueColor,
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
                    //               "The core values ??????that support this mission are:",
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.w400,
                    //                 fontSize: 20,
                    //                 fontStyle: FontStyle.normal,
                    //                 fontFamily: "Cairo",
                    //                 color: AppTheme(context).primaryBlueColor,
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
                    //                       color: AppTheme(context).primaryBlueColor,
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
                    //                       color: AppTheme(context).primaryBlueColor,
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
                    //                       color: AppTheme(context).primaryBlueColor,
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
                    //                       color: AppTheme(context).primaryBlueColor,
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
                                "The core values ??????that support this mission are:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme(context).primaryBlueColor,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [

                                  Expanded(
                                    child
                                        : Text(
                                      "Independence from suppliers and providers.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontSize: 19,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Integrity and confidentiality, for example about customer",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontSize: 19,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "risks and impact.Commitment to sustainability.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontSize: 19,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // const SizedBox(width: 20),
                                  // Align(
                                  //     alignment: Alignment.bottomCenter,
                                  //     child: Icon(Icons.circle,size: 10,color: Colors.red,)),

                                  // Image.network(
                                  //   "assets/Ellipse_20.png",
                                  //   height: 10,
                                  //   width: 10,
                                  // ),
                                  // const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "CIOforum wants to achieve viable and sustainable goals and has therefore moved to the Triodos bank, for example.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontSize: 19,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Image.network("assets/image_10.png",
                            height: height * 0.5, width: width * 0.25)
                      ],
                    ):
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/image_10.png",
                             width: width * 0.5,fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                        Container(
                          height: height*0.4,
                          // color: Colors.red,`
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The core values ??????that support this mission are:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme(context).primaryBlueColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  // const SizedBox(width: 10),
                                  // Image.asset(
                                  //   "assets/Ellipse_18.png",
                                  //   height: 10,
                                  //   width: 10,
                                  // ),
                                  // const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "Independence from suppliers and providers.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  // const SizedBox(width: 10),
                                  // Image.asset(
                                  //   "assets/Ellipse_18.png",
                                  //   height: 10,
                                  //   width: 10,
                                  // ),
                                  // const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "Integrity and confidentiality, for example about customer",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  // const SizedBox(width: 10),
                                  // Image.asset(
                                  //   "assets/Ellipse_18.png",
                                  //   height: 10,
                                  //   width: 10,
                                  // ),
                                  // const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "risks and impact.Commitment to sustainability.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // const SizedBox(width: 20),
                                  // Icon(Icons.circle,size: 10,color: Colors.red,),
                                  // Center(
                                  //   child: Image.asset(
                                  //     "assets/Ellipse_20.png",
                                  //     height: 10,
                                  //     width: 10,
                                  //     color: Colors.red,
                                  //   ),
                                  // ),
                                  // const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "CIOforum wants to achieve viable and sustainable goals and has therefore moved to the Triodos bank, for example.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo",
                                        color: AppTheme(context).primaryBlueColor,
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
                height: 200,
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
                            fontSize: Responsive.isDesktop(context) ? 24:22,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Cairo",
                            letterSpacing: 1.0,
                            height: 1.7,
                            color: Color.fromRGBO(30, 84, 71, 1),
                            ),
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: Text(
                          "IT should do what your organization wants, only the most valuable projects, addressing the highest risks, with the most efficient building blocks and processes, and with the fewest resources.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: Responsive.isDesktop(context) ? 19:16,
                              fontStyle: FontStyle.normal,
                              fontFamily: "Cairo",
                              letterSpacing: 1.0,
                              height: 1.7,
                              color: Color.fromRGBO(30, 84, 71, 1),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Footer1(context)
            ],
          ),
        ),
      ),
    );
  }
}

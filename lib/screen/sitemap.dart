import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';

class SiteMape extends StatefulWidget {
   SiteMape({Key? key, required this.clickFooterCallback}) : super(key: key);
  ClickFooterCallback clickFooterCallback;


  @override
  State<SiteMape> createState() => _SiteMapeState();
}

class _SiteMapeState extends State<SiteMape> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                      "SITEMAP",
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
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.isDesktop(context) ? 170 : 20,
                  right: Responsive.isDesktop(context) ? 170 : 20,
                  top: 100,
                  bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Below you will find all pages on this website.",
                    style: TextStyle(
                        color: AppTheme.primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context) ?24:18,
                        letterSpacing: 1.0,
                        height: 1.7,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "About us",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Products",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Blog",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Contact",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 55),


                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        children: [
                          Text(
                            "Mission",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Founder",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Partners",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "References",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 55),


                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        children: [
                          Text(
                            "Contact",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Terms and Conditions",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Cookies",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "site map",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "FAQ",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?19:16,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),

                        ],
                      ),


                    ],
                  )


                ],
              ),
            ),
            Footer1(context,widget.clickFooterCallback)


          ],
        ),
      ),
    );
  }
}

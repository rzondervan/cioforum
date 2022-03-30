import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/screen/about.dart';
import 'package:ciofroum_web/screen/contact.dart';
import 'package:ciofroum_web/screen/cookies.dart';
import 'package:ciofroum_web/screen/faq.dart';
import 'package:ciofroum_web/screen/founder.dart';
import 'package:ciofroum_web/screen/mission.dart';
import 'package:ciofroum_web/screen/news.dart';
import 'package:ciofroum_web/screen/partner.dart';
import 'package:ciofroum_web/screen/products.dart';
import 'package:ciofroum_web/screen/reference.dart';
import 'package:ciofroum_web/screen/termsandconditions.dart';
import 'package:ciofroum_web/widget/appbar.dart';
import 'package:ciofroum_web/widget/drawer.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';

class SiteMape extends StatefulWidget {
  //  SiteMape({Key? key, required this.clickFooterCallback,required this.sitemapClick}) : super(key: key);
  // ClickFooterCallback clickFooterCallback;
  //  SitemapClick sitemapClick;


  @override
  State<SiteMape> createState() => _SiteMapeState();
}
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
GlobalKey menuKey = GlobalKey();



class _SiteMapeState extends State<SiteMape> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Responsive.isMobile(context)
          ? SideDrawer(context:context,homeTabSelected:false,productTabSelected:false,newsTabSelected:false,aboutTabSelected:false,contact:false,menuKey: menuKey): null,
      appBar:appbar(context,false,false,false,false,false,_scaffoldKey,menuKey),
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
                        color: AppTheme(context).primaryBlueColor,
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
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>About()));
                              Navigator.pushNamed(context,"/about");


                              // widget.sitemapClick.onsitepage(false,false,true,false,false,false,false,false,false,false,false,false);
                           },
                            child: Text(
                              "About",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                              Navigator.pushNamed(context,"/products");


                              // widget.sitemapClick.onsitepage(true,false,false,false,false,false,false,false,false,false,false,false);
                            },
                            child: Text(
                              "Products",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>NewPage()));
                              Navigator.pushNamed(context,"/news");


                              // widget.sitemapClick.onsitepage(false,true,false,false,false,false,false,false,false,false,false,false);
                            },
                            child: Text(
                              "News",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>Contact()));
                              Navigator.pushNamed(context,"/contact");


                              // widget.sitemapClick.onsitepage(false,false,false,true,false,false,false,false,false,false,false,false);
                            },
                            child: Text(
                              "Contact",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 55),


                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>Mission()));
                              Navigator.pushNamed(context,"/mission");


                              // widget.sitemapClick.onsitepage(false,false,false,false,true,false,false,false,false,false,false,false);
                            },
                            child: Text(
                              "Mission",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>Founder()));
                              Navigator.pushNamed(context,"/founder");


                              // widget.sitemapClick.onsitepage(false,false,false,false,false,true,false,false,false,false,false,false);
                            },
                            child: Text(
                              "Founder",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>Partner()));
                              Navigator.pushNamed(context,"/partner");


                              // widget.sitemapClick.onsitepage(false,false,false,false,false,false,true,false,false,false,false,false);
                            },
                            child: Text(
                              "Partners",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>Reference()));
                              Navigator.pushNamed(context,"/reference");


                              // widget.sitemapClick.onsitepage(false,false,false,false,false,false,false,true,false,false,false,false);
                            },
                            child: Text(
                              "References",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 55),


                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>TermsandConditions()));
                              Navigator.pushNamed(context,"/terms&conditions");


                              // widget.sitemapClick.onsitepage(false,false,false,false,false,false,false,false,true,false,false,false);
                            },
                            child: Text(
                              "Terms and Conditions",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>Cookies()));
                              Navigator.pushNamed(context,"/cookies");


                              // widget.sitemapClick.onsitepage(false,false,false,false,false,false,false,false,false,true,false,false);
                            },
                            child: Text(
                              "Cookies",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>SiteMape()));
                              Navigator.pushNamed(context,"/sitemap");


                              // widget.sitemapClick.onsitepage(false,false,false,false,false,false,false,false,false,false,true,false);
                            },
                            child: Text(
                              "site map",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap:(){
                              // Navigator.push(context,MaterialPageRoute(builder: (context)=>FAQ()));
                              Navigator.pushNamed(context,"/faq");


                              // widget.sitemapClick.onsitepage(false,false,false,false,false,false,false,false,false,false,false,true);
                            },
                            child: Text(
                              "FAQ",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          SizedBox(height: 50),


                        ],
                      ),


                    ],
                  )


                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

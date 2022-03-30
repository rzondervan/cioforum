import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/footer_view.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/thememode/provider.dart';
import 'package:ciofroum_web/widget/appbar.dart';
import 'package:ciofroum_web/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/footer1.dart';


class Partner extends StatefulWidget {
  // Partner({required this.clickFooterCallback,required this.sitemapClick});
  //
  // ClickFooterCallback clickFooterCallback;
  // SitemapClick sitemapClick;
  @override
  State<Partner> createState() => _PartnerState();
}
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _PartnerState extends State<Partner> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final themeChange = Provider.of<DarkThemeProvider>(context);
    GlobalKey menuKey = GlobalKey();



    return SafeArea(
      child: Scaffold(
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
                        "Partners",
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
                    top: 20,
                    bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.red,
                      color: themeChange.darkTheme? Color.fromRGBO(50, 59, 75, 1):Color.fromRGBO(247, 247, 247, 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          SizedBox(height: 30),
                          Text("Drie netwerken samengevoegd",style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: Responsive.isDesktop(context) ?24:18,
                              fontStyle: FontStyle.normal,
                              fontFamily: "Cairo",
                              color: AppTheme(context).primaryBlackColor,
                              letterSpacing: 1
                          ),),
                          Padding(
                            padding:  EdgeInsets.all(Responsive.isDesktop(context) ?60.0:18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "CIOforum biedt diensten voor directeuren, eigenaars en besturen zonder IT-expertise. Zij kunnen zich via ons forum spiegelen door ervaringen, meningen en vragen te delen.",
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
                                const SizedBox(height: 30),
                                Text(
                                  "De visie en strategie wordt altijd gedeeld en geleverd door een onafhankelijke associate.",
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
                                const SizedBox(height: 30),
                                Text(
                                  "Uiteindelijk wordt de strategie uitgevoerd in samenwerking met partners. Bij partnerkeuzes zullen we altijd adviseren om minimaal drie leveranciers voorbij te laten komen.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: Responsive.isDesktop(context) ?19:16,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "Cairo",
                                      color: AppTheme(context).primaryBlueColor,
                                    letterSpacing: 1.0,
                                    height: 1.7,
                                  )
                                  ,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                          color: AppTheme(context).greenlightColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shared IT Director",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?24:18,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal),
                            ),
                            const SizedBox(height: 20),
                            RichText(
                              text: TextSpan(
                                  text:
                                  'CIOforum offers you a shared IT Director, a Chief Information Officer " CIO " , as a service, an IT sounding board',
                                  style: TextStyle(
                                      color: AppTheme(context).primaryBlueColor,
                                      fontFamily: "Cairo",
                                      fontSize: Responsive.isDesktop(context) ?19:16,
                                      letterSpacing: 1.0,
                                      height: 1.7,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                      ' without the overhead of a salaried person .',
                                      style: TextStyle(
                                          color: AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: Responsive.isDesktop(context) ?19:16,
                                          letterSpacing: 1.0,
                                          height: 1.7,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal),
                                    )
                                  ]),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "CIOforum offers subscription forms with variation in quarterly to weekly meetings, where you benefit from first opinion and rapid knowledge building about your organization. ",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "Top 7 Mistakes When Hiring an IT Director",
                      style: TextStyle(
                          color: AppTheme(context).primaryBlueColor,
                          fontFamily: "Cairo",
                          fontSize: Responsive.isDesktop(context) ?24:18,
                          letterSpacing: 1.0,
                          height: 1.7,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "CIOforum has a short IT market research for directors, owners and boards. The anonymous answers are used as input for IT-TEDtalk. Would you like to answer three short questions? It will take a few minutes of your time. As a thank you, you will receive the article Top 7 of mistakes ....",
                      style: TextStyle(
                          color: AppTheme(context).primaryBlueColor,
                          fontFamily: "Cairo",
                          fontSize: Responsive.isDesktop(context) ?19:16,
                          letterSpacing: 1.0,
                          height: 1.7,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Download the whitepaper to learn what IT leadership skills you need and don't need.",
                      style: TextStyle(
                          color: AppTheme(context).primaryBlueColor,
                          fontFamily: "Cairo",
                          fontSize: Responsive.isDesktop(context) ?19:16,
                          letterSpacing: 1.0,
                          height: 1.7,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(height: 40),
                    Responsive.isDesktop(context)
                        ? Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // width: width*0.22,
                          child: Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Prevent consequences of a wrong profile",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 19,
                                            letterSpacing: 1.0,
                                            height: 1.7,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                      AppTheme(context).greenlightColor,
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 34,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Make sure IT offers added value",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 19,
                                            letterSpacing: 1.0,
                                            height: 1.7,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                      AppTheme(context).greenlightColor,
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 34,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Prevent IT from taking\n unacceptable risks",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 19,
                                            letterSpacing: 1.0,
                                            height: 1.7,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                      AppTheme(context).greenlightColor,
                                      child: Text(
                                        "3",
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 34,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: width * 0.25,
                          height: height * 0.25,
                          child: Image.asset("assets/image_8.png"),
                        ),
                        Container(
                          // width: width*0.27,
                          child: Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                      AppTheme(context).greenlightColor,
                                      child: Text(
                                        "4",
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 34,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: Text(
                                        "Prevent IT from doing what you want",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 19,
                                            letterSpacing: 1.0,
                                            height: 1.7,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                      AppTheme(context).greenlightColor,
                                      child: Text(
                                        "5",
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 34,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: Text(
                                        "Prevent IT from perpetuating itself ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 19,
                                            letterSpacing: 1.0,
                                            height: 1.7,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                      AppTheme(context).greenlightColor,
                                      child: Text(
                                        "6",
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 34,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: Text(
                                        "You does not benefit from Cloud and managed services",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: 19,
                                            letterSpacing: 1.0,
                                            height: 1.7,
                                            // letterSpacing: 1,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FontStyle.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                        : Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // width: width*0.27,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                    AppTheme(context).greenlightColor,
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 24,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Prevent consequences of a wrong profile",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 16,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                    AppTheme(context).greenlightColor,
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 24,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Make sure IT offers added value ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 16,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                    AppTheme(context).greenlightColor,
                                    child: Text(
                                      "3",
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 24,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Prevent IT from taking unacceptable risks",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 16,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.45,
                          height: height * 0.45,
                          child: Image.asset("assets/image_8.png"),
                        ),
                        Container(
                          // width: width*0.27,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                    AppTheme(context).greenlightColor,
                                    child: Text(
                                      "4",
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 24,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Prevent IT from doing what you want",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 16,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                    AppTheme(context).greenlightColor,
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 24,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Prevent IT from perpetuating itself ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 16,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                    AppTheme(context).greenlightColor,
                                    child: Text(
                                      "6",
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 24,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "You does not benefit from Cloud and managed services",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color:
                                          AppTheme(context).primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 16,
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      // height: height,
                      width: width,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        color: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):AppTheme(context).WhiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Download white paper",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlackColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?24:18,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: height*0.06,
                              width: width*0.15,
                              decoration: BoxDecoration(
                                color: AppTheme(context).primaryGreenColor,
                                borderRadius: BorderRadius.circular(10),

                              ),
                              child: Center(
                                child: Text("Download",style: TextStyle(
                                    color: AppTheme(context).WhiteColor,
                                    fontFamily: "Cairo",
                                    fontSize: Responsive.isDesktop(context) ?19:14,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    )




                  ],
                ),
              ),
              Footer1(context)
            ],
          ),
        )
      ),
    );
  }
}

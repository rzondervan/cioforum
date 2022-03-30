import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/widget/appbar.dart';
import 'package:ciofroum_web/widget/drawer.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';


class FAQ extends StatefulWidget {
  //  FAQ({Key? key,required this.clickFooterCallback,required this.sitemapClick}) : super(key: key);
  // ClickFooterCallback clickFooterCallback;
  //  SitemapClick sitemapClick;


  @override
  State<FAQ> createState() => _FAQState();
}
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
GlobalKey menuKey = GlobalKey();



class _FAQState extends State<FAQ> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();

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
                      "FAQ",
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
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ExpansionTileCard(
                    key: cardA,
                 title: Text('Who is CIO forum intended for?',style: TextStyle(
                    color: AppTheme(context).primaryBlueColor,
                    fontFamily: "Cairo",
                    fontSize: Responsive.isDesktop(context) ?24:18,
                    letterSpacing: 1.0,
                    height: 1.7,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal
          ),),
               children: <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text("For directors, boards and owners of organizations of about 100 people, who want to save on an IT director in salaried employment, or want assistance in fulfilling the role of IT leader. CIOforum offers vendor-independent IT services. As a result, you are no longer dependent on the expertise of your supplier or internal 'expert'.",
                          style:TextStyle(
                              color: AppTheme(context).primaryBlueColor,
                              fontFamily: "Cairo",
                              fontSize: Responsive.isDesktop(context) ?19:16,
                              letterSpacing: 1.0,
                              height: 1.7,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal
                          )
                        ),
                      ),
                    ),
          ],
        ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ExpansionTileCard(
          key: cardB,
          title: Text(
            "What is the difference with the foreign CIO forums?",
            style: TextStyle(
                    color: AppTheme(context).primaryBlueColor,
                    fontFamily: "Cairo",
                    fontSize: Responsive.isDesktop(context) ?24:18,
                    letterSpacing: 1.0,
                    height: 1.7,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal
          ),),
          children: <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          "CIOforum.nl is not intended for IT professionals and not for CIOs, but by CIOs, Chief Information Officers with understandable and independent advice for directors, owners and directors without IT expertise.",
                          style:TextStyle(
                              color: AppTheme(context).primaryBlueColor,
                              fontFamily: "Cairo",
                              fontSize: Responsive.isDesktop(context) ?19:16,
                              letterSpacing: 1.0,
                              height: 1.7,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal
                          )
                        ),
                      ),
                    ),
          ],
        ),
                  ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ExpansionTileCard(
          key: cardC,
          title: Text(
            "What is IT TEDtalk?",
            style: TextStyle(
                    color: AppTheme(context).primaryBlueColor,
                    fontFamily: "Cairo",
                    fontSize: Responsive.isDesktop(context) ?24:18,
                    letterSpacing: 1.0,
                    height: 1.7,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal
          ),),
          children: <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "IT-TEDtalk is a free monthly publication of valuable articles, presentations and videos, which are an inspiring and educational mix of IT and TED* (Technology, Entertainment, Design). You will also find the TED video of the month in the strategic IT tips article. In the monthly articles you will find:",
                              style:TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context) ?19:16,
                                  letterSpacing: 1.0,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal
                              )
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Vision, strategy and innovation opportunities explained by CIOforum Case studies and testimonials of implementation successes from CIOforum and partners",
                                style:TextStyle(
                                    color: AppTheme(context).primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: Responsive.isDesktop(context) ?19:16,
                                    letterSpacing: 1.0,
                                    height: 1.7,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal
                                )
                            ),
                            SizedBox(height: 20),
                            Text(
                              "TED tips on designing the life of a director, owner, or director, such as:Less stress Happiness, health, leisure More sustainable living and working helping others A forum where you can comment and ask questions",
                                style:TextStyle(
                                    color: AppTheme(context).primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: Responsive.isDesktop(context) ?19:16,
                                    letterSpacing: 1.0,
                                    height: 1.7,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal
                                )
                            ),
                            SizedBox(height: 20),
                            Text(
                              "*TED.com is a non-profit organization that publishes ideas worth sharing.",
                                style:TextStyle(
                                    color: AppTheme(context).primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: Responsive.isDesktop(context) ?19:16,
                                    letterSpacing: 1.0,
                                    height: 1.7,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
          ],
        ),
                  ),
                ],
              ),
            ),
            Container(
              height: height*0.25,
              width: width,
              color: Color.fromRGBO(139,190,43,0.16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Question not answered?",style: TextStyle(
                      color: AppTheme(context).primaryBlueColor,
                      fontFamily: "Cairo",
                      fontSize: Responsive.isDesktop(context) ?24:18,
                      letterSpacing: 1,
                      height: 1.7,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal
                  ),),
                  Text("Call 06-20 707 442, mail rzondervan@cioforum.nl.",style: TextStyle(
                      color: AppTheme(context).primaryBlueColor,
                      fontFamily: "Cairo",
                      fontSize: Responsive.isDesktop(context) ?28:20,
                      letterSpacing: 1,
                      height: 1.7,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal
                  ),),
                ],

              ),
            ),
            const SizedBox(height: 40),

            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.isDesktop(context) ? 170 : 20,
                  right: Responsive.isDesktop(context) ? 170 : 20,
                  top: 20,
                  bottom: 20),
              child: Column(
                children: [
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
                      color: AppTheme(context).WhiteColor,
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
      ),
    );
  }
}

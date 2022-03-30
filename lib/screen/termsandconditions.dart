import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/widget/appbar.dart';
import 'package:ciofroum_web/widget/drawer.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class TermsandConditions extends StatefulWidget {
   // TermsandConditions({Key? key,required this.clickFooterCallback,required this.sitemapClick }) : super(key: key);
   // ClickFooterCallback clickFooterCallback;
   // SitemapClick sitemapClick;




   @override
  State<TermsandConditions> createState() => _TermsandConditionsState();
}
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
GlobalKey menuKey = GlobalKey();


class _TermsandConditionsState extends State<TermsandConditions> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Responsive.isMobile(context)
          ? SideDrawer(context:context,homeTabSelected:false,productTabSelected:false,newsTabSelected:false,aboutTabSelected:false,contact:false,menuKey: menuKey): null,
      appBar:appbar(context,false,false,false,false,false,_scaffoldKey,menuKey),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

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
                      "Terms and Conditions",
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
                  Text("Terms and Conditions",style: TextStyle(
                      color: AppTheme(context).primaryBlueColor,
                      fontFamily: "Cairo",
                      fontSize: Responsive.isDesktop(context) ?28:24,
                      letterSpacing: 1,
                      height: 1.7,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal
                  ),),
                  Text("Shared IT Director",style: TextStyle(
                      color: AppTheme(context).primaryBlueColor,
                      fontFamily: "Cairo",
                      fontSize: Responsive.isDesktop(context) ?24:18,
                      letterSpacing: 1,
                      height: 1.7,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal
                  ),),
                  SizedBox(height: 20),
                  Text(
                    "CIOforum offers subscription forms with variation in quarterly to weekly meetings where you can benefit from first opinion and rapid knowledge building about your organization, without the overhead of someone in paid employment . Some conditions for the different subscriptions are:",
                    style: TextStyle(
                      color: AppTheme(context).primaryBlueColor,
                      fontFamily: "Cairo",
                      fontSize: Responsive.isDesktop(context)?19:16,
                      letterSpacing: 1,
                      height: 1.7,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal
                  ),),
                  SizedBox(height: 20),

                  Text(
                    "We only work with monthly subscriptions.",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context)?19:16,
                        letterSpacing: 1,
                        height: 1.7,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
                  Text(
                    "Each type of subscription entitles you to unlimited questions. Executive tasks are an option, such as project management or negotiating prices and terms with suppliers.",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context)?19:16,
                        letterSpacing: 1,
                        height: 1.7,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
                  Text(
                    "A subscription entitles you to a discount of the daily price for the optional executive tasks.",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context)?19:16,
                        letterSpacing: 1,
                        height: 1.7,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
                  Text(
                    "Our daily SWOT analysis log about your organization is always available to you.",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context)?19:16,
                        letterSpacing: 1,
                        height: 1.7,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
                  Text(
                    "Exit is easy. Cancellation of automatic renewal per month: Cancellation is possible up to 1 week before the next invoice date by email.",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context)?19:16,
                        letterSpacing: 1,
                        height: 1.7,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
                  Text(
                    "Upon satisfaction: An annual referral by you to a potential customer for CIOforum.",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context)?19:16,
                        letterSpacing: 1,
                        height: 1.7,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
                  SizedBox(height:40),
                  Text("Privacy Policy",style: TextStyle(
                      color: AppTheme(context).primaryBlueColor,
                      fontFamily: "Cairo",
                      fontSize: Responsive.isDesktop(context) ?24:18,
                      letterSpacing: 1,
                      height: 1.7,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal
                  ),),
                  SizedBox(height: 20),
                  Text(
                    "None of your profile information is made available to third parties. Statistics of our website are kept by Google Analytics. More about this can be found under cookies .",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context)?19:16,
                        letterSpacing: 1,
                        height: 1.7,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
                  SizedBox(height:40),
                  Text("Shipping information, shipping term and VAT",style: TextStyle(
                      color: AppTheme(context).primaryBlueColor,
                      fontFamily: "Cairo",
                      fontSize: Responsive.isDesktop(context) ?24:18,
                      letterSpacing: 1,
                      height: 1.7,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal
                  ),),
                  SizedBox(height: 20),
                  Text(
                    "All prices stated on our site include shipping and handling costs, and exclude VAT. After receipt of the webshop payment, ordered products are automatically made available to you via email and portal access.",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context)?19:16,
                        letterSpacing: 1,
                        height: 1.7,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
                  SizedBox(height:40),
                  Text("Return and Refund Policy",style: TextStyle(
                      color: AppTheme(context).primaryBlueColor,
                      fontFamily: "Cairo",
                      fontSize: Responsive.isDesktop(context) ?24:18,
                      letterSpacing: 1,
                      height: 1.7,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal
                  ),),
                  SizedBox(height: 20),
                  Text(
                    "After ordering on our website and payment via the webshop, our products and services are automatically made available to you. You are not entitled to a refund of unused periods. You can cancel your current subscription in your profile until 1 day before the next invoice date.",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context)?19:16,
                        letterSpacing: 1,
                        height: 1.7,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
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
                          InkWell(
                            onTap: ()async{
                              final url="https://cioforum.nl/cioforum/over-ons/partners/";
                              if(await canLaunch(url)){
                                await launch(url);
                              }else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
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



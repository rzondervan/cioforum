import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/thememode/provider.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cookies extends StatefulWidget {
   Cookies({Key? key, required this.clickFooterCallback,required this.sitemapClick}) : super(key: key);
  ClickFooterCallback clickFooterCallback;
   SitemapClick sitemapClick;


  @override
  State<Cookies> createState() => _CookiesState();
}

class _CookiesState extends State<Cookies> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final themeChange = Provider.of<DarkThemeProvider>(context);

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
                      "Cookies",
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
                                "A cookie is placed via our website from the American company Google, as part of the “Analytics” service. We use this service to keep track of and get reports on how visitors use the website. Google may provide this information to third parties if Google is legally obliged to do so, or if third parties process the information on behalf of Google. We have no influence on this. We have not allowed Google to use the obtained analytics information for other Google services.",
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
                                "The information that Google collects is anonymized as much as possible. Your IP address is emphatically not given. The information is transferred to and stored by Google on servers in the United States. Google claims to adhere to the Safe Harbor principles and is affiliated with the Safe Harbor program of the US Department of Commerce. This means that there is an appropriate level of protection for the processing of any personal data.”",
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
                            "Outsource your IT director",
                            style: TextStyle(
                                color: AppTheme(context).primaryBlueColor,
                                fontFamily: "Cairo",
                                fontSize: Responsive.isDesktop(context) ?24:18,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal
                            ),
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


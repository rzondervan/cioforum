import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:flutter/material.dart';


class Partner extends StatefulWidget {
  const Partner({Key? key}) : super(key: key);

  @override
  State<Partner> createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
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
                        "Partners",
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
                    top: 20,
                    bottom: 20),
                child: Column(
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


                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

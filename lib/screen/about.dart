import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/screen/mission.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {

  ClickOpenCallback callback;
  About({required this.callback});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: height * 0.22,
                width: double.infinity,
                color: AppTheme.primaryBlueColor,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "About Us",
                        style: TextStyle(
                            color: AppTheme.primaryWhiteColor,
                            fontFamily: "Cairo",
                            fontSize: 40,
                            // fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal),
                      ),
                      const SizedBox(width: 40),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          height: height,
                          width: 120,
                          color: AppTheme.primaryGreenColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.callback.onPageOpne(true,false);
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Our Mission",
                                    style: TextStyle(
                                        color: AppTheme.primaryWhiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo"),
                                  ),
                                ),
                              ),
                              const Divider(
                                color:
                                    const Color.fromRGBO(225, 225, 225, 0.29),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.callback.onPageOpne(false,true);
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Founder",
                                    style: TextStyle(
                                        color: AppTheme.primaryWhiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo"),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Color.fromRGBO(225, 225, 225, 0.29),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "Partner",
                                  style: TextStyle(
                                      color: AppTheme.primaryWhiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "Cairo"),
                                ),
                              ),
                              const Divider(
                                color: Color.fromRGBO(225, 225, 225, 0.29),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "Reference",
                                  style: TextStyle(
                                      color: AppTheme.primaryWhiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "Cairo"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Responsive.isDesktop(context) ? 150 : 20,
                    right: Responsive.isDesktop(context) ? 150 : 20,
                    top: 20,
                    bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/image 9 (1).png",
                          height: height * 0.5,
                          width: width * 0.3,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "CIOforum offers vendor-independent services for directors and boards in education and childcare.",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: AppTheme.primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: 24,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                " CIOforum believes that you can get more out of the potential of your employees and IT suppliers and therefore be more successful with your organization.",
                                style: TextStyle(
                                    color: AppTheme.primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: 24,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "CIOforum combines more than 30 years of experience in IT consultancy, knowledge and teamwork to make sure IT does what your organization wants:",
                      style: TextStyle(
                          color: AppTheme.primaryBlueColor,
                          fontFamily: "Cairo",
                          fontSize: 24,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Addressing your annoyances, problems or challenges Savings by looking at the most valuable choices for new investments, workplaces and purchasing with the right prices and fulfillment of your conditions Risk mitigation by improving availability and continuity, for example by working in the Cloud Efficiency improvement, for example by aligning IT with your processes, assistance with the choice and management of a supplier or system CIOforum has a system of 5 short pragmatic steps for determining the best IT investment.",
                      style: TextStyle(
                          color: AppTheme.primaryBlueColor,
                          fontFamily: "Cairo",
                          fontSize: 24,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                          color: AppTheme.greenlightColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shared IT Director",
                              style: TextStyle(
                                  color: AppTheme.primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: 30,
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
                                      color: AppTheme.primaryBlueColor,
                                      fontFamily: "Cairo",
                                      fontSize: 22,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          ' without the overhead of a salaried person .',
                                      style: TextStyle(
                                          color: AppTheme.primaryBlueColor,
                                          fontFamily: "Cairo",
                                          fontSize: 22,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal),
                                    )
                                  ]),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "CIOforum offers subscription forms with variation in quarterly to weekly meetings, where you benefit from first opinion and rapid knowledge building about your organization. ",
                              style: TextStyle(
                                  color: AppTheme.primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: 24,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Service 'Shared IT director'",
                                style: TextStyle(
                                    color: AppTheme.primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: 31,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "CIOforum offers you a shared IT Director , a Chief Information O fficer  CIO  , as a service , an IT sounding board without the overhead of a salaried person . CIOforum offers subscription types with a variation in quarterly to weekly meetings, where you benefit from rapid knowledge building about your organization via an experienced IT coach.",
                                style: TextStyle(
                                    color: AppTheme.primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: 24,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Service 'Data Protection Officer'",
                                style: TextStyle(
                                    color: AppTheme.primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: 31,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "In addition, Robert Zondervan is certified for the Data Protection Officer (CIPM) service for setting up and maintaining a privacy framework, for example for identifying and tackling privacy risks according to a step-by-step plan of the Dutch Data Protection Authority and the European privacy law (AVG - GDPR).",
                                style: TextStyle(
                                    color: AppTheme.primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: 24,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "Top 7 Mistakes When Hiring an IT Director",
                      style: TextStyle(
                          color: AppTheme.primaryBlueColor,
                          fontFamily: "Cairo",
                          fontSize: 31,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "CIOforum has a short IT market research for directors, owners and boards. The anonymous answers are used as input for IT-TEDtalk. Would you like to answer three short questions? It will take a few minutes of your time. As a thank you, you will receive the article Top 7 of mistakes ....",
                      style: TextStyle(
                          color: AppTheme.primaryBlueColor,
                          fontFamily: "Cairo",
                          fontSize: 24,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Download the whitepaper to learn what IT leadership skills you need and don't need.",
                      style: TextStyle(
                          color: AppTheme.primaryBlueColor,
                          fontFamily: "Cairo",
                          fontSize: 24,
                          letterSpacing: 1,
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
                                                  color: AppTheme
                                                      .primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: 23,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FontStyle.normal),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor:
                                                AppTheme.greenlightColor,
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  color: AppTheme
                                                      .primaryBlueColor,
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
                                                  color: AppTheme
                                                      .primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: 23,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FontStyle.normal),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor:
                                                AppTheme.greenlightColor,
                                            child: Text(
                                              "2",
                                              style: TextStyle(
                                                  color: AppTheme
                                                      .primaryBlueColor,
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
                                              "Prevent IT from taking\n unacceptable risks",
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  color: AppTheme
                                                      .primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: 23,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FontStyle.normal),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor:
                                                AppTheme.greenlightColor,
                                            child: Text(
                                              "3",
                                              style: TextStyle(
                                                  color: AppTheme
                                                      .primaryBlueColor,
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
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: width * 0.25,
                                height: height * 0.25,
                                child: Image.asset("assets/image 8.png"),
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
                                                AppTheme.greenlightColor,
                                            child: Text(
                                              "4",
                                              style: TextStyle(
                                                  color: AppTheme
                                                      .primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: 34,
                                                  letterSpacing: 1,
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
                                                  color: AppTheme
                                                      .primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: 23,
                                                  letterSpacing: 1,
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
                                                AppTheme.greenlightColor,
                                            child: Text(
                                              "5",
                                              style: TextStyle(
                                                  color: AppTheme
                                                      .primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: 34,
                                                  letterSpacing: 1,
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
                                                  color: AppTheme
                                                      .primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: 23,
                                                  letterSpacing: 1,
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
                                                AppTheme.greenlightColor,
                                            child: Text(
                                              "6",
                                              style: TextStyle(
                                                  color: AppTheme
                                                      .primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: 34,
                                                  letterSpacing: 1,
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
                                                  color: AppTheme
                                                      .primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: 23,
                                                  letterSpacing: 1,
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
                                          radius: 20,
                                          backgroundColor:
                                              AppTheme.greenlightColor,
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                color:
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 34,
                                                letterSpacing: 1,
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
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 23,
                                                letterSpacing: 1,
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
                                          radius: 20,
                                          backgroundColor:
                                              AppTheme.greenlightColor,
                                          child: Text(
                                            "2",
                                            style: TextStyle(
                                                color:
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 34,
                                                letterSpacing: 1,
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
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 23,
                                                letterSpacing: 1,
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
                                          radius: 20,
                                          backgroundColor:
                                              AppTheme.greenlightColor,
                                          child: Text(
                                            "3",
                                            style: TextStyle(
                                                color:
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 34,
                                                letterSpacing: 1,
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
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 23,
                                                letterSpacing: 1,
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
                                child: Image.asset("assets/image 8.png"),
                              ),
                              Container(
                                // width: width*0.27,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor:
                                              AppTheme.greenlightColor,
                                          child: Text(
                                            "4",
                                            style: TextStyle(
                                                color:
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 34,
                                                letterSpacing: 1,
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
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 23,
                                                letterSpacing: 1,
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
                                          radius: 20,
                                          backgroundColor:
                                              AppTheme.greenlightColor,
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                                color:
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 34,
                                                letterSpacing: 1,
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
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 23,
                                                letterSpacing: 1,
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
                                          radius: 20,
                                          backgroundColor:
                                              AppTheme.greenlightColor,
                                          child: Text(
                                            "6",
                                            style: TextStyle(
                                                color:
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 34,
                                                letterSpacing: 1,
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
                                                    AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontSize: 23,
                                                letterSpacing: 1,
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
                        color: AppTheme.WhiteColor,
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
                                  color: AppTheme.primaryBlackColor,
                                  fontFamily: "Cairo",
                                  fontSize: 33,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal),
                            ),
                            SizedBox(height: 20),
                            Wrap(
                              children: [
                                Container(
                                  height: 52,
                                  width: 291,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: AppTheme.greyColor)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "First name *",
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        hintStyle: TextStyle(
                                            color: AppTheme.primaryBlackColor,
                                            fontFamily: "Cairo",
                                            fontSize: 19,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 52,
                                  width: 291,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: AppTheme.greyColor)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Email Address",
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        hintStyle: TextStyle(
                                            color: AppTheme.primaryBlackColor,
                                            fontFamily: "Cairo",
                                            fontSize: 19,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 52,
                                  width: 142,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppTheme.primaryGreenColor),
                                  child: Center(
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(
                                          color: AppTheme.primaryWhiteColor,
                                          fontFamily: "Cairo",
                                          fontSize: 19,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
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
                                            color: Color.fromRGBO(
                                                225, 225, 225, 1),
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
                                          color:
                                              Color.fromRGBO(225, 225, 225, 1),
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
                                          color:
                                              Color.fromRGBO(225, 225, 225, 1),
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
                                          color:
                                              Color.fromRGBO(225, 225, 225, 1),
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

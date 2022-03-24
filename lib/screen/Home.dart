import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/footer_view.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Footer footer=Footer();
  bool isSwitched = false;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool ontab = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: Responsive.isDesktop(context) ? 534 : 320,
                    // height: Responsive.isDesktop(context) ?MediaQuery.of(context).size.height/1.25:MediaQuery.of(context).size.height/3.2,
                    color: Colors.transparent,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Image.asset("assets/Rectangle 2.png"),
                        Positioned(
                          // top: Responsive.isDesktop(context)?150:120,
                          // left: Responsive.isDesktop(context)?150:30,
                          top: width * 0.10,
                          left: Responsive.isDesktop(context)
                              ? height * 0.22
                              : height * 0.04,
                          child: Container(
                            // height: 386,
                            // width: 582,
                            width: Responsive.isDesktop(context) ? 582 : 370,
                            height: Responsive.isDesktop(context) ? 386 : 250,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(243, 248, 234, 1),
                              //   color:Colors.green,
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(150)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Privacy and IT for",
                                    style: TextStyle(
                                        color: AppTheme.primaryBlueColor,
                                        fontFamily: "Cairo",
                                        fontSize: Responsive.isDesktop(context)
                                            ? 59
                                            : 33.25,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "education",
                                    style: TextStyle(
                                        color: AppTheme.primaryGreenColor,
                                        fontSize: Responsive.isDesktop(context)
                                            ? 59
                                            : 33.25,
                                        fontFamily: "Cairo",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 40
                                          : 20),
                                  Text(
                                    "Independent advice for directors and boards of education and childcare organizations.",
                                    style: TextStyle(
                                      color: AppTheme.primaryBlueColor,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "Cairo",
                                      fontSize: Responsive.isDesktop(context)
                                          ? 24
                                          : 13.53,
                                    ),
                                  ),
                                  SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 40
                                          : 30),
                                  Container(
                                      height: Responsive.isDesktop(context)
                                          ? 48
                                          : 27.05,
                                      width: Responsive.isDesktop(context)
                                          ? 141
                                          : 79.47,
                                      decoration: BoxDecoration(
                                          color: AppTheme.primaryBlueColor,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Center(
                                        child: Text(
                                          "EXPLORE",
                                          style: TextStyle(
                                              color: AppTheme.primaryWhiteColor,
                                              fontSize:
                                                  Responsive.isDesktop(context)
                                                      ? 18
                                                      : 10.15,
                                              fontFamily: "Cairo",
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 2),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Responsive.isDesktop(context) ? 100 : 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 150 : 30,
                        right: Responsive.isDesktop(context) ? 220 : 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: !Responsive.isDesktop(context) ? 30 : 0,
                              right: !Responsive.isDesktop(context) ? 0 : 0),
                          child: Text(
                            "Service 'Data Protection Officer (DPO)'",
                            style: TextStyle(
                                color: AppTheme.primaryBlueColor,
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    Responsive.isDesktop(context) ? 31 : 25,
                                fontFamily: "Cairo",
                                fontStyle: FontStyle.normal,
                                letterSpacing: 1),
                          ),
                        ),
                        SizedBox(
                            height: Responsive.isDesktop(context) ? 50 : 20),
                        Responsive.isDesktop(context)
                            ? Container()
                            : const SizedBox(height: 20),
                        Responsive.isDesktop(context)
                            ? Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "What is the importance of an external DPO?",
                                          style: TextStyle(
                                              color: AppTheme.primaryBlueColor,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 1.0,
                                              height: 1.7,
                                              fontSize: 31,
                                              fontFamily: "Cairo",
                                              fontStyle: FontStyle.normal),
                                        ),
                                        const SizedBox(height: 20),
                                        Text(
                                          "A DPO is mandatory for schools. GDPR fines are becoming more common and are not a good idea. Fortunately, small fines are now also being handed out, but unfortunately that has also happened for sending an email with recipients in the CC.",
                                          style: TextStyle(
                                              color: AppTheme.primaryBlackColor,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 1.0,
                                              height: 1.7,
                                              fontSize: 19,
                                              fontFamily: "Cairo",
                                              fontStyle: FontStyle.normal),
                                        ),
                                        const SizedBox(height: 20),
                                        Container(
                                            height:
                                                Responsive.isDesktop(context)
                                                    ? 48
                                                    : 45,
                                            width: Responsive.isDesktop(context)
                                                ? 141
                                                : 132,
                                            decoration: BoxDecoration(
                                                color:
                                                    AppTheme.primaryBlueColor,
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                            child: Center(
                                              child: Text(
                                                "View More",
                                                style: TextStyle(
                                                    color: AppTheme
                                                        .primaryWhiteColor,
                                                    fontSize: 18,
                                                    fontFamily: "Cairo",
                                                    fontStyle: FontStyle.normal,
                                                    letterSpacing: 3),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 50),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          "assets/Rectangle 5.png",
                                          width: 339,
                                        ),
                                        Positioned(
                                          top: 80,
                                          left: 140,
                                          child: CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                AppTheme.primaryGreenColor,
                                            child: Icon(Icons.play_arrow,
                                                color:
                                                    AppTheme.primaryWhiteColor),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "What is the importance of an external DPO?",
                                    style: TextStyle(
                                        color: Color.fromRGBO(50, 59, 75, 1),
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1.0,
                                        height: 1.5,
                                        fontSize: 20,
                                        fontFamily: "Cairo",
                                        fontStyle: FontStyle.normal),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    "A DPO is mandatory for schools. GDPR fines are becoming more common and are not a good idea. Fortunately, small fines are now also being handed out, but unfortunately that has also happened for sending an email with recipients in the CC.",
                                    style: TextStyle(
                                        color: AppTheme.primaryBlackColor,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: .2,
                                        height: 1.7,
                                        fontSize: 15,
                                        fontFamily: "Cairo",
                                        fontStyle: FontStyle.normal),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                      height: 45,
                                      width: 132,
                                      decoration: BoxDecoration(
                                          color: AppTheme.primaryBlueColor,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          "View More",
                                          style: TextStyle(
                                              color: AppTheme.primaryWhiteColor,
                                              fontSize: 16,
                                              fontFamily: "Cairo",
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 3),
                                        ),
                                      )),
                                  const SizedBox(height: 30),
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Stack(
                                        children: [
                                          Image.asset("assets/Rectangle 5.png",
                                              width: 400),
                                          Positioned(
                                            top: 100,
                                            left: 160,
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundColor:
                                                  AppTheme.primaryGreenColor,
                                              child: Icon(Icons.play_arrow,
                                                  color: AppTheme
                                                      .primaryWhiteColor),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        const SizedBox(height: 70),
                        Responsive.isDesktop(context)
                            ? Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                      "assets/Rectangle 17.png",
                                      width: 339,
                                    ),
                                  ),
                                  const SizedBox(width: 50),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Service 'Shared IT director'",
                                          style: TextStyle(
                                              color: AppTheme.primaryBlueColor,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 1.0,
                                              height: 1.7,
                                              fontSize: 29,
                                              fontStyle: FontStyle.normal,
                                              fontFamily: "Cairo"),
                                        ),
                                        const SizedBox(height: 20),
                                        Text(
                                          "CIOforum also offers a shared IT Director, a Chief Information Officer as a service, an IT sounding board for organizations that are too small for a salaried IT Manager. CIOforum offers subscription forms with a variation in quarterly to weekly meetings where you benefit from rapid knowledge building about your organization via an experienced IT coach.",
                                          style: TextStyle(
                                              color: AppTheme.primaryBlackColor,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Cairo",
                                              letterSpacing: 1.0,
                                              height: 1.7,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 19),
                                        ),
                                        const SizedBox(height: 20),
                                        Container(
                                            height: 48,
                                            width: 141,
                                            decoration: BoxDecoration(
                                                color:
                                                    AppTheme.primaryBlueColor,
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                            child: Center(
                                              child: Text(
                                                "View More",
                                                style: TextStyle(
                                                    color: AppTheme
                                                        .primaryWhiteColor,
                                                    fontSize: 18,
                                                    fontFamily: "Cairo",
                                                    fontStyle: FontStyle.normal,
                                                    letterSpacing: 3),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Service 'Shared IT director'",
                                    style: TextStyle(
                                        color: AppTheme.primaryBlueColor,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Cairo"),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    "CIOforum also offers a shared IT Director, a Chief Information Officer as a service, an IT sounding board for organizations that are too small for a salaried IT Manager. CIOforum offers subscription forms with a variation in quarterly to weekly meetings where you benefit from rapid knowledge building about your organization via an experienced IT coach.",
                                    style: TextStyle(
                                      color: AppTheme.primaryBlackColor,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15,
                                      letterSpacing: .0,
                                      height: 1.7,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                      height: 42,
                                      width: 123,
                                      decoration: BoxDecoration(
                                          color: AppTheme.primaryBlueColor,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Center(
                                        child: Text(
                                          "View More",
                                          style: TextStyle(
                                              color: AppTheme.primaryWhiteColor,
                                              fontSize: 16,
                                              fontFamily: "Cairo",
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 3),
                                        ),
                                      )),
                                  const SizedBox(height: 30),
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        "assets/Rectangle 17.png",
                                        width: 400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        const SizedBox(height: 70),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Responsive.isDesktop(context)
                        ? const Color.fromRGBO(243, 248, 234, 1)
                        : Colors.transparent,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Center(
                          child: Center(
                            child: Text(
                              "Our latest news and updates",
                              style: TextStyle(
                                  color: AppTheme.primaryBlackColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize:
                                      Responsive.isDesktop(context) ? 30 : 20,
                                  fontFamily: "Cairo",
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:Responsive.isDesktop(context)? 130:30, right: Responsive.isDesktop(context)?130:30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  // height:  Responsive.isDesktop(context)?497:557,
                                  decoration: BoxDecoration(
                                      color: AppTheme.WhiteColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 250,
                                          // width: 400,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                topLeft: Radius.circular(10),
                                              ),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/Rectangle 22.png"),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Highly available internet re...",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 25,
                                                  color: AppTheme
                                                      .primaryBlackColor,
                                                  fontFamily: "Cairo",
                                                  fontStyle: FontStyle.normal,
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Text(
                                                "Exciting holiday",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 17,
                                                  fontFamily: "Cairo",
                                                  fontStyle: FontStyle.normal,
                                                  color:
                                                      AppTheme.primaryBlueColor,
                                                ),
                                              ),
                                              Responsive.isDesktop(context)
                                                  ? const SizedBox(height: 30)
                                                  : const SizedBox(height: 20),
                                              Text(
                                                "De kerstvakantieweken waren spannend voor de afdeling ICT, en daarmee voor al...",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                    fontFamily: "Cairo",
                                                    fontStyle: FontStyle.normal,
                                                    letterSpacing:
                                                        Responsive.isMobile(
                                                                context)
                                                            ? 0.0
                                                            : 1,
                                                    height: 1.7
                                                    // color: const Color.fromRGBO(50,59,75,1),
                                                    ),
                                              ),
                                              Text(
                                                "Read more",
                                                style: TextStyle(
                                                  color: AppTheme
                                                      .primaryGreenColor,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  fontFamily: "Cairo",
                                                  fontStyle: FontStyle.normal,
                                                ),
                                              ),
                                              Responsive.isDesktop(context)
                                                  ? const SizedBox(height: 50)
                                                  : const SizedBox(
                                                      height: 50,
                                                    ),
                                              Center(
                                                child: Text(
                                                  "REFERENCE - SOURCE: PUBLICATION OF CVO 'T GOOI",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize:
                                                        Responsive.isDesktop(
                                                                context)
                                                            ? 12
                                                            : 11,
                                                    fontFamily: "Cairo",
                                                    fontStyle: FontStyle.normal,
                                                    letterSpacing: 0.0,

                                                    // color: const Color.fromRGBO(50,59,75,1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Responsive.isDesktop(context)
                                  ? SizedBox(width: width * 0.03)
                                  : Container(),
                              Responsive.isDesktop(context)
                                  ? Expanded(
                                      child: Container(
                                        // height: 497,
                                        decoration: BoxDecoration(
                                            color: AppTheme.WhiteColor,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 250,
                                                // width: 340,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(10),
                                                      topLeft:
                                                          Radius.circular(10),
                                                    ),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            "assets/Rectangle 25.png"),
                                                        fit: BoxFit.cover)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    top: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "GDPR in childcare",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 25,
                                                        color: AppTheme
                                                            .primaryBlackColor,
                                                        fontFamily: "Cairo",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Text(
                                                      "What do you need to know about email?",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 17,
                                                        fontFamily: "Cairo",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        color: AppTheme
                                                            .primaryBlueColor,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 40),
                                                    const Text(
                                                      "The accompanying animation video of almost 2 minutes tells you what you can do wrong with...",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 15,
                                                        letterSpacing: 1.0,
                                                        height: 1.7,
                                                        fontFamily: "Cairo",
                                                        fontStyle:
                                                            FontStyle.normal,

                                                        // color: const Color.fromRGBO(50,59,75,1),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Read more",
                                                      style: TextStyle(
                                                        color: AppTheme
                                                            .primaryGreenColor,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 15,
                                                        fontFamily: "Cairo",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 20),
                                                    const Center(
                                                      child: Text(
                                                        "REFERENCE - SOURCE: PUBLICATION OF CVO 'T GOOI",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 12,
                                                          fontFamily: "Cairo",
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          // color: const Color.fromRGBO(50,59,75,1),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(),
                              Responsive.isDesktop(context)
                                  ? SizedBox(width: width * 0.03)
                                  : Container(),
                              Responsive.isDesktop(context)
                                  ? Expanded(
                                      child: Container(
                                        // height: 497,
                                        decoration: BoxDecoration(
                                            color: AppTheme.WhiteColor,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 250,
                                                // width: 340,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(10),
                                                      topLeft:
                                                          Radius.circular(10),
                                                    ),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            "assets/Rectangle 27.png"),
                                                        fit: BoxFit.cover)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    top: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Working online basics - Mi...",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 25,
                                                        color: AppTheme
                                                            .primaryBlackColor,
                                                        fontFamily: "Cairo",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Text(
                                                      "What do you need to know about working online?",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 17,
                                                        fontFamily: "Cairo",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        color: AppTheme
                                                            .primaryBlueColor,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 20),
                                                    const Text(
                                                      "Korte video-uitleg van noodzakelijke basisbegrippen over online werken met de computer, zoals een bestand,...",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 15,
                                                        letterSpacing: 1.0,
                                                        height: 1.7,
                                                        fontFamily: "Cairo",
                                                        fontStyle:
                                                            FontStyle.normal,

                                                        // color: const Color.fromRGBO(50,59,75,1),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Read more",
                                                      style: TextStyle(
                                                        color: AppTheme
                                                            .primaryGreenColor,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 15,
                                                        fontFamily: "Cairo",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 20),
                                                    const Center(
                                                      child: Text(
                                                        "REFERENCE - SOURCE: PUBLICATION OF CVO 'T GOOI",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 12,
                                                          fontFamily: "Cairo",
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          // color: const Color.fromRGBO(50,59,75,1),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Container(
                              height: 48,
                              width: 141,
                              decoration: BoxDecoration(
                                  color: AppTheme.primaryBlueColor,
                                  borderRadius: BorderRadius.circular(40)),
                              child: Center(
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                      color: AppTheme.primaryWhiteColor,
                                      fontSize: 18,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 3),
                                ),
                              )),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          // width: 1440,
                          //   width:double.infinity,
                          // height: Responsive.isDesktop(context) ? 444 : 1350,
                          width: MediaQuery.of(context).size.width,
                          color: const Color.fromRGBO(50, 59, 75, 1),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40,bottom: 40),
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
                                                  color:
                                                      Color.fromRGBO(225, 225, 225, 1),
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
                                        width:200,
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
                                                  color:
                                                      Color.fromRGBO(225, 225, 225, 1),
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
                                          width:200,
                                          margin: const EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "OTHERS LIKES",
                                              style: TextStyle(
                                                fontSize: 19,
                                                fontFamily: "Cairo",
                                                fontStyle:
                                                FontStyle.normal,
                                                fontWeight:
                                                FontWeight.w600,
                                                color: Color.fromRGBO(
                                                    139, 190, 43, 1),
                                              ),
                                            ),
                                            SizedBox(height: 70),
                                            Text(
                                              "Terms and Conditions",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    225, 225, 225, 1),
                                                fontWeight:
                                                FontWeight.w400,
                                                fontSize: 16,
                                                fontFamily: "Cairo",
                                                fontStyle:
                                                FontStyle.normal,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              "Cookies",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    225, 225, 225, 1),
                                                fontWeight:
                                                FontWeight.w400,
                                                fontSize: 16,
                                                fontFamily: "Cairo",
                                                fontStyle:
                                                FontStyle.normal,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              "Sitemap",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    225, 225, 225, 1),
                                                fontWeight:
                                                FontWeight.w400,
                                                fontSize: 16,
                                                fontFamily: "Cairo",
                                                fontStyle:
                                                FontStyle.normal,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              "FAQ",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    225, 225, 225, 1),
                                                fontWeight:
                                                FontWeight.w400,
                                                fontSize: 16,
                                                fontFamily: "Cairo",
                                                fontStyle:
                                                FontStyle.normal,
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
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "GET IN TOUCH",
                                              style: TextStyle(
                                                fontSize: 19,
                                                fontWeight:
                                                FontWeight.w600,
                                                color: Color.fromRGBO(
                                                    139, 190, 43, 1),
                                                fontFamily: "Cairo",
                                                fontStyle:
                                                FontStyle.normal,
                                              ),
                                            ),
                                            const SizedBox(height: 80),
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons
                                                      .add_location_outlined,
                                                  color: Color.fromRGBO(
                                                      139, 190, 43, 1),
                                                ),
                                                SizedBox(width: 20),
                                                Text(
                                                  "CIOFORUM",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        225, 225, 225, 1),
                                                    fontWeight:
                                                    FontWeight.w600,
                                                    fontSize: 19,
                                                    fontFamily: "Cairo",
                                                    fontStyle:
                                                    FontStyle.normal,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.end,
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
                                                          color: Color
                                                              .fromRGBO(
                                                              225,
                                                              225,
                                                              225,
                                                              1),
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                          fontSize: 16,
                                                          fontFamily:
                                                          "Cairo",
                                                          fontStyle:
                                                          FontStyle
                                                              .normal,
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
                                                  color: Color.fromRGBO(
                                                      139, 190, 43, 1),
                                                ),
                                                SizedBox(width: 20),
                                                Text(
                                                  "rzondervan@cioforum.nl",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        225, 225, 225, 1),
                                                    fontWeight:
                                                    FontWeight.w400,
                                                    fontSize: 16,
                                                    fontFamily: "Cairo",
                                                    fontStyle:
                                                    FontStyle.normal,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.call,
                                                  color: Color.fromRGBO(
                                                      139, 190, 43, 1),
                                                ),
                                                SizedBox(width: 20),
                                                Text(
                                                  "+31 6 20 707 442",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        225, 225, 225, 1),
                                                    fontWeight:
                                                    FontWeight.w400,
                                                    fontSize: 16,
                                                    fontFamily: "Cairo",
                                                    fontStyle:
                                                    FontStyle.normal,
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
                                Text("©2022 CIOFORUM | All Rights are Reserved",style: TextStyle(
                                    color: AppTheme.primaryWhiteColor,
                                    fontFamily: "Cairo",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal

                                ),)
                              ],
                            ),
                          ),

                          //   child: Padding(
                          //     padding: const EdgeInsets.only(top: 50, bottom: 50),
                          //     child: Column(
                          //       mainAxisSize: MainAxisSize.min,
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: [
                          //         Responsive.isDesktop(context)
                          //             ? Padding(
                          //               padding: const EdgeInsets.all(20.0),
                          //               child: Wrap(
                          //                 // direction: Axis.vertical,
                          //                 children: [
                          //                     Column(
                          //                       crossAxisAlignment:
                          //                           CrossAxisAlignment.start,
                          //                       children: [
                          //                         Row(
                          //                           children: [
                          //                             Image.asset(
                          //                                 "assets/image 1.png",
                          //                                 width: 33,
                          //                                 height: 40),
                          //                             const SizedBox(width: 10),
                          //                             const Text(
                          //                               "CIOFORUM",
                          //                               style: TextStyle(
                          //                                   color: Color.fromRGBO(
                          //                                       225, 225, 225, 1),
                          //                                   fontWeight:
                          //                                       FontWeight.w800,
                          //                                   fontSize: 34,
                          //                                   fontStyle:
                          //                                       FontStyle.normal,
                          //                                   fontFamily: "Montserrat"),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                         const SizedBox(height: 40),
                          //                         const Text(
                          //                           "CIOforum offers GDPR services and a\n${"Shared IT Director"}  without the overhead of\na salaried person. Make an appointment \nwithout obligation via",
                          //                           // textAlign: TextAlign.left,
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontStyle: FontStyle.normal,
                          //                             fontFamily: "Cairo",
                          //                             fontSize: 14,
                          //                             fontWeight: FontWeight.w400,
                          //                             letterSpacing: 1.0,
                          //                             height: 1.7,
                          //                           ),
                          //                         ),
                          //                         const Text(
                          //                             "rzondervan@cioforum.nl ",
                          //                             style: TextStyle(
                          //                               color: Color.fromRGBO(
                          //                                   225, 225, 225, 1),
                          //                               fontStyle: FontStyle.normal,
                          //                               fontFamily: "Cairo",
                          //                               fontSize: 14,
                          //                               fontWeight: FontWeight.w400,
                          //                               letterSpacing: 1.0,
                          //                               height: 1.7,
                          //                             )),
                          //                         const SizedBox(height: 30),
                          //                         Row(
                          //                           children: [
                          //                             Container(
                          //                               height: 44,
                          //                               width: 44,
                          //                               decoration: BoxDecoration(
                          //                                   borderRadius:
                          //                                       BorderRadius.circular(
                          //                                           40),
                          //                                   color:
                          //                                       const Color.fromRGBO(
                          //                                           0, 0, 0, 0.5),
                          //                                   image: const DecorationImage(
                          //                                       image: NetworkImage(
                          //                                           "assets/Vector.png"),
                          //                                       scale: 1.5)),
                          //                             ),
                          //                             const SizedBox(width: 10),
                          //                             Container(
                          //                               height: 44,
                          //                               width: 44,
                          //                               decoration: BoxDecoration(
                          //                                   borderRadius:
                          //                                       BorderRadius.circular(
                          //                                           40),
                          //                                   color:
                          //                                       const Color.fromRGBO(
                          //                                           0, 0, 0, 0.5),
                          //                                   image: const DecorationImage(
                          //                                       image: NetworkImage(
                          //                                           "assets/Vector.png"),
                          //                                       scale: 1.5)),
                          //                             ),
                          //                             const SizedBox(width: 10),
                          //                             Container(
                          //                               height: 44,
                          //                               width: 44,
                          //                               decoration: BoxDecoration(
                          //                                   borderRadius:
                          //                                       BorderRadius.circular(
                          //                                           40),
                          //                                   color:
                          //                                       const Color.fromRGBO(
                          //                                           0, 0, 0, 0.5),
                          //                                   image: const DecorationImage(
                          //                                       image: NetworkImage(
                          //                                           "assets/Vector (1).png"),
                          //                                       scale: 1.5)),
                          //                             ),
                          //                           ],
                          //                         )
                          //                       ],
                          //                     ),
                          //                     // SizedBox(width: width*0.06),
                          //                     Column(
                          //                         crossAxisAlignment:
                          //                             CrossAxisAlignment.start,
                          //                         children: const [
                          //                           Text(
                          //                             "QUICK LIKES",
                          //                             style: TextStyle(
                          //                               fontSize: 19,
                          //                               fontFamily: "Cairo",
                          //                               fontStyle:
                          //                                   FontStyle.normal,
                          //                               fontWeight:
                          //                                   FontWeight.w600,
                          //                               color: Color.fromRGBO(
                          //                                   139, 190, 43, 1),
                          //                             ),
                          //                           ),
                          //                           SizedBox(height: 70),
                          //                           Text(
                          //                             "Home",
                          //                             style: TextStyle(
                          //                                 color: Color.fromRGBO(
                          //                                     225, 225, 225, 1),
                          //                                 fontWeight:
                          //                                     FontWeight.w400,
                          //                                 fontFamily: "Cairo",
                          //                                 fontStyle:
                          //                                     FontStyle.normal,
                          //                                 fontSize: 16),
                          //                           ),
                          //                           SizedBox(height: 20),
                          //                           Text(
                          //                             "Products",
                          //                             style: TextStyle(
                          //                               color: Color.fromRGBO(
                          //                                   225, 225, 225, 1),
                          //                               fontWeight:
                          //                                   FontWeight.w400,
                          //                               fontSize: 16,
                          //                               fontFamily: "Cairo",
                          //                               fontStyle:
                          //                                   FontStyle.normal,
                          //                             ),
                          //                           ),
                          //                           SizedBox(height: 20),
                          //                           Text(
                          //                             "Blog",
                          //                             style: TextStyle(
                          //                               color: Color.fromRGBO(
                          //                                   225, 225, 225, 1),
                          //                               fontWeight:
                          //                                   FontWeight.w400,
                          //                               fontSize: 16,
                          //                               fontFamily: "Cairo",
                          //                               fontStyle:
                          //                                   FontStyle.normal,
                          //                             ),
                          //                           ),
                          //                           SizedBox(height: 20),
                          //                           Text(
                          //                             "About us",
                          //                             style: TextStyle(
                          //                               color: Color.fromRGBO(
                          //                                   225, 225, 225, 1),
                          //                               fontWeight:
                          //                                   FontWeight.w400,
                          //                               fontSize: 16,
                          //                               fontFamily: "Cairo",
                          //                               fontStyle:
                          //                                   FontStyle.normal,
                          //                             ),
                          //                           ),
                          //                           SizedBox(height: 20),
                          //                           Text(
                          //                             "Contact",
                          //                             style: TextStyle(
                          //                               color: Color.fromRGBO(
                          //                                   225, 225, 225, 1),
                          //                               fontWeight:
                          //                                   FontWeight.w400,
                          //                               fontSize: 16,
                          //                               fontFamily: "Cairo",
                          //                               fontStyle:
                          //                                   FontStyle.normal,
                          //                             ),
                          //                           ),
                          //                         ],
                          //                       ),
                          //                     // SizedBox(width: width*0.06),
                          //                     Column(
                          //                             crossAxisAlignment:
                          //                                 CrossAxisAlignment.start,
                          //                             children: const [
                          //                               Text(
                          //                                 "OTHERS LIKES",
                          //                                 style: TextStyle(
                          //                                   fontSize: 19,
                          //                                   fontFamily: "Cairo",
                          //                                   fontStyle:
                          //                                       FontStyle.normal,
                          //                                   fontWeight:
                          //                                       FontWeight.w600,
                          //                                   color: Color.fromRGBO(
                          //                                       139, 190, 43, 1),
                          //                                 ),
                          //                               ),
                          //                               SizedBox(height: 70),
                          //                               Text(
                          //                                 "Terms and Conditions",
                          //                                 style: TextStyle(
                          //                                   color: Color.fromRGBO(
                          //                                       225, 225, 225, 1),
                          //                                   fontWeight:
                          //                                       FontWeight.w400,
                          //                                   fontSize: 16,
                          //                                   fontFamily: "Cairo",
                          //                                   fontStyle:
                          //                                       FontStyle.normal,
                          //                                 ),
                          //                               ),
                          //                               SizedBox(height: 20),
                          //                               Text(
                          //                                 "Cookies",
                          //                                 style: TextStyle(
                          //                                   color: Color.fromRGBO(
                          //                                       225, 225, 225, 1),
                          //                                   fontWeight:
                          //                                       FontWeight.w400,
                          //                                   fontSize: 16,
                          //                                   fontFamily: "Cairo",
                          //                                   fontStyle:
                          //                                       FontStyle.normal,
                          //                                 ),
                          //                               ),
                          //                               SizedBox(height: 20),
                          //                               Text(
                          //                                 "Sitemap",
                          //                                 style: TextStyle(
                          //                                   color: Color.fromRGBO(
                          //                                       225, 225, 225, 1),
                          //                                   fontWeight:
                          //                                       FontWeight.w400,
                          //                                   fontSize: 16,
                          //                                   fontFamily: "Cairo",
                          //                                   fontStyle:
                          //                                       FontStyle.normal,
                          //                                 ),
                          //                               ),
                          //                               SizedBox(height: 20),
                          //                               Text(
                          //                                 "FAQ",
                          //                                 style: TextStyle(
                          //                                   color: Color.fromRGBO(
                          //                                       225, 225, 225, 1),
                          //                                   fontWeight:
                          //                                       FontWeight.w400,
                          //                                   fontSize: 16,
                          //                                   fontFamily: "Cairo",
                          //                                   fontStyle:
                          //                                       FontStyle.normal,
                          //                                 ),
                          //                               ),
                          //                               SizedBox(height: 40),
                          //                             ],
                          //                           ),
                          //                     // SizedBox(width: width*0.06),
                          //                     Column(
                          //                        crossAxisAlignment:
                          //                            CrossAxisAlignment.start,
                          //                        children: [
                          //                          const Text(
                          //                            "GET IN TOUCH",
                          //                            style: TextStyle(
                          //                              fontSize: 19,
                          //                              fontWeight:
                          //                                  FontWeight.w600,
                          //                              color: Color.fromRGBO(
                          //                                  139, 190, 43, 1),
                          //                              fontFamily: "Cairo",
                          //                              fontStyle:
                          //                                  FontStyle.normal,
                          //                            ),
                          //                          ),
                          //                          const SizedBox(height: 80),
                          //                          Row(
                          //                            children: const [
                          //                              Icon(
                          //                                Icons
                          //                                    .add_location_outlined,
                          //                                color: Color.fromRGBO(
                          //                                    139, 190, 43, 1),
                          //                              ),
                          //                              SizedBox(width: 20),
                          //                              Text(
                          //                                "CIOFORUM",
                          //                                style: TextStyle(
                          //                                  color: Color.fromRGBO(
                          //                                      225, 225, 225, 1),
                          //                                  fontWeight:
                          //                                      FontWeight.w600,
                          //                                  fontSize: 19,
                          //                                  fontFamily: "Cairo",
                          //                                  fontStyle:
                          //                                      FontStyle.normal,
                          //                                ),
                          //                              ),
                          //                            ],
                          //                          ),
                          //                          Column(
                          //                            crossAxisAlignment:
                          //                                CrossAxisAlignment.end,
                          //                            children: [
                          //                              const SizedBox(
                          //                                height: 10,
                          //                              ),
                          //                              Row(
                          //                                children: const [
                          //                                  SizedBox(width: 40),
                          //                                  Text(
                          //                                    "Buntlaan 11B 3941 MG Doorn\nNederland",
                          //                                    style: TextStyle(
                          //                                        color: Color
                          //                                            .fromRGBO(
                          //                                                225,
                          //                                                225,
                          //                                                225,
                          //                                                1),
                          //                                        fontWeight:
                          //                                            FontWeight
                          //                                                .w400,
                          //                                        fontSize: 16,
                          //                                        fontFamily:
                          //                                            "Cairo",
                          //                                        fontStyle:
                          //                                            FontStyle
                          //                                                .normal,
                          //                                        height: 1.5),
                          //                                  ),
                          //                                ],
                          //                              ),
                          //                            ],
                          //                          ),
                          //                          const SizedBox(height: 10),
                          //                          Row(
                          //                            children: const [
                          //                              Icon(
                          //                                Icons.email_outlined,
                          //                                color: Color.fromRGBO(
                          //                                    139, 190, 43, 1),
                          //                              ),
                          //                              SizedBox(width: 20),
                          //                              Text(
                          //                                "rzondervan@cioforum.nl",
                          //                                style: TextStyle(
                          //                                  color: Color.fromRGBO(
                          //                                      225, 225, 225, 1),
                          //                                  fontWeight:
                          //                                      FontWeight.w400,
                          //                                  fontSize: 16,
                          //                                  fontFamily: "Cairo",
                          //                                  fontStyle:
                          //                                      FontStyle.normal,
                          //                                ),
                          //                              ),
                          //                            ],
                          //                          ),
                          //                          const SizedBox(height: 20),
                          //                          Row(
                          //                            children: const [
                          //                              Icon(
                          //                                Icons.call,
                          //                                color: Color.fromRGBO(
                          //                                    139, 190, 43, 1),
                          //                              ),
                          //                              SizedBox(width: 20),
                          //                              Text(
                          //                                "+31 6 20 707 442",
                          //                                style: TextStyle(
                          //                                  color: Color.fromRGBO(
                          //                                      225, 225, 225, 1),
                          //                                  fontWeight:
                          //                                      FontWeight.w400,
                          //                                  fontSize: 16,
                          //                                  fontFamily: "Cairo",
                          //                                  fontStyle:
                          //                                      FontStyle.normal,
                          //                                ),
                          //                              ),
                          //                            ],
                          //                          ),
                          //                          const SizedBox(height: 10),
                          //                        ],
                          //                      ),
                          //                   ],
                          //                 ),
                          //             )
                          //             : Padding(
                          //                 padding: const EdgeInsets.only(
                          //                     left: 30, right: 30),
                          //                 child: Column(
                          //                   mainAxisAlignment:
                          //                       MainAxisAlignment.center,
                          //                   crossAxisAlignment:
                          //                       CrossAxisAlignment.start,
                          //                   children: [
                          //                     Column(
                          //                       crossAxisAlignment:
                          //                           CrossAxisAlignment.start,
                          //                       children: [
                          //                         Row(
                          //                           children: [
                          //                             Image.asset(
                          //                                 "assets/image 1.png",
                          //                                 width: 33,
                          //                                 height: 40),
                          //                             const SizedBox(width: 10),
                          //                             const Text(
                          //                               "CIOFORUM",
                          //                               style: TextStyle(
                          //                                   color: Color.fromRGBO(
                          //                                       225, 225, 225, 1),
                          //                                   fontWeight:
                          //                                       FontWeight.w800,
                          //                                   fontSize: 34,
                          //                                   fontStyle:
                          //                                       FontStyle.normal,
                          //                                   fontFamily:
                          //                                       "Montserrat"),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                         const SizedBox(height: 40),
                          //                         const Text(
                          //                           "CIOforum offers GDPR services and a ${"Shared IT Director"}  without the overhead of a salaried person. Make an appointment without obligation via",
                          //                           // textAlign: TextAlign.left,
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontStyle: FontStyle.normal,
                          //                             fontFamily: "Cairo",
                          //                             fontSize: 14,
                          //                             fontWeight: FontWeight.w400,
                          //                             letterSpacing: 1.0,
                          //                             height: 2,
                          //                           ),
                          //                         ),
                          //                         const Text(
                          //                             "rzondervan@cioforum.nl ",
                          //                             style: TextStyle(
                          //                               color: Color.fromRGBO(
                          //                                   225, 225, 225, 1),
                          //                               fontStyle: FontStyle.normal,
                          //                               fontFamily: "Cairo",
                          //                               fontSize: 14,
                          //                               fontWeight: FontWeight.w400,
                          //                               letterSpacing: 1.0,
                          //                               height: 1.7,
                          //                             )),
                          //                         const SizedBox(height: 30),
                          //                         Row(
                          //                           children: [
                          //                             Container(
                          //                               height: 44,
                          //                               width: 44,
                          //                               decoration: BoxDecoration(
                          //                                   borderRadius:
                          //                                       BorderRadius
                          //                                           .circular(40),
                          //                                   color: const Color
                          //                                           .fromRGBO(0, 0,
                          //                                       0, 0.5),
                          //                                   image: const DecorationImage(
                          //                                       image: AssetImage(
                          //                                           "assets/Vector.png"),
                          //                                       scale: 1.5)),
                          //                             ),
                          //                             const SizedBox(width: 10),
                          //                             Container(
                          //                               height: 44,
                          //                               width: 44,
                          //                               decoration: BoxDecoration(
                          //                                   borderRadius:
                          //                                       BorderRadius
                          //                                           .circular(40),
                          //                                   color: const Color
                          //                                           .fromRGBO(0, 0,
                          //                                       0, 0.5),
                          //                                   image: const DecorationImage(
                          //                                       image: AssetImage(
                          //                                           "assets/Vector.png"),
                          //                                       scale: 1.5)),
                          //                             ),
                          //                             const SizedBox(width: 10),
                          //                             Container(
                          //                               height: 44,
                          //                               width: 44,
                          //                               decoration: BoxDecoration(
                          //                                   borderRadius:
                          //                                       BorderRadius
                          //                                           .circular(40),
                          //                                   color: const Color
                          //                                           .fromRGBO(0, 0,
                          //                                       0, 0.5),
                          //                                   image: const DecorationImage(
                          //                                       image: AssetImage(
                          //                                           "assets/Vector (1).png"),
                          //                                       scale: 1.5)),
                          //                             ),
                          //                           ],
                          //                         )
                          //                       ],
                          //                     ),
                          //                     const SizedBox(height: 40),
                          //                     Column(
                          //                       crossAxisAlignment:
                          //                           CrossAxisAlignment.start,
                          //                       children: const [
                          //                         Text(
                          //                           "QUICK LIKES",
                          //                           style: TextStyle(
                          //                             fontSize: 19,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                             fontWeight: FontWeight.w600,
                          //                             color: Color.fromRGBO(
                          //                                 139, 190, 43, 1),
                          //                           ),
                          //                         ),
                          //                         SizedBox(height: 40),
                          //                         Text(
                          //                           "Home",
                          //                           style: TextStyle(
                          //                               color: Color.fromRGBO(
                          //                                   225, 225, 225, 1),
                          //                               fontWeight: FontWeight.w400,
                          //                               fontFamily: "Cairo",
                          //                               fontStyle: FontStyle.normal,
                          //                               fontSize: 16),
                          //                         ),
                          //                         SizedBox(height: 20),
                          //                         Text(
                          //                           "Products",
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontWeight: FontWeight.w400,
                          //                             fontSize: 16,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                           ),
                          //                         ),
                          //                         SizedBox(height: 20),
                          //                         Text(
                          //                           "Blog",
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontWeight: FontWeight.w400,
                          //                             fontSize: 16,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                           ),
                          //                         ),
                          //                         SizedBox(height: 20),
                          //                         Text(
                          //                           "About us",
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontWeight: FontWeight.w400,
                          //                             fontSize: 16,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                           ),
                          //                         ),
                          //                         SizedBox(height: 20),
                          //                         Text(
                          //                           "Contact",
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontWeight: FontWeight.w400,
                          //                             fontSize: 16,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                           ),
                          //                         ),
                          //                       ],
                          //                     ),
                          //                     const SizedBox(height: 40),
                          //                     Column(
                          //                       crossAxisAlignment:
                          //                           CrossAxisAlignment.start,
                          //                       children: const [
                          //                         Text(
                          //                           "OTHERS LIKES",
                          //                           style: TextStyle(
                          //                             fontSize: 19,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                             fontWeight: FontWeight.w600,
                          //                             color: Color.fromRGBO(
                          //                                 139, 190, 43, 1),
                          //                           ),
                          //                         ),
                          //                         SizedBox(height: 40),
                          //                         Text(
                          //                           "Terms and Conditions",
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontWeight: FontWeight.w400,
                          //                             fontSize: 16,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                           ),
                          //                         ),
                          //                         SizedBox(height: 20),
                          //                         Text(
                          //                           "Cookies",
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontWeight: FontWeight.w400,
                          //                             fontSize: 16,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                           ),
                          //                         ),
                          //                         SizedBox(height: 20),
                          //                         Text(
                          //                           "Sitemap",
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontWeight: FontWeight.w400,
                          //                             fontSize: 16,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                           ),
                          //                         ),
                          //                         SizedBox(height: 20),
                          //                         Text(
                          //                           "FAQ",
                          //                           style: TextStyle(
                          //                             color: Color.fromRGBO(
                          //                                 225, 225, 225, 1),
                          //                             fontWeight: FontWeight.w400,
                          //                             fontSize: 16,
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                           ),
                          //                         ),
                          //                         SizedBox(height: 40),
                          //                       ],
                          //                     ),
                          //                     const SizedBox(height: 40),
                          //                     Column(
                          //                       crossAxisAlignment:
                          //                           CrossAxisAlignment.start,
                          //                       children: [
                          //                         const Text(
                          //                           "GET IN TOUCH",
                          //                           style: TextStyle(
                          //                             fontSize: 19,
                          //                             fontWeight: FontWeight.w600,
                          //                             color: Color.fromRGBO(
                          //                                 139, 190, 43, 1),
                          //                             fontFamily: "Cairo",
                          //                             fontStyle: FontStyle.normal,
                          //                           ),
                          //                         ),
                          //                         const SizedBox(height: 40),
                          //                         Row(
                          //                           children: const [
                          //                             Icon(
                          //                               Icons.add_location_outlined,
                          //                               color: Color.fromRGBO(
                          //                                   139, 190, 43, 1),
                          //                             ),
                          //                             SizedBox(width: 20),
                          //                             Text(
                          //                               "CIOFORUM",
                          //                               style: TextStyle(
                          //                                 color: Color.fromRGBO(
                          //                                     225, 225, 225, 1),
                          //                                 fontWeight:
                          //                                     FontWeight.w600,
                          //                                 fontSize: 19,
                          //                                 fontFamily: "Cairo",
                          //                                 fontStyle:
                          //                                     FontStyle.normal,
                          //                               ),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                         Column(
                          //                           crossAxisAlignment:
                          //                               CrossAxisAlignment.end,
                          //                           children: [
                          //                             const SizedBox(
                          //                               height: 10,
                          //                             ),
                          //                             Row(
                          //                               children: const [
                          //                                 SizedBox(width: 40),
                          //                                 Text(
                          //                                   "Buntlaan 11B 3941 MG Doorn\nNederland",
                          //                                   style: TextStyle(
                          //                                       color:
                          //                                           Color.fromRGBO(
                          //                                               225,
                          //                                               225,
                          //                                               225,
                          //                                               1),
                          //                                       fontWeight:
                          //                                           FontWeight.w400,
                          //                                       fontSize: 16,
                          //                                       fontFamily: "Cairo",
                          //                                       fontStyle: FontStyle
                          //                                           .normal,
                          //                                       height: 1.5),
                          //                                 ),
                          //                               ],
                          //                             ),
                          //                           ],
                          //                         ),
                          //                         const SizedBox(height: 10),
                          //                         Row(
                          //                           children: const [
                          //                             Icon(
                          //                               Icons.email_outlined,
                          //                               color: Color.fromRGBO(
                          //                                   139, 190, 43, 1),
                          //                             ),
                          //                             SizedBox(width: 20),
                          //                             Text(
                          //                               "rzondervan@cioforum.nl",
                          //                               style: TextStyle(
                          //                                 color: Color.fromRGBO(
                          //                                     225, 225, 225, 1),
                          //                                 fontWeight:
                          //                                     FontWeight.w400,
                          //                                 fontSize: 16,
                          //                                 fontFamily: "Cairo",
                          //                                 fontStyle:
                          //                                     FontStyle.normal,
                          //                               ),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                         const SizedBox(height: 20),
                          //                         Row(
                          //                           children: const [
                          //                             Icon(
                          //                               Icons.call,
                          //                               color: Color.fromRGBO(
                          //                                   139, 190, 43, 1),
                          //                             ),
                          //                             SizedBox(width: 20),
                          //                             Text(
                          //                               "+31 6 20 707 442",
                          //                               style: TextStyle(
                          //                                 color: Color.fromRGBO(
                          //                                     225, 225, 225, 1),
                          //                                 fontWeight:
                          //                                     FontWeight.w400,
                          //                                 fontSize: 16,
                          //                                 fontFamily: "Cairo",
                          //                                 fontStyle:
                          //                                     FontStyle.normal,
                          //                               ),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                         const SizedBox(height: 10),
                          //                       ],
                          //                     )
                          //                   ],
                          //                 ),
                          //               ),
                          //         const Spacer(),
                          //         const Center(
                          //           child: Text(
                          //             "©2022 CIOFORUM | All Rights are Reserved",
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w400,
                          //               fontSize: 14,
                          //               color: Colors.white,
                          //               fontFamily: "Cairo",
                          //               fontStyle: FontStyle.normal,
                          //             ),
                          //           ),
                          //         )
                          //       ],
                          //     ),
                          //   ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Positioned(
              //   top: 150,
              //   left: 150,
              //   child: Container(
              //     width: 582,
              //     height:386,
              //     decoration: const BoxDecoration(
              //       color: Color.fromRGBO(243,248,234,1),
              //       borderRadius: const BorderRadius.only(
              //           bottomRight: const Radius.circular(150)
              //       ),),
              //     child: Padding(
              //       padding: const EdgeInsets.all(20),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children:  [
              //           const Text("Privacy and IT for",style: TextStyle(
              //               color: Color.fromRGBO(50,59,75,1),
              //               fontFamily: "Cairo",
              //               fontSize: 59,
              //               fontWeight: FontWeight.w700
              //           ),),
              //           const Text("education",style: TextStyle(
              //               color: Color.fromRGBO(139,190,43,1),
              //               fontSize: 59,
              //               fontFamily: "Cairo",
              //               fontStyle: FontStyle.normal,
              //               fontWeight: FontWeight.w700
              //           ),),
              //           const SizedBox(height: 40),
              //           const Text("Independent advice for directors and boards of education and childcare organizations.",style: TextStyle(
              //               color: Color.fromRGBO(50,59,75,1),
              //               fontWeight: FontWeight.w400,
              //               fontStyle: FontStyle.normal,
              //               fontFamily: "Cairo",
              //               fontSize: 24
              //
              //           ),),
              //           const SizedBox(height: 40),
              //           Container(
              //               height: 48,
              //               width: 141,
              //               decoration: BoxDecoration(
              //                   color: const Color.fromRGBO(50,59,75,1),
              //                   borderRadius: BorderRadius.circular(40)
              //               ),
              //               child: const Center(
              //                 child: Text("EXPLORE",style: const TextStyle(color: Color.fromRGBO(225, 225, 225, 1),
              //                 fontSize: 18, fontFamily: "Cairo",
              //                   fontWeight: FontWeight.w600,
              //                   fontStyle: FontStyle.normal,
              //                   letterSpacing: 2
              //
              //
              //
              //                 ),
              //                 ),
              //               )),
              //
              //
              //
              //         ],
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/footer_view.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/thememode/provider.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({required this.clickFooterCallback,required this.clickexplore,required this.viewmore});

  ClickFooterCallback clickFooterCallback;
  HomeExplorepage clickexplore;
  Homeviewmore viewmore;


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
    final themeChange = Provider.of<DarkThemeProvider>(context);


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
                        Image.asset("assets/Rectangle_2.png"),
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
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(243, 248, 234, 1),
                              //   color:Colors.green,
                              borderRadius: BorderRadius.only(
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
                                        color: Color.fromRGBO(50, 59, 75, 1),
                                        fontFamily: "Cairo",
                                        fontSize: Responsive.isDesktop(context)
                                            ? 59
                                            : 33.25,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "education",
                                    style: TextStyle(
                                        color: AppTheme(context).primaryGreenColor,
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
                                      color: Color.fromRGBO(50, 59, 75, 1),
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
                                  InkWell(
                                    onTap: (){
                                      widget.clickexplore.onpageExplore(true);
                                    },
                                    child: Container(
                                        height: Responsive.isDesktop(context)
                                            ? 48
                                            : 27.05,
                                        width: Responsive.isDesktop(context)
                                            ? 141
                                            : 79.47,
                                        decoration: BoxDecoration(
                                            color: AppTheme(context).primaryBlueColor,
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: Center(
                                          child: Text(
                                            "EXPLORE",
                                            style: TextStyle(
                                                color: AppTheme(context).primaryWhiteColor,
                                                fontSize:
                                                    Responsive.isDesktop(context)
                                                        ? 18
                                                        : 10.15,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 3),
                                          ),
                                        )),
                                  ),
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
                        right: Responsive.isDesktop(context) ? 150 : 30),
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
                                color: AppTheme(context).primaryBlueColor,
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
                          crossAxisAlignment:
                          CrossAxisAlignment.start,

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
                                              color: AppTheme(context).primaryBlueColor,
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
                                              color: AppTheme(context).primaryBlackColor,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 1.0,
                                              height: 1.7,
                                              fontSize: 19,
                                              fontFamily: "Cairo",
                                              fontStyle: FontStyle.normal),
                                        ),
                                        const SizedBox(height: 20),
                                        InkWell(
                                          hoverColor: Colors.transparent,
                                          onTap: (){

                                            showDialog(
                                              context: context,
                                                // barrierColor: themeChange.darkTheme?Colors.white:Colors.transparent,
                                                builder: (BuildContext context){
                                                return AlertDialog(
                                                  backgroundColor: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10)
                                                  ),

                                                  content: Container(
                                                    width: 1000,
                                                    color: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):Colors.white,
                                                    // width: width,
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment.topRight,
                                                          child: InkWell(
                                                            onTap: (){
                                                              Navigator.pop(context);},
                                                            child: Container(
                                                              height: 25,
                                                              width: 25,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),
                                                                border: Border.all(
                                                                    color: AppTheme(context).primaryGreenColor
                                                                ),

                                                              ),
                                                              child: Icon(Icons.clear,color: AppTheme(context).primaryGreenColor,),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Text(
                                                          "What is the importance of an external DPO?",
                                                          style: TextStyle(
                                                              color: AppTheme(context).primaryBlueColor,
                                                              fontWeight: FontWeight.w700,
                                                              letterSpacing: 1.0,
                                                              height: 1.7,
                                                              fontSize: Responsive.isDesktop(context)?31:25,
                                                              fontFamily: "Cairo",
                                                              fontStyle: FontStyle.normal),
                                                        ),
                                                        const SizedBox(height: 20),
                                                        Text(
                                                          "A DPO is mandatory for schools. GDPR fines are becoming more common and are not a good idea. Fortunately, small fines are now also being handed out, but unfortunately that has also happened for sending an email with recipients in the CC.",
                                                          style: TextStyle(
                                                              color: AppTheme(context).primaryBlackColor,
                                                              fontWeight: FontWeight.w500,
                                                              letterSpacing: 1.0,
                                                              height: 1.7,
                                                              fontSize: Responsive.isDesktop(context)?19:16,
                                                              fontFamily: "Cairo",
                                                              fontStyle: FontStyle.normal),
                                                        ),
                                                        const SizedBox(height: 20),
                                                        Text(
                                                          "De menselijke fout is niet uit te sluiten, en dan is het van belang dat je met een externe FG een privacyraamwerk en pdca-cyclus hebt ingevoerd waarmee je privacybewustzijn kunt aantonen. Dat voorkomt of verlaagd een boete.",
                                                          style: TextStyle(
                                                              color: AppTheme(context).primaryBlackColor,
                                                              fontWeight: FontWeight.w500,
                                                              letterSpacing: 1.0,
                                                              height: 1.7,
                                                              fontSize: Responsive.isDesktop(context)?19:16,
                                                              fontFamily: "Cairo",
                                                              fontStyle: FontStyle.normal),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                );


                                              }
                                            );
                                          },
                                          child: Container(
                                              height:
                                                  Responsive.isDesktop(context)
                                                      ? 48
                                                      : 45,
                                              width: Responsive.isDesktop(context)
                                                  ? 141
                                                  : 132,
                                              decoration: BoxDecoration(
                                                  color:themeChange.darkTheme?Colors.white:AppTheme(context).primaryBlueColor ,

                                                  borderRadius:
                                                      BorderRadius.circular(40)),
                                              child: Center(
                                                child: Text(
                                                  "View More",
                                                  style: TextStyle(
                                                      color:!themeChange.darkTheme?Color.fromRGBO(225, 225, 225, 1):Color.fromRGBO(50, 59, 75, 1) ,
                                                      fontSize: 18,
                                                      fontFamily: "Cairo",
                                                      fontStyle: FontStyle.normal,
                                                      letterSpacing: 3),
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 50),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          "assets/Rectangle_5.png",
                                          width: 339,
                                        ),
                                        Positioned(
                                          top: 80,
                                          left: 140,
                                          child: InkWell(
                                            onTap: ()async{
                                              final url="https://www.youtube.com/watch?v=jYsW1pF8x7I";
                                              if(await canLaunch(url)){
                                                await launch(url);
                                              }else {
                                                throw 'Could not launch $url';
                                              }
                                            },
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundColor:
                                                  AppTheme(context).primaryGreenColor,
                                              child: Icon(Icons.play_arrow,
                                                  color:
                                                      AppTheme(context).primaryWhiteColor),
                                            ),
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
                                   Text(
                                    "What is the importance of an external DPO?",
                                    style: TextStyle(
                                        // color: Color.fromRGBO(50, 59, 75, 1),
                                        color: themeChange.darkTheme?Colors.white:Color.fromRGBO(50, 59, 75, 1),
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
                                        color: themeChange.darkTheme?Colors.white:AppTheme(context).primaryBlackColor,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: .2,
                                        height: 1.7,
                                        fontSize: 15,
                                        fontFamily: "Cairo",
                                        fontStyle: FontStyle.normal),
                                  ),
                                  const SizedBox(height: 20),
                                  InkWell(
                                    hoverColor: Colors.transparent,
                                    onTap: (){
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              backgroundColor: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):Colors.white,

                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                              ),

                                              content: Container(
                                                width: 1000,
                                                color: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):Colors.white,

                                                // width: width,
                                                child: Expanded(
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment.topRight,
                                                        child: InkWell(
                                                          hoverColor: Colors.transparent,
                                                          onTap: (){
                                                            Navigator.pop(context);},
                                                          child: Container(
                                                            height: 25,
                                                            width: 25,
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(20),
                                                              border: Border.all(
                                                                  color: AppTheme(context).primaryGreenColor
                                                              ),

                                                            ),
                                                            child: Icon(Icons.clear,color: AppTheme(context).primaryGreenColor,),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 20),
                                                      Text(
                                                        "What is the importance of an external DPO?",
                                                        style: TextStyle(
                                                            // color: AppTheme(context).primaryBlueColor,
                                                            color: themeChange.darkTheme?Colors.white:AppTheme(context).primaryBlueColor,

                                                            fontWeight: FontWeight.w700,
                                                            letterSpacing: 1.0,
                                                            height: 1.7,
                                                            fontSize: Responsive.isDesktop(context)?31:25,
                                                            fontFamily: "Cairo",
                                                            fontStyle: FontStyle.normal),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      Text(
                                                        "A DPO is mandatory for schools. GDPR fines are becoming more common and are not a good idea. Fortunately, small fines are now also being handed out, but unfortunately that has also happened for sending an email with recipients in the CC.",
                                                        style: TextStyle(
                                                            color: themeChange.darkTheme?Colors.white:AppTheme(context).primaryBlackColor,
                                                            fontWeight: FontWeight.w500,
                                                            letterSpacing: 1.0,
                                                            height: 1.7,
                                                            fontSize: Responsive.isDesktop(context)?19:16,
                                                            fontFamily: "Cairo",
                                                            fontStyle: FontStyle.normal),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      Text(
                                                        "De menselijke fout is niet uit te sluiten, en dan is het van belang dat je met een externe FG een privacyraamwerk en pdca-cyclus hebt ingevoerd waarmee je privacybewustzijn kunt aantonen. Dat voorkomt of verlaagd een boete.",
                                                        style: TextStyle(
                                                            color: themeChange.darkTheme?Colors.white:AppTheme(context).primaryBlackColor,
                                                            fontWeight: FontWeight.w500,
                                                            letterSpacing: 1.0,
                                                            height: 1.7,
                                                            fontSize: Responsive.isDesktop(context)?19:16,
                                                            fontFamily: "Cairo",
                                                            fontStyle: FontStyle.normal),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );


                                          }
                                      );
                                    },
                                    child: Container(
                                        height: 45,
                                        width: 132,
                                        decoration: BoxDecoration(
                                            // color: AppTheme(context).primaryBlueColor,
                                            color:themeChange.darkTheme?Colors.white:AppTheme(context).primaryBlueColor ,

                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Center(
                                          child: Text(
                                            "View More",
                                            style: TextStyle(
                                                color:!themeChange.darkTheme?Color.fromRGBO(225, 225, 225, 1):Color.fromRGBO(50, 59, 75, 1) ,
                                                fontSize: 16,
                                                fontFamily: "Cairo",
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 3),
                                          ),
                                        )),
                                  ),
                                  const SizedBox(height: 30),
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Stack(
                                        children: [
                                          Image.asset("assets/Rectangle_5.png",
                                              width: 400),
                                          Positioned(
                                            top: 90,
                                            left: 160,
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundColor:
                                                  AppTheme(context).primaryGreenColor,
                                              child: Icon(Icons.play_arrow,
                                                  color: AppTheme(context).primaryWhiteColor),
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
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      "assets/Rectangle_17.png",
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
                                              color: AppTheme(context).primaryBlueColor,
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
                                              color: AppTheme(context).primaryBlueColor,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Cairo",
                                              letterSpacing: 1.0,
                                              height: 1.7,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 19),
                                        ),
                                        const SizedBox(height: 20),
                                        InkWell(
                                          hoverColor: Colors.transparent,
                                          onTap: (){
                                            showDialog(
                                                context: context,
                                                builder: (BuildContext context){
                                                  return AlertDialog(
                                                    backgroundColor: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10)
                                                    ),

                                                    content: Container(
                                                      width: 1000,
                                                            color: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):Colors.white,
                                                      // width: width,
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment.topRight,
                                                            child: InkWell(
                                                              hoverColor: Colors.transparent,

                                                              onTap: (){
                                                                Navigator.pop(context);},
                                                              child: Container(
                                                                height: 25,
                                                                width: 25,
                                                                decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius.circular(20),
                                                                  border: Border.all(
                                                                      color: AppTheme(context).primaryGreenColor
                                                                  ),

                                                                ),
                                                                child: Icon(Icons.clear,color: AppTheme(context).primaryGreenColor,),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(height: 20),
                                                          Text(
                                                            "Service 'Shared IT director'",
                                                            style: TextStyle(
                                                                color: AppTheme(context).primaryBlueColor,
                                                                fontWeight: FontWeight.w700,
                                                                letterSpacing: 1.0,
                                                                height: 1.7,
                                                                fontSize: Responsive.isDesktop(context)?31:25,
                                                                fontFamily: "Cairo",
                                                                fontStyle: FontStyle.normal),
                                                          ),
                                                          const SizedBox(height: 20),
                                                          Text(
                                                            "CIOforum also offers a shared IT Director, a Chief Information Officer as a service, an IT sounding board for organizations that are too small for a salaried IT Manager. CIOforum offers subscription forms with a variation in quarterly to weekly meetings where you benefit from rapid knowledge building about your organization via an experienced IT coach.",
                                                            style: TextStyle(
                                                                color: AppTheme(context).primaryBlackColor,
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: 1.0,
                                                                height: 1.7,
                                                                fontSize: Responsive.isDesktop(context)?19:16,
                                                                fontFamily: "Cairo",
                                                                fontStyle: FontStyle.normal),
                                                          ),
                                                          const SizedBox(height: 20),
                                                          Text(
                                                            "De menselijke fout is niet uit te sluiten, en dan is het van belang dat je met een externe FG een privacyraamwerk en pdca-cyclus hebt ingevoerd waarmee je privacybewustzijn kunt aantonen. Dat voorkomt of verlaagd een boete.",
                                                            style: TextStyle(
                                                                color: AppTheme(context).primaryBlackColor,
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: 1.0,
                                                                height: 1.7,
                                                                fontSize: Responsive.isDesktop(context)?19:16,
                                                                fontFamily: "Cairo",
                                                                fontStyle: FontStyle.normal),
                                                          ),

                                                        ],
                                                      ),
                                                    ),
                                                  );


                                                }
                                            );
                                          },
                                          child: Container(
                                              height: 48,
                                              width: 141,
                                              decoration: BoxDecoration(
                                                  color:themeChange.darkTheme?Colors.white:AppTheme(context).primaryBlueColor ,

                                                  borderRadius:
                                                      BorderRadius.circular(40)),
                                              child: Center(
                                                child: Text(
                                                  "View More",
                                                  style: TextStyle(
                                                      color:!themeChange.darkTheme?Color.fromRGBO(225, 225, 225, 1):Color.fromRGBO(50, 59, 75, 1) ,

                                                      fontSize: 18,
                                                      fontFamily: "Cairo",
                                                      fontStyle: FontStyle.normal,
                                                      letterSpacing: 3),
                                                ),
                                              )),
                                        ),
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
                                        color: AppTheme(context).primaryBlueColor,
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
                                      color: AppTheme(context).primaryBlackColor,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15,
                                      letterSpacing: .0,
                                      height: 1.7,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  InkWell(
                                    onTap: (){
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              backgroundColor: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):Colors.white,

                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                              ),

                                              content: Container(
                                                width: 1000,
                                                color: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):Colors.white,

                                                // width: width,
                                                child: Expanded(
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment.topRight,
                                                        child: InkWell(
                                                          onTap: (){
                                                            Navigator.pop(context);},
                                                          child: Container(
                                                            height: 25,
                                                            width: 25,
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(20),
                                                              border: Border.all(
                                                                  color: AppTheme(context).primaryGreenColor
                                                              ),

                                                            ),
                                                            child: Icon(Icons.clear,color: AppTheme(context).primaryGreenColor,),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 20),
                                                      Text(
                                                        "Service 'Shared IT director'",
                                                        style: TextStyle(
                                                            color: AppTheme(context).primaryBlueColor,
                                                            fontWeight: FontWeight.w700,
                                                            letterSpacing: 1.0,
                                                            height: 1.7,
                                                            fontSize: Responsive.isDesktop(context)?31:25,
                                                            fontFamily: "Cairo",
                                                            fontStyle: FontStyle.normal),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      Text(
                                                        "CIOforum also offers a shared IT Director, a Chief Information Officer as a service, an IT sounding board for organizations that are too small for a salaried IT Manager. CIOforum offers subscription forms with a variation in quarterly to weekly meetings where you benefit from rapid knowledge building about your organization via an experienced IT coach.",
                                                        style: TextStyle(
                                                            color: AppTheme(context).primaryBlackColor,
                                                            fontWeight: FontWeight.w500,
                                                            letterSpacing: 1.0,
                                                            height: 1.7,
                                                            fontSize: Responsive.isDesktop(context)?19:16,
                                                            fontFamily: "Cairo",
                                                            fontStyle: FontStyle.normal),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      Text(
                                                        "De menselijke fout is niet uit te sluiten, en dan is het van belang dat je met een externe FG een privacyraamwerk en pdca-cyclus hebt ingevoerd waarmee je privacybewustzijn kunt aantonen. Dat voorkomt of verlaagd een boete.",
                                                        style: TextStyle(
                                                            color: AppTheme(context).primaryBlackColor,
                                                            fontWeight: FontWeight.w500,
                                                            letterSpacing: 1.0,
                                                            height: 1.7,
                                                            fontSize: Responsive.isDesktop(context)?19:16,
                                                            fontFamily: "Cairo",
                                                            fontStyle: FontStyle.normal),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );


                                          }
                                      );
                                    },
                                    child: Container(
                                        height: 42,
                                        width: 123,
                                        decoration: BoxDecoration(
                                            color:themeChange.darkTheme?Colors.white:AppTheme(context).primaryBlueColor ,
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: Center(
                                          child: Text(
                                            "View More",
                                            style: TextStyle(
                                                color:!themeChange.darkTheme?Color.fromRGBO(225, 225, 225, 1):Color.fromRGBO(50, 59, 75, 1) ,
                                                fontSize: 16,
                                                fontFamily: "Cairo",
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 3),
                                          ),
                                        )),
                                  ),
                                  const SizedBox(height: 30),
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        "assets/Rectangle_17.png",
                                        width: 339,
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
                    color: !themeChange.darkTheme?(Responsive.isDesktop(context)
                        ? const Color.fromRGBO(243, 248, 234, 1)
                        : Colors.transparent):Colors.black,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Center(
                          child: Center(
                            child: Text(
                              "Our latest news and updates",
                              style: TextStyle(
                                  color: AppTheme(context).primaryBlackColor,
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
                                child: InkWell(
                                  onTap:()async{
                                    final url="https://timesofindia.indiatimes.com/news";
                                    if(await canLaunch(url)){
                                      await launch(url);
                                    }else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Container(
                                    // height:  Responsive.isDesktop(context)?497:557,
                                    decoration: BoxDecoration(
                                        color: AppTheme(context).WhiteColor,
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
                                                        "assets/Rectangle_22.png"),
                                                    fit: BoxFit.cover)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20, top: 10,bottom: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Highly available internet re...",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 25,
                                                    color: AppTheme(context).primaryBlackColor,
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
                                                        AppTheme(context).primaryBlueColor,
                                                  ),
                                                ),
                                                Responsive.isDesktop(context)
                                                    ? const SizedBox(height: 30)
                                                    : const SizedBox(height: 20),
                                                RichText(
                                                  text: TextSpan(
                                                      text:
                                                      "De kerstvakantieweken waren spannend voor de afdeling ICT, en daarmee voor al...",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 15,
                                                          fontFamily: "Cairo",
                                                          color: themeChange.darkTheme? Colors.white:Color.fromRGBO(50,59,75,1),

                                                          fontStyle: FontStyle.normal,
                                                          letterSpacing:
                                                          Responsive.isMobile(
                                                              context)
                                                              ? 0.0
                                                              : 1,
                                                          height: 1.7

                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text:
                                                          "Read more",
                                                          style: TextStyle(
                                                            color: AppTheme(context).primaryGreenColor,
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 15,
                                                            fontFamily: "Cairo",
                                                            fontStyle: FontStyle.normal,
                                                          ),
                                                        )
                                                      ]),
                                                ),
                                                // Text(
                                                //   "De kerstvakantieweken waren spannend voor de afdeling ICT, en daarmee voor al...",
                                                //   style: TextStyle(
                                                //       fontWeight: FontWeight.w400,
                                                //       fontSize: 15,
                                                //       fontFamily: "Cairo",
                                                //       fontStyle: FontStyle.normal,
                                                //       letterSpacing:
                                                //           Responsive.isMobile(
                                                //                   context)
                                                //               ? 0.0
                                                //               : 1,
                                                //       height: 1.7
                                                //
                                                //       // color: const Color.fromRGBO(50,59,75,1),
                                                //       ),
                                                // ),
                                                // Text(
                                                //   "Read more",
                                                //   style: TextStyle(
                                                //     color: AppTheme
                                                //         .primaryGreenColor,
                                                //     fontWeight: FontWeight.w400,
                                                //     fontSize: 15,
                                                //     fontFamily: "Cairo",
                                                //     fontStyle: FontStyle.normal,
                                                //   ),
                                                // ),
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
                              ),
                              Responsive.isDesktop(context)
                                  ? SizedBox(width: width * 0.03)
                                  : Container(),
                              Responsive.isDesktop(context)
                                  ? Expanded(
                                      child: InkWell(
                                        onTap:()async{
                                          final url="https://timesofindia.indiatimes.com/news";
                                          if(await canLaunch(url)){
                                            await launch(url);
                                          }else {
                                            throw 'Could not launch $url';
                                          }
                                        },
                                        child: Container(
                                          // height: 497,
                                          decoration: BoxDecoration(
                                              color: AppTheme(context).WhiteColor,
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
                                                          image: AssetImage(
                                                              "assets/Rectangle_25.png"),
                                                          fit: BoxFit.cover)),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 20,
                                                      right: 20,
                                                      bottom: 10,
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
                                                          color: AppTheme(context).primaryBlackColor,
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
                                                          color: AppTheme(context).primaryBlueColor,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 30),
                                                      RichText(
                                                        text: TextSpan(
                                                            text:
                                                            "The accompanying animation video of almost 2 minutes tells you what you can do wrong with...",
                                                            style:  TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                fontSize: 15,
                                                                fontFamily: "Cairo",
                                                                fontStyle: FontStyle.normal,
                                                                letterSpacing: 1.0,
                                                                height: 1.7,


                                                              color: themeChange.darkTheme? Colors.white:Color.fromRGBO(50,59,75,1),
                                                            ),
                                                            children: <TextSpan>[
                                                              TextSpan(
                                                                text:
                                                                "Read more",
                                                                style: TextStyle(
                                                                  color: AppTheme(context).primaryGreenColor,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontSize: 15,
                                                                  fontFamily: "Cairo",
                                                                  fontStyle: FontStyle.normal,
                                                                ),
                                                              )
                                                            ]),
                                                      ),

                                                      // const Text(
                                                      //   "The accompanying animation video of almost 2 minutes tells you what you can do wrong with...",
                                                      //   style: TextStyle(
                                                      //     fontWeight:
                                                      //         FontWeight.w400,
                                                      //     fontSize: 15,
                                                      //     letterSpacing: 1.0,
                                                      //     height: 1.7,
                                                      //     fontFamily: "Cairo",
                                                      //     fontStyle:
                                                      //         FontStyle.normal,
                                                      //
                                                      //     // color: const Color.fromRGBO(50,59,75,1),
                                                      //   ),
                                                      // ),
                                                      // Text(
                                                      //   "Read more",
                                                      //   style: TextStyle(
                                                      //     color: AppTheme
                                                      //         .primaryGreenColor,
                                                      //     fontWeight:
                                                      //         FontWeight.w400,
                                                      //     fontSize: 15,
                                                      //     fontFamily: "Cairo",
                                                      //     fontStyle:
                                                      //         FontStyle.normal,
                                                      //   ),
                                                      // ),
                                                      const SizedBox(height: 50),
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
                                      ),
                                    )
                                  : Container(),
                              Responsive.isDesktop(context)
                                  ? SizedBox(width: width * 0.03)
                                  : Container(),
                              Responsive.isDesktop(context)
                                  ? Expanded(
                                      child: InkWell(
                                        onTap:()async{
                                          final url="https://timesofindia.indiatimes.com/news";
                                          if(await canLaunch(url)){
                                            await launch(url);
                                          }else {
                                            throw 'Could not launch $url';
                                          }
                                        },
                                        child: Container(
                                          // height: 497,
                                          decoration: BoxDecoration(
                                              color: AppTheme(context).WhiteColor,
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
                                                          image: AssetImage(
                                                              "assets/Rectangle_27.png"),
                                                          fit: BoxFit.cover)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 20,
                                                      right: 20,
                                                      top: 10,bottom: 10),
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
                                                          color: AppTheme(context).primaryBlackColor,
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
                                                          color: AppTheme(context).primaryBlueColor,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      RichText(
                                                        text: TextSpan(
                                                            text:
                                                            "Korte video-uitleg van noodzakelijke basisbegrippen over online werken met de computer, zoals een bestand,...",
                                                            style:  TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                fontSize: 15,
                                                                fontFamily: "Cairo",
                                                                fontStyle: FontStyle.normal,
                                                                letterSpacing: 1.0,
                                                                height: 1.7,

                                                              color: themeChange.darkTheme? Colors.white:Color.fromRGBO(50,59,75,1),
                                                            ),
                                                            children: <TextSpan>[
                                                              TextSpan(
                                                                text:
                                                                "Read more",
                                                                style: TextStyle(
                                                                  color: AppTheme(context).primaryGreenColor,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontSize: 15,
                                                                  fontFamily: "Cairo",
                                                                  fontStyle: FontStyle.normal,
                                                                ),
                                                              )
                                                            ]),
                                                      ),

                                                      // const Text(
                                                      //   "Korte video-uitleg van noodzakelijke basisbegrippen over online werken met de computer, zoals een bestand,...",
                                                      //   style: TextStyle(
                                                      //     fontWeight:
                                                      //         FontWeight.w400,
                                                      //     fontSize: 15,
                                                      //     letterSpacing: 1.0,
                                                      //     height: 1.7,
                                                      //     fontFamily: "Cairo",
                                                      //     fontStyle:
                                                      //         FontStyle.normal,
                                                      //
                                                      //     // color: const Color.fromRGBO(50,59,75,1),
                                                      //   ),
                                                      // ),
                                                      // Text(
                                                      //   "Read more",
                                                      //   style: TextStyle(
                                                      //     color: AppTheme
                                                      //         .primaryGreenColor,
                                                      //     fontWeight:
                                                      //         FontWeight.w400,
                                                      //     fontSize: 15,
                                                      //     fontFamily: "Cairo",
                                                      //     fontStyle:
                                                      //         FontStyle.normal,
                                                      //   ),
                                                      // ),
                                                      const SizedBox(height: 50),
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
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          hoverColor: Colors.transparent,
                          onTap:(){
                            widget.viewmore.onpageview(true);

                          },
                          child: Center(
                            child: Container(
                                height: 48,
                                width: 141,
                                decoration: BoxDecoration(
                                    color:themeChange.darkTheme?Colors.white:AppTheme(context).primaryBlueColor ,
                                    borderRadius: BorderRadius.circular(40)),
                                child: Center(
                                  child: Text(
                                    "View More",
                                    style: TextStyle(
                                        color:!themeChange.darkTheme?Color.fromRGBO(225, 225, 225, 1):Color.fromRGBO(50, 59, 75, 1) ,
                                        fontSize: 18,
                                        fontFamily: "Cairo",
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 3),
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Footer1(context,widget.clickFooterCallback,)
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

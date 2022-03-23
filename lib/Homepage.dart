import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/screen/Home.dart';
import 'package:ciofroum_web/screen/about.dart';
import 'package:ciofroum_web/screen/contact.dart';
import 'package:ciofroum_web/screen/mission.dart';
import 'package:ciofroum_web/screen/news.dart';
import 'package:ciofroum_web/screen/products.dart';
import 'package:ciofroum_web/screen/reference.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

bool aboutMission = false;
bool aboutMission1 = false;

class _HomePageState extends State<HomeScreen>  implements ClickOpenCallback{
  bool isSwitched = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool homeTab = true;
  bool productTab = false;
  bool newsTab = false;
  bool aboutTab = false;
  bool contact = false;

  bool homeTabSelected = true;
  bool productTabSelected = false;
  bool newsTabSelected = false;
  bool aboutTabSelected = false;

  // bool homeTab = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: Responsive.isMobile(context)
            ? Drawer(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                          setState(() {
                            homeTabSelected=true;
                            productTabSelected=false;
                            newsTabSelected=false;
                            aboutTabSelected=false;
                            homeTab = true;
                            productTab = false;
                            newsTab = false;
                            aboutTab = false;
                          });
                          Navigator.pop(context);
                        },
                        child: Text("Home",
                            style: TextStyle(
                                color: homeTabSelected
                                    ? const Color.fromRGBO(139, 190, 43, 1)
                                    : const Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: homeTabSelected ? 15 : 18)),
                      ),
                      const SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                          setState(() {
                            homeTabSelected=false;
                            productTabSelected=true;
                            newsTabSelected=false;
                            aboutTabSelected=false;
                            homeTab = false;
                            productTab = true;
                            newsTab = false;
                            aboutTab = false;
                          });
                          Navigator.pop(context);
                        },
                        child: Text("Products",
                            style: TextStyle(
                                color: productTabSelected
                                    ? const Color.fromRGBO(139, 190, 43, 1)
                                    : const Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: productTabSelected ? 15 : 18)),
                      ),
                      const SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                          setState(() {
                            homeTabSelected=false;
                            productTabSelected=false;
                            newsTabSelected=true;
                            aboutTabSelected=false;
                            homeTab = false;
                            productTab = false;
                            newsTab = true;
                            aboutTab = false;
                          });
                          Navigator.pop(context);
                        },
                        child: Text("News",
                            style: TextStyle(
                                color: newsTabSelected
                                    ? const Color.fromRGBO(139, 190, 43, 1)
                                    : const Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: newsTabSelected ? 15 : 18)),
                      ),
                      const SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                          setState(() {
                            homeTabSelected=false;
                            productTabSelected=false;
                            newsTabSelected=false;
                            aboutTabSelected=true;
                            homeTab = false;
                            productTab = false;
                            newsTab = false;
                            aboutTab = true;
                          });
                          Navigator.pop(context);
                        },
                        child: Text("About",
                            style: TextStyle(
                                color: aboutTabSelected
                                    ? const Color.fromRGBO(139, 190, 43, 1)
                                    : const Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: aboutTabSelected ? 15 : 18)),
                      ),
                    ],
                  ),
                ),
              )
            : null,
        // appBar: AppBar(),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(112),
            // here the desired height
            child: Container(
              height: Responsive.isDesktop(context) ? height * 1 : 80,
              // height:MediaQuery.of(context).size.height*1,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Responsive.isDesktop(context)
                  SizedBox(
                    width: width * 0.10,
                  ),
                  // : Container(),
                  Image.asset("assets/image 1.png",
                      width: Responsive.isDesktop(context) ? 33 : 19,
                      height: Responsive.isDesktop(context) ? 40 : 23),
                  const SizedBox(width: 10),
                  Center(
                    child: Text(
                      "CIOFORUM",
                      style: TextStyle(
                          color: AppTheme.primaryBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: Responsive.isDesktop(context) ? 34 : 19.79,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Montserrat"),
                    ),
                  ),
                  Responsive.isDesktop(context)
                      ? const Spacer()
                      : const Spacer(),
                  // Responsive.isDesktop(context)
                  //     ? SizedBox(width: MediaQuery.of(context).size.width*0.03)
                  //     : Container(),
                  Responsive.isDesktop(context)
                      ? InkWell(
                          onTap: () {
                            // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                            setState(() {
                              homeTab = true;
                              productTab = false;
                              newsTab = false;
                              aboutTab = false;
                              contact=false;

                            });
                          },
                          child: Text("Home",
                              style: TextStyle(
                                  color: homeTab
                                      ? AppTheme.primaryGreenColor
                                      : AppTheme.primaryBlueColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: homeTab ? 15 : 18,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo")),
                        )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? SizedBox(width: width * 0.02)
                      : Container(),
                  Responsive.isDesktop(context)
                      ? InkWell(
                          onTap: () {
                            // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                            setState(() {
                              homeTab = false;
                              productTab = true;
                              newsTab = false;
                              aboutTab = false;
                              contact=false;

                            });
                          },
                          child: Text("Products",
                              style: TextStyle(
                                  color: productTab
                                      ? AppTheme.primaryGreenColor
                                      : AppTheme.primaryBlueColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: productTab ? 15 : 18,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo")),
                        )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? SizedBox(width: width * 0.02)
                      : Container(),
                  Responsive.isDesktop(context)
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              homeTab = false;
                              productTab = false;
                              newsTab = true;
                              aboutTab = false;
                              contact=false;

                            });
                          },
                          child: Text("News",
                              style: TextStyle(
                                  color: newsTab
                                      ? AppTheme.primaryGreenColor
                                      : AppTheme.primaryBlueColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: newsTab ? 15 : 18,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo")),
                        )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? SizedBox(width: width * 0.02)
                      : Container(),
                  Responsive.isDesktop(context)
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              homeTab = false;
                              productTab = false;
                              newsTab = false;
                              aboutTab = true;
                              contact=false;

                            });
                          },
                          child: Text("About",
                              style: TextStyle(
                                  color: aboutTab
                                      ? AppTheme.primaryGreenColor
                                      : AppTheme.primaryBlueColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: aboutTab ? 15 : 18,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo")),
                        )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? SizedBox(width: width * 0.03)
                      : Container(),
                  Responsive.isDesktop(context)
                      ? InkWell(
                    onTap: (){
                      setState(() {
                        homeTab = false;
                        productTab = false;
                        newsTab = false;
                        aboutTab = false;
                        contact=true;
                      });
                      },
                        child: Container(
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                                color: AppTheme.primaryBlueColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Text(
                                "Contact Us",
                                style: TextStyle(
                                    color: AppTheme.primaryWhiteColor,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            )),
                      )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? const SizedBox(width: 80)
                      : const SizedBox(width: 60),
                  homeTab
                      ? Image.asset(
                          "assets/sun 1.png",
                          height: 24,
                          width: 24,
                        )
                      : const SizedBox(
                          width: 20,
                        ),
                  // const Icon(
                  //   Icons.stream,
                  //   color: Color.fromRGBO(50, 59, 75, 1),
                  // ),
                  homeTab
                      ? Switch(
                          activeColor: AppTheme.primaryGreenColor,
                          inactiveThumbColor: AppTheme.primaryGreenColor,
                          inactiveTrackColor: Colors.grey.shade200,
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        )
                      : const SizedBox(width: 58),
                  Responsive.isDesktop(context)
                      ? const Spacer()
                      : const SizedBox(width: 50),
                  !Responsive.isDesktop(context)
                      ? InkWell(
                          onTap: () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                          child: Icon(
                            Icons.menu,
                            color: AppTheme.primaryBlackColor,
                            size: 30,
                          ))
                      : Container(),
                  const SizedBox(width: 10),
                ],
              ),
            )),
        body: homeTab
            ? const HomePage()
            : productTab
                ? const Product()
                : newsTab
                    ? const NewPage():contact?Contact()
                    : aboutTab
                        ? About(callback: this,)
                        : aboutMission
                            ?  Mission():aboutMission1?Reference()
                            : const IgnorePointer(),
      ),
    );
  }

  @override
  void onPageOpne(bool aboutMis, bool aboutMis1) {

    setState(() {
      homeTab = false;
      productTab = false;
      newsTab = false;
      aboutTab = false;
      aboutMission = aboutMis;
      aboutMission1 = aboutMis1;
    });

  }
}

class ClickOpenCallback{
  void onPageOpne(bool aboutMission,bool aboutMission1){}
}

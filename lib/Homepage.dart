import 'package:ciofroum/responsive.dart';
import 'package:ciofroum/screen/Home.dart';
import 'package:ciofroum/screen/about.dart';
import 'package:ciofroum/screen/news.dart';
import 'package:ciofroum/screen/products.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  bool isSwitched = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool homeTab = true;
  bool productTab = false;
  bool newsTab = false;
  bool aboutTab = false;

  // bool homeTab = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: Responsive.isMobile(context)
            ? Drawer(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children:  [
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                          setState(() {
                            homeTab = true;
                            productTab = false;
                            newsTab=false;
                            aboutTab=false;
                          });
                          Navigator.pop(context);

                        },
                        child: Text("Home",
                            style: TextStyle(
                                color: homeTab
                                    ? const Color.fromRGBO(139, 190, 43, 1)
                                    : const Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: homeTab?15:18)),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                          setState(() {
                            homeTab = false;
                            productTab = true;
                            newsTab=false;
                            aboutTab=false;

                          });
                          Navigator.pop(context);
                        },
                        child: Text("Products",
                            style: TextStyle(
                                color: productTab
                                    ? const Color.fromRGBO(139, 190, 43, 1)
                                    : const Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: productTab?15:18)),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                          setState(() {
                            homeTab = false;
                            productTab = false;
                            newsTab=true;
                            aboutTab=false;

                          });
                          Navigator.pop(context);
                        },
                        child: Text("News",
                            style: TextStyle(
                                color: newsTab
                                    ? const Color.fromRGBO(139, 190, 43, 1)
                                    : const Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: newsTab?15:18)),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                          setState(() {
                            homeTab = false;
                            productTab = false;
                            newsTab=false;
                            aboutTab=true;

                          });
                          Navigator.pop(context);
                        },
                        child: Text("About",
                            style: TextStyle(
                                color: aboutTab
                                    ? const Color.fromRGBO(139, 190, 43, 1)
                                    : const Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: aboutTab?15:18)),
                      ),
                    ],
                  ),
                ),
              )
            : null,
        // appBar: AppBar(),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(112.0),
            // here the desired height
            child: Container(
              height: Responsive.isDesktop(context) ? 112 : 80,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Responsive.isDesktop(context)
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.10,
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
                          color: const Color.fromRGBO(50, 59, 75, 1),
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
                              newsTab=false;
                              aboutTab=false;
                            });
                          },
                          child: Text("Home",
                              style: TextStyle(
                                  color: homeTab
                                      ? const Color.fromRGBO(139, 190, 43, 1)
                                      : const Color.fromRGBO(50, 59, 75, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: homeTab ? 15 : 18,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo")),
                        )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02)
                      : Container(),
                  Responsive.isDesktop(context)
                      ? InkWell(
                          onTap: () {
                            // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                            setState(() {
                              homeTab = false;
                              productTab = true;
                              newsTab=false;
                              aboutTab=false;

                            });
                          },
                          child: Text("Products",
                              style: TextStyle(
                                  color: productTab
                                      ? const Color.fromRGBO(139, 190, 43, 1)
                                      : const Color.fromRGBO(50, 59, 75, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: productTab ? 15 : 18,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo")),
                        )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02)
                      : Container(),
                  Responsive.isDesktop(context)
                      ?  InkWell(
                    onTap: (){
                      setState(() {
                        homeTab = false;
                        productTab = false;
                        newsTab=true;
                        aboutTab=false;

                      });
                    },
                    child: Text("News",
                            style: TextStyle(
                                color: newsTab?Color.fromRGBO(139, 190, 43, 1):Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: newsTab?15:18,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Cairo")),
                      )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02)
                      : Container(),
                  Responsive.isDesktop(context)
                      ?  InkWell(
                    onTap: (){
                      setState(() {
                        homeTab = false;
                        productTab = false;
                        newsTab=false;
                        aboutTab=true;

                      });

                    },
                        child: Text("About",
                            style: TextStyle(
                                color: aboutTab?Color.fromRGBO(139, 190, 43, 1):Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: aboutTab?15:18,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Cairo")),
                      )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03)
                      : Container(),
                  Responsive.isDesktop(context)
                      ? Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(50, 59, 75, 1),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Text(
                              "Contact Us",
                              style: TextStyle(
                                  color: Color.fromRGBO(225, 225, 225, 1),
                                  fontFamily: "Cairo",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            ),
                          ))
                      : Container(),
                  Responsive.isDesktop(context)
                      ? const SizedBox(width: 80)
                      : const SizedBox(width: 60),
                 homeTab? Image.asset("assets/sun 1.png",height: 24,width: 24,):SizedBox(width: 20,),
                  // const Icon(
                  //   Icons.stream,
                  //   color: Color.fromRGBO(50, 59, 75, 1),
                  // ),
                 homeTab? Switch(
                    activeColor: const Color.fromRGBO(139, 190, 43, 1),
                    inactiveThumbColor: const Color.fromRGBO(139, 190, 43, 1),
                    inactiveTrackColor: Colors.grey.shade200,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ):SizedBox(width:58),
                  Responsive.isDesktop(context)
                      ? const Spacer()
                      : const SizedBox(width: 70),
                  !Responsive.isDesktop(context)
                      ? InkWell(
                          onTap: () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                          child: const Icon(
                            Icons.menu,
                            color: Colors.black,
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
                ? const Product():newsTab?NewPage():aboutTab?About()
                : Container(),
      ),
    );
  }
}

import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/screen/Home.dart';
import 'package:ciofroum_web/screen/about.dart';
import 'package:ciofroum_web/screen/contact.dart';
import 'package:ciofroum_web/screen/cookies.dart';
import 'package:ciofroum_web/screen/faq.dart';
import 'package:ciofroum_web/screen/founder.dart';
import 'package:ciofroum_web/screen/mission.dart';
import 'package:ciofroum_web/screen/news.dart';
import 'package:ciofroum_web/screen/partner.dart';
import 'package:ciofroum_web/screen/privacy.dart';
import 'package:ciofroum_web/screen/products.dart';
import 'package:ciofroum_web/screen/reference.dart';
import 'package:ciofroum_web/screen/sitemap.dart';
import 'package:ciofroum_web/screen/termsandconditions.dart';
import 'package:ciofroum_web/thememode/provider.dart';
import 'package:ciofroum_web/widget/newsitempage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

bool aboutMission = false;
bool aboutMission1 = false;
bool aboutMission2 = false;
bool aboutMission3 = false;
bool product = false;
bool explore = false;
bool view = false;

class _HomePageState extends State<HomeScreen>
    implements
        ClickOpenCallback,
        ClickFooterCallback,
        ClickProductCallback,
        HomeExplorepage,
        SitemapClick,
        Homeviewmore {
  bool isSwitched = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool homeTab = true;
  bool productTab = false;
  bool newsTab = false;
  bool aboutTab = false;
  bool contact = false;
  bool termscondition = false;
  bool cookies = false;
  bool sitemap = false;
  bool faq = false;

  bool homeTabSelected = true;
  bool productTabSelected = false;
  bool newsTabSelected = false;
  bool aboutTabSelected = false;

  HoverInterface? hoverInterface;

  // bool homeTab = false;

  GlobalKey menuKey = GlobalKey();
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  showMenus(BuildContext context) async {
    final render = menuKey.currentContext!.findRenderObject() as RenderBox;
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
          render.localToGlobal(Offset.zero).dx,
          render.localToGlobal(Offset.zero).dy + 50,
          double.infinity,
          double.infinity),
      items: [
        PopupMenuItem(
          child: Text("Create a website"),
        ),
        PopupMenuItem(
          child: Text("Top Ms commericial management"),
        ),
        PopupMenuItem(
          child: Text("Mobile inventory application"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      endDrawer: Responsive.isMobile(context)
          ? Drawer(
              backgroundColor: themeChange.darkTheme
                  ? Color.fromRGBO(50, 59, 75, 1)
                  : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                        setState(() {
                          homeTabSelected = true;
                          productTabSelected = false;
                          newsTabSelected = false;
                          aboutTabSelected = false;
                          homeTab = true;
                          productTab = false;
                          newsTab = false;
                          aboutTab = false;
                          contact = false;
                        });
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Home",
                            style: TextStyle(
                                color: themeChange.darkTheme
                                    ? homeTabSelected
                                        ? Color.fromRGBO(139, 190, 43, 1)
                                        : Colors.white
                                    : homeTabSelected
                                        ? AppTheme(context).primaryGreenColor
                                        : AppTheme(context).primaryBlueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: homeTabSelected ? 15 : 18)),
                      ),
                    ),
                    // const SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                        setState(() {
                          homeTabSelected = false;
                          productTabSelected = true;
                          newsTabSelected = false;
                          aboutTabSelected = false;
                          homeTab = false;
                          productTab = true;
                          newsTab = false;
                          aboutTab = false;
                          contact = false;
                          product = false;
                        });
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Products",
                            style: TextStyle(
                                color: themeChange.darkTheme
                                    ? productTabSelected
                                        ? Color.fromRGBO(139, 190, 43, 1)
                                        : Colors.white
                                    : productTabSelected
                                        ? Color.fromRGBO(139, 190, 43, 1)
                                        : Color.fromRGBO(50, 59, 75, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: productTabSelected ? 15 : 18)),
                      ),
                    ),
                    // const SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                        setState(() {
                          homeTabSelected = false;
                          productTabSelected = false;
                          newsTabSelected = true;
                          aboutTabSelected = false;
                          homeTab = false;
                          productTab = false;
                          newsTab = true;
                          aboutTab = false;
                          contact = false;
                        });
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("News",
                            style: TextStyle(
                                color: themeChange.darkTheme
                                    ? newsTabSelected
                                        ? Color.fromRGBO(139, 190, 43, 1)
                                        : Colors.white
                                    : newsTabSelected
                                        ? AppTheme(context).primaryGreenColor
                                        : AppTheme(context).primaryBlueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: newsTabSelected ? 15 : 18)),
                      ),
                    ),
                    // const SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                        setState(() {
                          homeTabSelected = false;
                          productTabSelected = false;
                          newsTabSelected = false;
                          aboutTabSelected = true;
                          homeTab = false;
                          productTab = false;
                          newsTab = false;
                          aboutTab = true;
                          contact = false;
                        });
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("About",
                            style: TextStyle(
                                color: themeChange.darkTheme
                                    ? aboutTabSelected
                                        ? Color.fromRGBO(139, 190, 43, 1)
                                        : Colors.white
                                    : aboutTabSelected
                                        ? AppTheme(context).primaryGreenColor
                                        : AppTheme(context).primaryBlueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: aboutTabSelected ? 15 : 18)),
                      ),
                    ),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          homeTabSelected = false;
                          productTabSelected = false;
                          newsTabSelected = false;
                          aboutTabSelected = false;
                          contact = true;
                        });
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Contact Us",
                            style: TextStyle(
                                color: themeChange.darkTheme
                                    ? contact
                                        ? Color.fromRGBO(139, 190, 43, 1)
                                        : Colors.white
                                    : contact
                                        ? AppTheme(context).primaryGreenColor
                                        : AppTheme(context).primaryBlueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: contact ? 15 : 18)),
                      ),
                    )
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
                Image.asset("assets/image_1.png",
                    // color: Colors.transparent,
                    width: Responsive.isDesktop(context) ? 33 : 19,
                    height: Responsive.isDesktop(context) ? 40 : 23),
                const SizedBox(width: 10),
                Center(
                  child: Text(
                    "CIOFORUM",
                    style: TextStyle(
                        color: themeChange.darkTheme
                            ? Colors.white
                            : AppTheme(context).primaryBlueColor,
                        // color: isSwitched?AppTheme(context).primaryWhiteColor:AppTheme(context).primaryBlueColor,

                        fontWeight: FontWeight.bold,
                        fontSize: Responsive.isDesktop(context) ? 34 : 19.79,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Montserrat"),
                  ),
                ),
                Responsive.isDesktop(context) ? const Spacer() : const Spacer(),
                // Responsive.isDesktop(context)
                //     ? SizedBox(width: MediaQuery.of(context).size.width*0.03)
                //     : Container(),
                Responsive.isDesktop(context)
                    ? InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                          setState(() {
                            homeTabSelected = true;
                            productTabSelected = false;
                            newsTabSelected = false;
                            aboutTabSelected = false;
                            homeTab = true;
                            productTab = false;
                            newsTab = false;
                            aboutTab = false;
                            contact = false;
                            explore = false;
                            product = false;
                            view = false;
                          });
                        },
                        child: Text("Home",
                            style: TextStyle(
                                color: themeChange.darkTheme
                                    ? homeTabSelected
                                        ? AppTheme(context).primaryGreenColor
                                        : Colors.white
                                    : homeTabSelected
                                        ? AppTheme(context).primaryGreenColor
                                        : AppTheme(context).primaryBlueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: homeTabSelected ? 15 : 18,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Cairo")),
                      )
                    : Container(),
                Responsive.isDesktop(context)
                    ? SizedBox(width: width * 0.02)
                    : Container(),
                Responsive.isDesktop(context)
                    ? InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                          setState(() {
                            homeTabSelected = false;
                            productTabSelected = true;
                            newsTabSelected = false;
                            aboutTabSelected = false;
                            homeTab = false;
                            productTab = true;
                            newsTab = false;
                            aboutTab = false;
                            contact = false;
                            product = false;
                            view = false;
                          });
                        },
                        child: Text("Products",
                            style: TextStyle(
                                color: themeChange.darkTheme
                                    ? productTabSelected
                                        ? AppTheme(context).primaryGreenColor
                                        : Colors.white
                                    : productTabSelected
                                        ? AppTheme(context).primaryGreenColor
                                        : AppTheme(context).primaryBlueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: productTabSelected ? 15 : 18,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Cairo")),
                      )
                    : Container(),
                Responsive.isDesktop(context)
                    ? SizedBox(width: width * 0.02)
                    : Container(),
                Responsive.isDesktop(context)
                    ? InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            homeTabSelected = false;
                            productTabSelected = false;
                            newsTabSelected = true;
                            aboutTabSelected = false;
                            homeTab = false;
                            productTab = false;
                            newsTab = true;
                            aboutTab = false;
                            contact = false;
                          });
                        },
                        child: Text("News",
                            style: TextStyle(
                                color: themeChange.darkTheme
                                    ? newsTabSelected
                                        ? AppTheme(context).primaryGreenColor
                                        : Colors.white
                                    : newsTabSelected
                                        ? AppTheme(context).primaryGreenColor
                                        : AppTheme(context).primaryBlueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: newsTabSelected ? 15 : 18,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Cairo")),
                      )
                    : Container(),
                Responsive.isDesktop(context)
                    ? SizedBox(width: width * 0.02)
                    : Container(),
                Responsive.isDesktop(context)
                    ? InkWell(
                        hoverColor: Colors.transparent,
                        onHover: (_) {
                          showMenus(context);
                        },
                        onTap: () {
                          setState(() {
                            homeTabSelected = false;
                            productTabSelected = false;
                            newsTabSelected = false;
                            aboutTabSelected = true;
                            homeTab = false;
                            productTab = false;
                            newsTab = false;
                            aboutTab = true;
                            contact = false;
                          });
                        },
                        child: MouseRegion(
                          onHover: (event) {
                            showMenus(context);
                          },
                          child: Text("About",
                              style: TextStyle(
                                  color: themeChange.darkTheme
                                      ? aboutTabSelected
                                          ? AppTheme(context).primaryGreenColor
                                          : Colors.white
                                      : aboutTabSelected
                                          ? AppTheme(context).primaryGreenColor
                                          : AppTheme(context).primaryBlueColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: aboutTabSelected ? 15 : 18,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo")),
                        ))
                    : Container(),
                Responsive.isDesktop(context)
                    ? SizedBox(width: width * 0.03)
                    : Container(),
                Responsive.isDesktop(context)
                    ? InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            homeTabSelected = false;
                            productTabSelected = false;
                            newsTabSelected = false;
                            aboutTabSelected = false;
                            contact = true;
                            homeTab = false;
                          });
                        },
                        child: Container(
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                                // color: AppTheme(context).primaryBlueColor,
                                color: themeChange.darkTheme
                                    ? Colors.white
                                    : AppTheme(context).primaryBlueColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Text(
                                "Contact Us",
                                style: TextStyle(
                                    color: themeChange.darkTheme
                                        ? Color.fromRGBO(50, 59, 75, 1)
                                        : AppTheme(context).primaryWhiteColor,
                                    // color: AppTheme(context).primaryWhiteColor,
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
                        "assets/sun_1.png",
                        color: AppTheme(context).primaryBlueColor,
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
                        hoverColor: Colors.transparent,
                        activeColor: AppTheme(context).primaryGreenColor,
                        inactiveThumbColor: AppTheme(context).primaryGreenColor,
                        inactiveTrackColor: Colors.grey.shade200,
                        // value: isSwitched,
                        value: themeChange.darkTheme,
                        onChanged: (value) {
                          themeChange.darkTheme = value;
                          // setState(() {
                          //         isSwitched = value;
                          //       });
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
                          color: AppTheme(context).primaryBlackColor,
                          size: 30,
                        ))
                    : Container(),
                const SizedBox(width: 10),
              ],
            ),
          )),
      body: contact
          ? Contact(
              clickFooterCallback: this,
              sitemapClick: this,
            )
          : homeTab
              ? explore
                  ? Product(
                      clickFooterCallback: this,
                      callback: this,
                      callback1: this,
                      sitemapClick: this,
                    )
                  : HomePage(
                      clickFooterCallback: this,
                      clickexplore: this,
                      viewmore: this,
                    )
              : productTab
                  ? product
                      ? Privacy(clickFooterCallback: this)
                      : view
                          ? NewPage(
                              clickFooterCallback: this,
                              clickviewmore: this,
                              sitemapClick: this)
                          : Product(
                              clickFooterCallback: this,
                              callback: this,
                              callback1: this,
                              sitemapClick: this,
                            )
                  : newsTab
                      ? NewPage(
                          clickFooterCallback: this,
                          clickviewmore: this,
                          sitemapClick: this,
                        )
                      : aboutTab
                          ? About(
                              callback: this,
                              clickFooterCallback: this,
                              sitemapClick: this,
                            )
                          : aboutMission
                              ? Mission(
                                  clickFooterCallback: this,
                                  sitemapClick: this,
                                )
                              : aboutMission1
                                  ? Founder(
                                      clickFooterCallback: this,
                                      sitemapClick: this,
                                    )
                                  : aboutMission2
                                      ? Partner(
                                          clickFooterCallback: this,
                                          sitemapClick: this,
                                        )
                                      : aboutMission3
                                          ? Reference(
                                              clickFooterCallback: this,
                                              sitemapClick: this,
                                            )
                                          : termscondition
                                              ? TermsandConditions(
                                                  clickFooterCallback: this,
                                                  sitemapClick: this,
                                                )
                                              : cookies
                                                  ? Cookies(
                                                      clickFooterCallback: this,
                                                      sitemapClick: this,
                                                    )
                                                  : sitemap
                                                      ? SiteMape(
                                                          clickFooterCallback:
                                                              this,
                                                          sitemapClick: this,
                                                        )
                                                      : aboutTab
                                                          ? About(
                                                              callback: this,
                                                              clickFooterCallback:
                                                                  this,
                                                              sitemapClick:
                                                                  this,
                                                            )
                                                          : productTab
                                                              ? Product(
                                                                  clickFooterCallback:
                                                                      this,
                                                                  callback:
                                                                      this,
                                                                  callback1:
                                                                      this,
                                                                  sitemapClick:
                                                                      this,
                                                                )
                                                              : newsTab
                                                                  ? NewPage(
                                                                      clickFooterCallback:
                                                                          this,
                                                                      clickviewmore:
                                                                          this,
                                                                      sitemapClick:
                                                                          this)
                                                                  : contact
                                                                      ? Contact(
                                                                          clickFooterCallback:
                                                                              this,
                                                                          sitemapClick:
                                                                              this,
                                                                        )
                                                                      : aboutMission
                                                                          ? Mission(
                                                                              clickFooterCallback: this,
                                                                              sitemapClick: this,
                                                                            )
                                                                          : aboutMission1
                                                                              ? Founder(
                                                                                  clickFooterCallback: this,
                                                                                  sitemapClick: this,
                                                                                )
                                                                              : aboutMission2
                                                                                  ? Partner(clickFooterCallback: this, sitemapClick: this)
                                                                                  : aboutMission3
                                                                                      ? Reference(
                                                                                          clickFooterCallback: this,
                                                                                          sitemapClick: this,
                                                                                        )
                                                                                      : termscondition
                                                                                          ? TermsandConditions(
                                                                                              clickFooterCallback: this,
                                                                                              sitemapClick: this,
                                                                                            )
                                                                                          : cookies
                                                                                              ? Cookies(
                                                                                                  clickFooterCallback: this,
                                                                                                  sitemapClick: this,
                                                                                                )
                                                                                              : sitemap
                                                                                                  ? SiteMape(
                                                                                                      clickFooterCallback: this,
                                                                                                      sitemapClick: this,
                                                                                                    )
                                                                                                  : faq
                                                                                                      ? FAQ(
                                                                                                          clickFooterCallback: this,
                                                                                                          sitemapClick: this,
                                                                                                        )
                                                                                                      : faq
                                                                                                          ? FAQ(
                                                                                                              clickFooterCallback: this,
                                                                                                              sitemapClick: this,
                                                                                                            )
                                                                                                          : IgnorePointer(),
    ));
  }

  @override
  void onPageOpne(
      bool aboutMis, bool aboutMis1, bool aboutMis2, bool aboutMis3) {
    setState(() {
      homeTab = false;
      productTab = false;
      newsTab = false;
      aboutTab = false;
      aboutMission = aboutMis;
      aboutMission1 = aboutMis1;
      aboutMission2 = aboutMis2;
      aboutMission3 = aboutMis3;
    });
  }

  @override
  void onPageOpen(
      bool homeT,
      bool aboutT,
      bool newsT,
      bool productT,
      bool contactT,
      bool termsconditions1,
      bool cookies1,
      bool sitemap1,
      bool faq1) {
    print("gmfdvscx");
    setState(() {
      homeTab = homeT;
      if (homeT) {
        homeTabSelected = true;
        productTabSelected = false;
        newsTabSelected = false;
        aboutTabSelected = false;
      }

      aboutTab = aboutT;
      if (aboutT) {
        homeTabSelected = false;
        productTabSelected = false;
        newsTabSelected = false;
        aboutTabSelected = true;
      }
      newsTab = newsT;
      if (newsT) {
        homeTabSelected = false;
        productTabSelected = false;
        newsTabSelected = true;
        aboutTabSelected = false;
      }

      productTab = productT;

      if (productT) {
        homeTabSelected = false;
        productTabSelected = true;
        newsTabSelected = false;
        aboutTabSelected = false;
      }
      contact = contactT;
      if (contactT) {
        homeTabSelected = false;
        productTabSelected = false;
        newsTabSelected = false;
        aboutTabSelected = false;
      }
      termscondition = termsconditions1;
      if (termscondition) {
        homeTabSelected = false;
        productTabSelected = false;
        newsTabSelected = false;
        aboutTabSelected = false;
        homeTab = false;
        productTab = false;
        newsTab = false;
        aboutTab = false;
        contact = false;
        termscondition = true;
        cookies = false;
        sitemap = false;
        faq = false;
        aboutMission = false;
        aboutMission1 = false;
        aboutMission2 = false;
        aboutMission3 = false;
      }
      cookies = cookies1;
      if (cookies) {
        homeTabSelected = false;
        productTabSelected = false;
        newsTabSelected = false;
        aboutTabSelected = false;
        homeTab = false;
        productTab = false;
        newsTab = false;
        aboutTab = false;
        contact = false;
        termscondition = false;
        cookies = true;
        sitemap = false;
        faq = false;
        aboutMission = false;
        aboutMission1 = false;
        aboutMission2 = false;
        aboutMission3 = false;
      }
      sitemap = sitemap1;
      if (sitemap) {
        homeTabSelected = false;
        productTabSelected = false;
        newsTabSelected = false;
        aboutTabSelected = false;
        homeTab = false;
        productTab = false;
        newsTab = false;
        aboutTab = false;
        contact = false;
        termscondition = false;
        cookies = false;
        sitemap = true;
        faq = false;
        aboutMission = false;
        aboutMission1 = false;
        aboutMission2 = false;
        aboutMission3 = false;
      }
      faq = faq1;
      if (faq) {
        homeTabSelected = false;
        productTabSelected = false;
        newsTabSelected = false;
        aboutTabSelected = false;
        homeTab = false;
        productTab = false;
        newsTab = false;
        aboutTab = false;
        contact = false;
        termscondition = false;
        cookies = false;
        sitemap = false;
        faq = true;
        aboutMission = false;
        aboutMission1 = false;
        aboutMission2 = false;
        aboutMission3 = false;
      }
    });
  }

  @override
  void onPageProduct(bool productMis) {
    setState(() {
      homeTab = false;
      productTab = true;
      newsTab = false;
      aboutTab = false;
      product = productMis;
      // if(productMis){
    });
  }

  @override
  void onpageExplore(bool explore1) {
    // TODO: implement onpageExplore
    setState(() {
      homeTab = false;
      productTab = true;
      newsTab = false;
      aboutTab = false;
      explore = explore1;
      i(explore) {
        homeTabSelected = false;
        productTabSelected = true;
        newsTabSelected = false;
        aboutTabSelected = false;
      }
      // if(productMis){
    });
  }

  @override
  void onpageview(bool view1) {
    // TODO: implement onpageview
    setState(() {
      homeTab = false;
      productTab = true;
      newsTab = false;
      aboutTab = false;
      view = view1;
      i(view) {
        homeTabSelected = false;
        productTabSelected = false;
        newsTabSelected = true;
        aboutTabSelected = false;
      }
      // if(productMis){
    });
  }

  @override
  void onsitepage(
      bool product,
      bool news,
      bool about,
      bool contact1,
      bool mission,
      bool fouder,
      bool partners,
      bool reference,
      bool termsconditions,
      bool cookies1,
      bool sitemap1,
      bool faq1) {
    // TODO: implement onsitepage
    print("ghfnbvcvcv");
    setState(() {
    productTab = product;
    if(productTab){
      homeTabSelected = false;
      productTabSelected = true;
      newsTabSelected = false;
      aboutTabSelected = false;
    }
    newsTab = news;
    if(newsTab){
      homeTabSelected = false;
      productTabSelected = false;
      newsTabSelected = true;
      aboutTabSelected = false;
    }
    aboutTab = about;
    if(aboutTab){
      homeTabSelected = false;
      productTabSelected = false;
      newsTabSelected = false;
      aboutTabSelected = true;
    }
    contact = contact1;
    aboutMission = mission;
    aboutMission1 = fouder;
    aboutMission2 = partners;
    aboutMission3 = reference;
    termscondition = termsconditions;
    cookies = cookies1;
    sitemap = sitemap1;
    faq = faq1;
    });
  }
}

class ClickProductCallback {
  void onPageProduct(bool aboutMission) {}
}

class HomeExplorepage {
  void onpageExplore(bool explore) {}
}

class Homeviewmore {
  void onpageview(bool view) {}
}

class ClickOpenCallback {
  void onPageOpne(bool aboutMission, bool aboutMission1, bool aboutMission2,
      bool aboutMission3) {}
}

class ClickFooterCallback {
  void onPageOpen(
      bool aboutMission,
      bool aboutMission1,
      bool aboutMission2,
      bool aboutMission3,
      bool contact,
      bool termsccondition,
      bool cookies,
      bool sitemap,
      bool faq) {}
}

class SitemapClick {
  void onsitepage(
      bool product,
      bool news,
      bool about,
      bool contact,
      bool mission,
      bool fouder,
      bool partners,
      bool reference,
      bool termsconditions,
      bool cookies,
      bool sitemap,
      bool faq) {}
}

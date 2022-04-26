import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/screen/Home.dart';
import 'package:ciofroum_web/screen/about.dart';
import 'package:ciofroum_web/screen/contact.dart';
import 'package:ciofroum_web/screen/news.dart';
import 'package:ciofroum_web/screen/products.dart';
import 'package:ciofroum_web/thememode/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


PreferredSizeWidget appbar(BuildContext context,bool homeTabSelected,bool productTabSelected,bool newsTabSelected,bool aboutTabSelected,bool contact, GlobalKey<ScaffoldState> _scaffoldKey ,GlobalKey menuKey){
  final themeChange = Provider.of<DarkThemeProvider>(context);
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return PreferredSize(
      preferredSize: const Size.fromHeight(112),
      // here the desired height
      child: Container(
        height: Responsive.isDesktop(context) ? height * 1 : 80,
        // height:MediaQuery.of(context).size.height*1,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
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
                      Navigator.pushNamed(context,"/home");

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
                      // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
                      Navigator.pushNamed(context,"/products");
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
                      Navigator.pushNamed(context,"/news");
                      // Navigator.push(context,MaterialPageRoute(builder: (context)=>NewPage()));
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
                      // onHover: (_) {
                      //   showMenus(context);
                      // },
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>About()));
                        Navigator.pushNamed(context,"/about");


                      },
                      child: Container(
                        key: menuKey,
                        child: MouseRegion(
                          onHover: (event) {
                            showMenus(context,menuKey);
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
                        ),
                      ))
                      : Container(),
                  Responsive.isDesktop(context)
                      ? SizedBox(width: width * 0.03)
                      : Container(),
                  Responsive.isDesktop(context)
                      ? InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      // Navigator.push(context,MaterialPageRoute(builder: (context)=>Contact()));
                      Navigator.pushNamed(context,"/contact");
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
                      ? const SizedBox(width: 60)
                      : const SizedBox(width: 60),
                  // homeTabSelected
                       Image.asset(
                    "assets/sun_1.png",
                    color: AppTheme(context).primaryBlueColor,
                    height: 24,
                    width: 24,
                  ),
                  //     : const SizedBox(
                  //   width: 20,
                  // ),
                  // const Icon(
                  //   Icons.stream,
                  //   color: Color.fromRGBO(50, 59, 75, 1),
                  // ),
                  Switch(
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
                      // : const SizedBox(width: 58),
                ],
              ),
            ),

            // Spacer(),
            // Responsive.isDesktop(context)
            //     ? const Spacer()
            //     : const SizedBox(width: 50),
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
            const SizedBox(width: 20),
          ],
        ),
      ));
}
showMenus(BuildContext context,GlobalKey menuKey) async {
  final render = menuKey.currentContext!.findRenderObject() as RenderBox;
  await showMenu(
    context: context,
    color: AppTheme(context).primaryGreenColor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
    ),
    position: RelativeRect.fromLTRB(
        render.localToGlobal(Offset.zero).dx,
        render.localToGlobal(Offset.zero).dy + 50,
        double.infinity,
        double.infinity),
    items: [
      PopupMenuItem(

        child: InkWell(
          onTap:(){
            Navigator.pushNamed(context,"/mission");

          },
          child: Text("Our Mission",style: TextStyle(
              color: Color.fromRGBO(225, 225, 225, 1),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontFamily: "Cairo"
          ),),
        ),
      ),
      PopupMenuItem(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context,"/founder");
          },
          child: Text("Founder",style: TextStyle(
              color: Color.fromRGBO(225, 225, 225, 1),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontFamily: "Cairo"
          ),),
        ),
      ),
      PopupMenuItem(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context,"/partner");
          },
          child: Text("Partner",style: TextStyle(
              color: Color.fromRGBO(225, 225, 225, 1),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontFamily: "Cairo"
          ),),
        ),
      ),
      PopupMenuItem(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context,"/reference");
          },
          child: Text("Reference",style: TextStyle(
              color: Color.fromRGBO(225, 225, 225, 1),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontFamily: "Cairo"
          ),),
        ),
      ),
    ],
  );
}
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/screen/Home.dart';
import 'package:ciofroum_web/screen/about.dart';
import 'package:ciofroum_web/screen/contact.dart';
import 'package:ciofroum_web/screen/news.dart';
import 'package:ciofroum_web/screen/products.dart';
import 'package:ciofroum_web/thememode/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideDrawer extends StatefulWidget {

  SideDrawer({required this.context,required this.homeTabSelected,required this.productTabSelected,required this.newsTabSelected,required this.aboutTabSelected,required this.contact,required this.menuKey});
  BuildContext? context;
  bool? homeTabSelected;
  bool? productTabSelected;
  bool? newsTabSelected;
  bool? aboutTabSelected;
  bool? contact;
  late GlobalKey menuKey;


  @override
  _drawerState createState() => _drawerState(menuKey);
}

class _drawerState extends State<SideDrawer> {
  late GlobalKey menuKey;
  _drawerState(this.menuKey);
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Drawer(
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
                Navigator.pushNamed(context,"/home");

              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Home",
                    style: TextStyle(
                        color: themeChange.darkTheme
                            ? widget.homeTabSelected!
                            ? Color.fromRGBO(139, 190, 43, 1)
                            : Colors.white
                            : widget.homeTabSelected!
                            ? AppTheme(context).primaryGreenColor
                            : AppTheme(context).primaryBlueColor,
                        fontWeight: FontWeight.w400,
                        fontSize: widget.homeTabSelected! ? 15 : 18)),
              ),
            ),
            // const SizedBox(height: 30),
            InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                Navigator.pushNamed(context,"/products");

                // Navigator.push(context,MaterialPageRoute(builder: (context)=>Product(
                // )));
                // setState(() {
                //   homeTabSelected = false;
                //   productTabSelected = true;
                //   newsTabSelected = false;
                //   aboutTabSelected = false;
                //   homeTab = false;
                //   productTab = true;
                //   newsTab = false;
                //   aboutTab = false;
                //   contact = false;
                //   product = false;
                // });
                // Navigator.pop(context);

              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Products",
                    style: TextStyle(
                        color: themeChange.darkTheme
                            ? widget.productTabSelected!
                            ? Color.fromRGBO(139, 190, 43, 1)
                            : Colors.white
                            :widget. productTabSelected!
                            ? Color.fromRGBO(139, 190, 43, 1)
                            : Color.fromRGBO(50, 59, 75, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: widget.productTabSelected! ? 15 : 18)),
              ),
            ),
            // const SizedBox(height: 30),
            InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context)=>NewPage()));
                Navigator.pushNamed(context,"/news");

                // setState(() {
                //   homeTabSelected = false;
                //   productTabSelected = false;
                //   newsTabSelected = true;
                //   aboutTabSelected = false;
                //   contact=false;
                //
                // });
                // Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("News",
                    style: TextStyle(
                        color: themeChange.darkTheme
                            ? widget.newsTabSelected!
                            ? Color.fromRGBO(139, 190, 43, 1)
                            : Colors.white
                            : widget.newsTabSelected!
                            ? AppTheme(context).primaryGreenColor
                            : AppTheme(context).primaryBlueColor,
                        fontWeight: FontWeight.w400,
                        fontSize: widget.newsTabSelected! ? 15 : 18)),
              ),
            ),
            InkWell(
                hoverColor: Colors.transparent,

                onTap: () {
                  Navigator.pushNamed(context,"/about");
                  },
                child: Container(
                  key: menuKey,
                  child: MouseRegion(
                    onHover: (event) {
                      showMenus(context,menuKey);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("About",
                          style: TextStyle(
                              color: themeChange.darkTheme
                                  ? widget.aboutTabSelected!
                                  ? Color.fromRGBO(139, 190, 43, 1)
                                  : Colors.white
                                  : widget.aboutTabSelected!
                                  ? AppTheme(context).primaryGreenColor
                                  : AppTheme(context).primaryBlueColor,
                              fontWeight: FontWeight.w400,
                              fontSize: widget.aboutTabSelected! ? 15 : 18)
                      ),
                    ),
                  ),
                )),
            // const SizedBox(height: 30),
        //     InkWell(
        //       hoverColor: Colors.transparent,
        //       onTap: () {
        // Navigator.pushNamed(context,"/about");
        //         // setState(() {
        //         //   homeTabSelected = false;
        //         //   productTabSelected = false;
        //         //   newsTabSelected = false;
        //         //   aboutTabSelected = true;
        //         //   contact=false;
        //         //
        //         // });
        //         // Navigator.pop(context);
        //       },
        //       child: Padding(
        //         padding: const EdgeInsets.all(15.0),
        //         child: Text("About",
        //             style: TextStyle(
        //                 color: themeChange.darkTheme
        //                     ? widget.aboutTabSelected!
        //                     ? Color.fromRGBO(139, 190, 43, 1)
        //                     : Colors.white
        //                     : widget.aboutTabSelected!
        //                     ? AppTheme(context).primaryGreenColor
        //                     : AppTheme(context).primaryBlueColor,
        //                 fontWeight: FontWeight.w400,
        //                 fontSize: widget.aboutTabSelected! ? 15 : 18)
        //         ),
        //       ),
        //     ),
            InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                Navigator.pushNamed(context,"/contact");

                // setState(() {
                //   homeTabSelected = false;
                //   productTabSelected = false;
                //   newsTabSelected = false;
                //   aboutTabSelected = false;
                //   contact=false;
                //
                // });
                // Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Contact Us",
                    style: TextStyle(
                        color: themeChange.darkTheme
                            ? widget.contact!
                            ? Color.fromRGBO(139, 190, 43, 1)
                            : Colors.white
                            : widget.contact!
                            ? AppTheme(context).primaryGreenColor
                            : AppTheme(context).primaryBlueColor,
                        fontWeight: FontWeight.w400,
                        fontSize: widget.contact! ? 15 : 18)),
              ),
            )
          ],
        ),
      ),
    );
  }
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

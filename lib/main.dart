
import 'package:ciofroum_web/Homepage.dart';
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
import 'package:ciofroum_web/thememode/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()async{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
        create: (_) {
          return themeChangeProvider;
        },
        child: Consumer<DarkThemeProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/home':(context)=> HomePage(),
                '/products':(context)=> Product(),
                '/news':(context)=> NewPage(),
                '/about':(context)=> About(),
                '/contact':(context)=> Contact(),
                '/mission':(context)=> Mission(),
                '/founder':(context)=> Founder(),
                '/partner':(context)=> Partner(),
                '/reference':(context)=> Reference(),
                '/terms&conditions':(context)=> TermsandConditions(),
                '/cookies':(context)=> Cookies(),
                '/sitemap':(context)=> SiteMape(),
                '/faq':(context)=> FAQ(),
              },
              theme: Styles.themeData(themeChangeProvider.darkTheme, context),
              home: HomePage(),

            );
          },
        ),);
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       // theme: ThemeData(),
  //       // darkTheme: ThemeData.dark(),
  //       theme: Styles.themeData(themeChangeProvider.darkTheme, context),
  //
  //       // themeMode: ThemeMode.light,
  //       home: HomeScreen()
  //
  //   );
  // }


}



import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/screen/contact.dart';
import 'package:ciofroum_web/screen/partner.dart';
import 'package:ciofroum_web/screen/privacy.dart';
import 'package:ciofroum_web/screen/reference.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'dart:html';

import 'package:flutter/material.dart';

void main()async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      themeMode: ThemeMode.light,
      home: HomeScreen(),

    );
  }
}

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: Center(
//           child: MyStatefulWidget(),
//         ),
//       ),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   GlobalKey menuKey = GlobalKey();
//
//   showMenus(BuildContext context) async {
//     final render = menuKey.currentContext!.findRenderObject() as RenderBox;
//     await showMenu(
//       context: context,
//       position: RelativeRect.fromLTRB(
//           render.localToGlobal(Offset.zero).dx,
//           render.localToGlobal(Offset.zero).dy + 50,
//           double.infinity,
//           double.infinity),
//       items: [
//         PopupMenuItem(
//           child: Text("Create a website"),
//         ),
//         PopupMenuItem(
//           child: Text("Top Ms commericial management"),
//         ),
//         PopupMenuItem(
//           child: Text("Mobile inventory application"),
//         ),
//       ],
//     );
//   }
//
//   bool showMenuPop= false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       key: menuKey,
//       color: Colors.lightBlueAccent,
//       constraints: BoxConstraints(
//         minWidth: 100,
//         minHeight: 50,
//       ),
//       child: MouseRegion(
//         onHover: (event) {
//           if(!showMenuPop){
//             showMenuPop = true;
//             showMenus(context);
//           }else {
//             showMenuPop = false;
//
//           }
//           },
//         child: Text('Solutions'),
//       ),
//     );
//   }
// }
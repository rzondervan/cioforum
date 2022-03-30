import 'dart:js';

import 'package:ciofroum_web/thememode/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


 class  AppTheme{

  final BuildContext context;
  AppTheme(this.context);

  DarkThemeProvider get themeChange=>Provider.of<DarkThemeProvider>(context);

// colors
   Color get primaryGreenColor => Color.fromRGBO(139, 190, 43, 1);
   Color get primaryWhiteColor =>themeChange.darkTheme? Color.fromRGBO(50, 59, 75, 1):Color.fromRGBO(225, 225, 225, 1);
   Color get primaryBlueColor => themeChange.darkTheme?Colors.white:Color.fromRGBO(50, 59, 75, 1);
   Color get greenlightColor => themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1):Color.fromRGBO(238, 244, 210, 1);
   Color get lightyellowColor => Color.fromRGBO(245, 249, 236, 1);
   Color get lightnumberColor => Color.fromRGBO(69, 96, 19, 1);
   Color get greyColor => Color.fromRGBO(216, 216, 216, 1);
   Color get primaryBlackColor => themeChange.darkTheme? Color.fromRGBO(225, 225, 225, 1):Colors.black;
   Color get WhiteColor => themeChange.darkTheme? Color.fromRGBO(50, 59, 75, 1):Colors.white;

}
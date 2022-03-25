import 'dart:async';

import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/footer_view.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:ciofroum_web/widget/google_map.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  Contact({required this.clickFooterCallback});

  ClickFooterCallback clickFooterCallback;
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  // Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height:height*0.2,
                width: double.infinity,
                color: AppTheme.primaryBlueColor,
                child: Center(
                  child: Text("Contact Us",style: TextStyle(
                      color: AppTheme.primaryWhiteColor,
                      fontFamily: "Cairo",
                      fontSize: width<600?30:45,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal
                  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: Responsive.isDesktop(context)?130:20,right: Responsive.isDesktop(context)?130:20,top: 50,bottom: 50),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: AppTheme.WhiteColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height:height*0.5,
                        width: width,
                        color: Colors.red,
                        // child: getMap()
                        // child: const GoogleMap(
                        //   mapType: MapType.normal,
                        //   // zoomControlsEnabled: false,
                        //   initialCameraPosition:  CameraPosition(target: const LatLng(30.7238206,76.6339858), zoom: 15),
                        //   // onMapCreated: (GoogleMapController controller) {
                        //   //   _controller.complete(controller);
                        //   // },
                        // ),
                      ),
                      Container(
                        // height:height*0.3,
                        width: width,

                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("CIOforum",style: TextStyle(
                                  color: AppTheme.primaryBlackColor,
                                  fontFamily: "Cairo",
                                  fontSize: width<600?18:32,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal
                              ),),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Buntlaan 11B3941 MG Doorn Nederland",style: TextStyle(
                                            color: AppTheme.primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: width<600?16:24,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal
                                        ),),
                                        SizedBox(height: 20),
                                        Text("Kvk: 62420186",style: TextStyle(
                                            color: AppTheme.primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: width<600?16:24,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: Responsive.isDesktop(context)? width*0.05:width*0.02),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children:  [
                                            Icon(
                                              Icons.email_outlined,size: 20,
                                              color: Color.fromRGBO(
                                                  139, 190, 43, 1),
                                            ),
                                            SizedBox(width: 20),
                                            Expanded(
                                              child: Text(
                                                "rzondervan@cioforum.nl",
                                                style: TextStyle(
                                                    color: AppTheme.primaryBlueColor,
                                                    fontFamily: "Cairo",
                                                    fontSize: width<600?16:24,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children:  [
                                            Icon(
                                              Icons.call,size: 20,
                                              color: Color.fromRGBO(
                                                  139, 190, 43, 1),
                                            ),
                                            SizedBox(width: 20),
                                            Text(
                                              "+31 6 20 707 442",
                                              style: TextStyle(
                                                  color: AppTheme.primaryBlueColor,
                                                  fontFamily: "Cairo",
                                                  fontSize: width<600?16:24,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                ),
              ),
              SizedBox(height: 20),
              Footer1(context,widget.clickFooterCallback)


            ],
          ),
        ),
      ),
    );
  }
}

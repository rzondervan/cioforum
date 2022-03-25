import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget Footer1(BuildContext context,ClickFooterCallback clickFooterCallback){
  Future<void> _makePhoneCall(String Url)async{
    if(await canLaunch(Url)){
      await launch(Url);
    }
    else{
      throw "Could not launch $Url";
    }
  }
  _launchEmail() async{
    launch(" mailto:rzondervan@cioforum.nl.org");
  }
  return   Container(
    // width: 1440,
    //   width:double.infinity,
    // height: Responsive.isDesktop(context) ? 444 : 1350,
    width: MediaQuery.of(context).size.width,
    color: const Color.fromRGBO(50, 59, 75, 1),
    child: Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 40),
      child: Column(
        children: [
          Center(
            child: Wrap(
              children: [
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/image_1.png",
                              width: 33, height: 40),
                          const SizedBox(width: 10),
                          const Text(
                            "CIOFORUM",
                            style: TextStyle(
                                color: Color.fromRGBO(
                                    225, 225, 225, 1),
                                fontWeight: FontWeight.w800,
                                fontSize: 34,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "CIOforum offers GDPR services and a hared IT Director without the overhead of a salaried person. Make an appointment without obligation via",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(225, 225, 225, 1),
                          fontStyle: FontStyle.normal,
                          fontFamily: "Cairo",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                          height: 1.7,
                        ),
                      ),
                      const Text("rzondervan@cioforum.nl ",
                          style: TextStyle(
                            color:
                            Color.fromRGBO(225, 225, 225, 1),
                            fontStyle: FontStyle.normal,
                            fontFamily: "Cairo",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0,
                            height: 1.7,
                          )),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          InkWell(
                            onTap:()async{
                              final url="https://www.facebook.com/cioforum.nl";
                              if(await canLaunch(url)){
                                await launch(url);
                              }else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(40),
                                  color: const Color.fromRGBO(
                                      0, 0, 0, 0.5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/Vector.png"),
                                      scale: 1.5)),
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap:()async{
                              final url="https://www.linkedin.com/signup/cold-join?session_redirect=https%3A%2F%2Fwww%2Elinkedin%2Ecom%2Fgroups%2F8531773%2Fprofile&trk=login_reg_redirect";
                              if(await canLaunch(url)){
                                await launch(url);
                              }else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(40),
                                  color: const Color.fromRGBO(
                                      0, 0, 0, 0.5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/Group_4.png"),
                                      scale: 1.8)),
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap:()async{
                              final url="https://twitter.com/cioforum_nl";
                              if(await canLaunch(url)){
                                await launch(url);
                              }else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(40),
                                  color: const Color.fromRGBO(
                                      0, 0, 0, 0.5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/Vector_(1).png"),
                                      scale: 1.5)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // SizedBox(width: 20),
                Container(
                  width:200,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text(
                        "QUICK LIKES",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(139, 190, 43, 1),
                        ),
                      ),
                      const SizedBox(height: 65),
                      InkWell(
                        onTap: (){
                          clickFooterCallback.onPageOpen(true,false,false,false,false);
                        },
                        child: const Text(
                          "Home",
                          style: TextStyle(
                              color:
                              Color.fromRGBO(225, 225, 225, 1),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Cairo",
                              fontStyle: FontStyle.normal,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          clickFooterCallback.onPageOpen(false,false,false,true,false);
                        },
                        child: const Text(
                          "Products",
                          style: TextStyle(
                            color: Color.fromRGBO(225, 225, 225, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Blog",
                        style: TextStyle(
                          color: Color.fromRGBO(225, 225, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          clickFooterCallback.onPageOpen(false,true,false,false,false);
                        },
                        child: const Text(
                          "About us",
                          style: TextStyle(
                            color: Color.fromRGBO(225, 225, 225, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          clickFooterCallback.onPageOpen(false,false,false,false,true);
                        },
                        child: const Text(
                          "Contact",
                          style: TextStyle(
                            color: Color.fromRGBO(225, 225, 225, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(width: 20),
                Container(
                  width:200,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "OTHERS LIKES",
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                          fontWeight:
                          FontWeight.w600,
                          color: Color.fromRGBO(
                              139, 190, 43, 1),
                        ),
                      ),
                      SizedBox(height: 65),
                      Text(
                        "Terms and Conditions",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Cookies",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Sitemap",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "FAQ",
                        style: TextStyle(
                          color: Color.fromRGBO(
                              225, 225, 225, 1),
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
                // SizedBox(width: 20),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "GET IN TOUCH",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight:
                          FontWeight.w600,
                          color: Color.fromRGBO(
                              139, 190, 43, 1),
                          fontFamily: "Cairo",
                          fontStyle:
                          FontStyle.normal,
                        ),
                      ),
                      const SizedBox(height: 65),
                      InkWell(
                        onTap:()async{
                          final url="https://www.google.com/maps/place/Buntlaan+11B,+3941+MG+Doorn,+Netherlands/@52.0184738,5.3702172,17z/data=!3m1!4b1!4m5!3m4!1s0x47c65ba5083d3ffd:0xb990f2f48840faf5!8m2!3d52.0184705!4d5.3724059";
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons
                                  .add_location_outlined,
                              color: Color.fromRGBO(
                                  139, 190, 43, 1),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "CIOFORUM",
                              style: TextStyle(
                                color: Color.fromRGBO(
                                    225, 225, 225, 1),
                                fontWeight:
                                FontWeight.w600,
                                fontSize: 19,
                                fontFamily: "Cairo",
                                fontStyle:
                                FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap:()async{
                          final url="https://www.google.com/maps/place/Buntlaan+11B,+3941+MG+Doorn,+Netherlands/@52.0184738,5.3702172,17z/data=!3m1!4b1!4m5!3m4!1s0x47c65ba5083d3ffd:0xb990f2f48840faf5!8m2!3d52.0184705!4d5.3724059";
                          if(await canLaunch(url)){
                            await launch(url);
                          }else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                SizedBox(width: 40),
                                Text(
                                  "Buntlaan 11B 3941 MG Doorn\nNederland",
                                  style: TextStyle(
                                      color: Color
                                          .fromRGBO(
                                          225,
                                          225,
                                          225,
                                          1),
                                      fontWeight:
                                      FontWeight
                                          .w400,
                                      fontSize: 16,
                                      fontFamily:
                                      "Cairo",
                                      fontStyle:
                                      FontStyle
                                          .normal,
                                      height: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: (){
                          _launchEmail();
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.email_outlined,
                              color: Color.fromRGBO(
                                  139, 190, 43, 1),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "rzondervan@cioforum.nl",
                              style: TextStyle(
                                color: Color.fromRGBO(
                                    225, 225, 225, 1),
                                fontWeight:
                                FontWeight.w400,
                                fontSize: 16,
                                fontFamily: "Cairo",
                                fontStyle:
                                FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){

                          _makePhoneCall("tel:+31620707442");
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.call,
                              color: Color.fromRGBO(
                                  139, 190, 43, 1),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "+31 6 20 707 442",
                              style: TextStyle(
                                color: Color.fromRGBO(
                                    225, 225, 225, 1),
                                fontWeight:
                                FontWeight.w400,
                                fontSize: 16,
                                fontFamily: "Cairo",
                                fontStyle:
                                FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Text("©2022 CIOFORUM | All Rights are Reserved",style: TextStyle(
              color: AppTheme.primaryWhiteColor,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              fontStyle: FontStyle.normal

          ),)
        ],
      ),
    ),
  );


}
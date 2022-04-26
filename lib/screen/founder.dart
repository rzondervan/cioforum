import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/thememode/provider.dart';
import 'package:ciofroum_web/widget/appbar.dart';
import 'package:ciofroum_web/widget/drawer.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Founder extends StatelessWidget {


  // ClickFooterCallback clickFooterCallback;
  // SitemapClick sitemapClick;
  //
  // Founder({required this.clickFooterCallback,required  this.sitemapClick});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey menuKey = GlobalKey();



  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Responsive.isMobile(context)
          ? SideDrawer(context:context,homeTabSelected:false,productTabSelected:false,newsTabSelected:false,aboutTabSelected:false,contact:false,menuKey: menuKey,mission:false,founder:true,partner:false,reference: false): null,
      appBar:appbar(context,false,false,false,false,false,_scaffoldKey,menuKey,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/Frame_1.png",height: Responsive.isDesktop(context)?height*0.5:height*0.3,width: Responsive.isDesktop(context)?width*0.3:width*0.2,fit: BoxFit.cover,),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.isDesktop(context) ? 170 : 20,
                      right: Responsive.isDesktop(context) ? 170 : 20,
                      top: 50,
                      bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "FOUNDER",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: Responsive.isDesktop(context)?24:18,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Cairo",
                                    color: AppTheme(context).primaryBlueColor,
                                    letterSpacing: 7
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Robert Zondervan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: Responsive.isDesktop(context)?40:24,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "Cairo",
                                      color: AppTheme(context).primaryBlueColor,
                                      letterSpacing: 5
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "I like to help directors, owners and boards of organizations of 100 or more people, who want to save on having their own IT director in paid employment or mandatory Data Protection Officer (FG/DPO/PO) and want to be sure that their interests come first when collaborating with IT -suppliers. I believe I can contribute to your success. To help you choose the best solutions, which are not imposed by an IT supplier or internal 'expert'.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: Responsive.isDesktop(context)?19:16,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Cairo",
                                    color: AppTheme(context).primaryBlueColor,
                                    letterSpacing: 1.0,
                                    height: 1.7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/image_12.png",
                              height: height * 0.5, width: width * 0.25)
                        ],
                      ),
                      SizedBox(height: 20),
                      Text("I believe I can contribute to your success. To help you choose the best solutions, which are not imposed by an IT supplier or internal 'expert'.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: Responsive.isDesktop(context)?19:16,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Cairo",
                          color: AppTheme(context).primaryBlueColor,
                        letterSpacing: 1.0,
                        height: 1.7,
                      ),),
                      Text("After more than 30 years of experience in choosing, explaining and implementing IT solutions, I have described the most valuable steps of architecture and IT processes in a pragmatic five-step plan, the AMORT system, in my book 'Manage your IT ' for those with no IT expertise, allowing you to benefit from experience, checklists and processes for quality assurance and IT with the least cost.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: Responsive.isDesktop(context)?19:16,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Cairo",
                        color: AppTheme(context).primaryBlueColor,
                        letterSpacing: 1.0,
                        height: 1.7,
                      ),),
                      Text("I'll take you into a hands-on experience where only the most valuable IT investments are made, taking into account the biggest problems, needs and risks with the fewest resources.",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: Responsive.isDesktop(context)?19:16,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Cairo",
                          color: AppTheme(context).primaryBlueColor,
                        letterSpacing: 1.0,
                        height: 1.7,
                      ),),
                      SizedBox(height: 30),
                      Responsive.isDesktop(context)?
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "From advice to implementation",
                                  style: TextStyle(
                                      color: AppTheme(context).primaryBlueColor,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1.0,
                                      height: 1.7,
                                      fontSize: 24,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "I am most proud of What customers say the successful implementations from my advice to project management.",
                                  style: TextStyle(
                                      color: AppTheme(context).primaryBlueColor,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.0,
                                      height: 1.7,
                                      fontSize: 19,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 50),
                          InkWell(
                            onTap: ()async{
                              final url="https://www.youtube.com/watch?v=jYsW1pF8x7I";
                              if(await canLaunch(url)){
                                await launch(url);
                              }else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/Rectangle_5.png",
                                    width: 339,
                                  ),
                                  Positioned(
                                    top: 80,
                                    left: 135,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor:
                                      AppTheme(context).primaryGreenColor,
                                      child: Icon(Icons.play_arrow,
                                          color:
                                          AppTheme(context).primaryWhiteColor),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ):
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "From advice to implementation",
                            style: TextStyle(
                                color: AppTheme(context).primaryBlueColor,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontSize: 18,
                                fontFamily: "Cairo",
                                fontStyle: FontStyle.normal),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "I am most proud of What customers say the successful implementations from my advice to project management.",
                            style: TextStyle(
                                color: AppTheme(context).primaryBlueColor,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                                height: 1.7,
                                fontSize: 16,
                                fontFamily: "Cairo",
                                fontStyle: FontStyle.normal),
                          ),

                          const SizedBox(height: 30),
                          InkWell(
                            onTap: ()async{
                              final url="https://www.youtube.com/watch?v=jYsW1pF8x7I";
                              if(await canLaunch(url)){
                                await launch(url);
                              }else {
                                throw 'Could not launch $url';
                              }
                            },
                            child:  Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Stack(
                                  children: [
                                    Image.asset("assets/Rectangle_5.png",
                                      width: 400,height: 300,),
                                    Container(
                                      width: 400,
                                      height:300,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.transparent
                                      ),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor:
                                          AppTheme(context).primaryGreenColor,
                                          child: Icon(Icons.play_arrow,
                                              color: AppTheme(context).primaryWhiteColor),
                                        ),
                                      ),
                                    )
                                    // Positioned(
                                    //   top: 90,
                                    //   left: 160,
                                    //   child: CircleAvatar(
                                    //     radius: 30,
                                    //     backgroundColor:
                                    //         AppTheme(context).primaryGreenColor,
                                    //     child: Icon(Icons.play_arrow,
                                    //         color: AppTheme(context).primaryWhiteColor),
                                    //   ),
                                    // )
                                  ],
                                ),
                              ),
                            ),
                            // child: Center(
                            //   child:ClipRRect(
                            //     borderRadius: BorderRadius.circular(30),
                            //     child: Stack(
                            //       children: [
                            //         Image.asset(
                            //           "assets/Rectangle_5.png",
                            //           width: 339,
                            //         ),
                            //         Positioned(
                            //           top: 80,
                            //           left: 135,
                            //           child: CircleAvatar(
                            //             radius: 30,
                            //             backgroundColor:
                            //             AppTheme(context).primaryGreenColor,
                            //             child: Icon(Icons.play_arrow,
                            //                 color:
                            //                 AppTheme(context).primaryWhiteColor),
                            //           ),
                            //         )
                            //       ],
                            //     ),
                            //   )
                            //
                            // ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        "How do I know what I know",
                        style: TextStyle(
                            color: AppTheme(context).primaryBlueColor,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.0,
                            height: 1.7,
                            fontSize: Responsive.isDesktop(context)?24:18,
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Since 1986 I have been working as an independent IT consultant and trainer in infrastructure with consultancy and IT project management activities as a right-hand man in CIO Offices of Datacenters and I am proud of satisfied customers. My profile provides a unique combination of management, architecture and managing privacy obligations:",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isDesktop(context)?19:16,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Cairo",
                            color: AppTheme(context).primaryBlueColor,
                          letterSpacing: 1.0,
                          height: 1.7,
                        ),),
                      SizedBox(height: 20),
                      Padding(
                        padding:  EdgeInsets.only(left: Responsive.isDesktop(context)?100:50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "IT strategy, IT transformation, IT management ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: Responsive.isDesktop(context)?19:16,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme(context).primaryBlueColor,
                                letterSpacing: 1.0,
                                height: 1.7,
                              ),),
                            Text(
                              "IAPP Certified Information Privacy Manager ( CIPM ) license 0002696701",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: Responsive.isDesktop(context)?19:16,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme(context).primaryBlueColor,
                                letterSpacing: 1.0,
                                height: 1.7,
                              ),),
                            Text(
                              "Isaca Certification in the Governance of Enterprise IT ( CGEIT license 1406183)",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize:Responsive.isDesktop(context)? 19:16,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme(context).primaryBlueColor,
                                letterSpacing: 1.0,
                                height: 1.7,
                              ),),
                            Text(
                              "Master's degree in ICT Enterprise Architecture",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: Responsive.isDesktop(context)?19:16,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Cairo",
                                  color: AppTheme(context).primaryBlueColor,
                                letterSpacing: 1.0,
                                height: 1.7,
                              ),),



                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: themeChange.darkTheme?Color.fromRGBO(50, 59, 75, 1): Color.fromRGBO(230, 255, 249, 1),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shared IT Director",style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize:Responsive.isDesktop(context)? 24:18,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal
                              ),),
                              const SizedBox(height: 20),
                              RichText(
                                text:  TextSpan(
                                    text: 'CIOforum offers you a shared IT Director, a Chief Information Officer " CIO " , as a service, an IT sounding board',
                                    style: TextStyle(
                                        color: AppTheme(context).primaryBlueColor,
                                        fontFamily: "Cairo",
                                        fontSize: Responsive.isDesktop(context)?19:16,
                                        letterSpacing: 1.0,
                                        height: 1.7,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: ' without the overhead of a salaried person .',
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize: Responsive.isDesktop(context)?19:16,
                                            letterSpacing: 1.0,
                                            height: 1.7,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal                                          ),
                                      )
                                    ]
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text("CIOforum offers subscription forms with variation in quarterly to weekly meetings, where you benefit from first opinion and rapid knowledge building about your organization. ",style: TextStyle(
                                  color: AppTheme(context).primaryBlueColor,
                                  fontFamily: "Cairo",
                                  fontSize: Responsive.isDesktop(context)?19:16,
                                  letterSpacing: 1,
                                  height: 1.7,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal
                              ),),


                            ],
                          ),
                        ),
                      ),




                    ],
                  ),
                )

              ],
            ),
            Footer1(context)

          ],
        ),
      ),
    );
  }
}

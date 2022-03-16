import 'package:carousel_slider/carousel_slider.dart';
import 'package:ciofroum/responsive.dart';
import 'package:ciofroum/widget/product_page.dart';
import 'package:ciofroum/widget/productcarousel_slider.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int currentPos = 0;
  bool isSwitched = false;

  final CarouselController _controller = CarouselController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController scrollController=ScrollController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 250,
                height: MediaQuery.of(context).size.height*0.3,
                width: double.infinity,
                color: const Color.fromRGBO(50,59,75,1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Privacy and IT services for education",style:  TextStyle(
                        fontSize:Responsive.isDesktop(context)?42:18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(255,255,255,1),
                        fontFamily: "Cairo",
                        fontStyle: FontStyle.normal,

                      ),),
                       SizedBox(height: Responsive.isDesktop(context)?20:10),
                       Text("Vendor independent services for directors and boards of schools and daycare organizations, who want to save on an IT director in salaried employment and/or an external Data Protection Officer.",textAlign: TextAlign.center,style:  TextStyle(
                        color: Color.fromRGBO(255,255,255,1),
                        fontSize:Responsive.isDesktop(context)?24:16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Cairo",
                        fontStyle: FontStyle.normal,
                      ),)
                    ],
                  ),
                ),

              ),
              const SizedBox(height: 20),
              Padding(
                padding:  EdgeInsets.only(left: Responsive.isDesktop(context)?50:20,right: Responsive.isDesktop(context)?50:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      controller: scrollController,
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Responsive.isDesktop(context)?3:2,
                        // mainAxisSpacing: 10,
                        // crossAxisSpacing: 10
                      ),
                      itemCount: productlist.length,
                      itemBuilder: (context,i){
                        return Column(
                          children: [
                            Container(
                              // height: MediaQuery.of(context).size.width*0.27,
                              // width: MediaQuery.of(context).size.width*0.22,
                              // height: MediaQuery.of(context).size.width*0.5,
                              // width: MediaQuery.of(context).size.width*0.6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color.fromRGBO(196,196,196,1)
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.width*0.19,
                                      width: MediaQuery.of(context).size.width*0.21,
                                      color: const Color.fromRGBO(246,246,246,1),
                                      child: Image.asset(productlist[i].image,height: MediaQuery.of(context).size.width*0.3,width: MediaQuery.of(context).size.width*0.3,),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(productlist[i].bookname,style:  TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: Responsive.isDesktop(context)?20:13,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,
                                    ),),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(productlist[i].bookdes,style:  TextStyle(
                                        color: Color.fromRGBO(50,59,75,1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: Responsive.isDesktop(context)?14:10,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,

                                    ),),
                                    const SizedBox(height: 5),
                                    Text(productlist[i].price,style:  TextStyle(
                                        color: Color.fromRGBO(96,138,16,1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: Responsive.isDesktop(context)?18:12,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,

                                    ),),


                                  ],
                                ),
                              ),)

                          ],
                        );


                      },
                    ),
                    const SizedBox(height: 40),
                     Padding(
                      padding: EdgeInsets.only(left: Responsive.isDesktop(context)?60:0),
                      child: Text("Recommendations for Managing Your IT",style: TextStyle(
                          fontSize: Responsive.isDesktop(context)?32:19,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(50,59,75,1),
                        fontFamily: "Cairo",
                        fontStyle: FontStyle.normal,

                      ),),
                    )

                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 453,
                width: double.infinity,
                child:Stack(
                  children: [
                    Align(
                      alignment:Alignment.bottomCenter,
                      child: Container(
                        height: 278,
                        width: double.infinity,
                        color: const Color.fromRGBO(248,244,225,1),
                      ),
                    ),
                    // Positioned(
                    //   bottom: 120,
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(
                    //       left: 150,
                    //       right: 150
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           height: 335,
                    //           width: 355,
                    //           decoration: BoxDecoration(
                    //               color: Colors.white,
                    //               borderRadius: BorderRadius.circular(20)
                    //           ),
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(20.0),
                    //             child: Column(
                    //               children: [
                    //                 Row(
                    //                   children: [
                    //                     CircleAvatar(
                    //                       radius: 30,
                    //                       backgroundImage: NetworkImage("assets/Ellipse 5.png"),
                    //                     ),
                    //                     SizedBox(width: 10),
                    //                     Column(
                    //                       crossAxisAlignment: CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text("Prof. dr. Wim Van Grembergen",style: TextStyle(
                    //                           color: Colors.black,
                    //                           fontWeight: FontWeight.w700,
                    //                           fontStyle: FontStyle.normal,
                    //                           fontSize: 18,
                    //                           fontFamily: "Cairo"
                    //                         ),),
                    //                         Text("University of Antwerp (UA):",style: TextStyle(
                    //                             color: Colors.black,
                    //                             fontWeight: FontWeight.w400,
                    //                             fontStyle: FontStyle.normal,
                    //                             fontSize: 15,
                    //                             fontFamily: "Cairo"
                    //                         ),)
                    //                       ],
                    //                     )
                    //                   ],
                    //                 ),
                    //                 SizedBox(height: 20),
                    //                 Text("Not only suitable for directors, owners and directors without IT expertise, but also for IT managers who want to improve their services to their own organization: Ensuring that IT offers added value, that the organization benefits from efficiency of Cloud and managed services. Prevent IT from doing what it wants, from taking risks itself. A valuable document. ",style: TextStyle(
                    //                     color: Color.fromRGBO(50,50,75,1),
                    //                     fontWeight: FontWeight.w400,
                    //                     fontStyle: FontStyle.normal,
                    //                     fontSize: 15,
                    //                     fontFamily: "Cairo",
                    //                   height: 1.7,
                    //
                    //                 ),)
                    //
                    //
                    //
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                    //         Container(
                    //           height: 335,
                    //           width: 355,
                    //           decoration: BoxDecoration(
                    //               color: Colors.white,
                    //               borderRadius: BorderRadius.circular(20)
                    //           ),
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(20.0),
                    //             child: Column(
                    //               children: [
                    //                 Row(
                    //                   children: [
                    //                     CircleAvatar(
                    //                       radius: 30,
                    //                       backgroundImage: NetworkImage("assets/Ellipse 5.png"),
                    //                     ),
                    //                     SizedBox(width: 10),
                    //                     Column(
                    //                       crossAxisAlignment: CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text("Prof. dr. Wim Van Grembergen",style: TextStyle(
                    //                           color: Colors.black,
                    //                           fontWeight: FontWeight.w700,
                    //                           fontStyle: FontStyle.normal,
                    //                           fontSize: 18,
                    //                           fontFamily: "Cairo"
                    //                         ),),
                    //                         Text("University of Antwerp (UA):",style: TextStyle(
                    //                             color: Colors.black,
                    //                             fontWeight: FontWeight.w400,
                    //                             fontStyle: FontStyle.normal,
                    //                             fontSize: 15,
                    //                             fontFamily: "Cairo"
                    //                         ),)
                    //                       ],
                    //                     )
                    //                   ],
                    //                 ),
                    //                 SizedBox(height: 20),
                    //                 Text("Not only suitable for directors, owners and directors without IT expertise, but also for IT managers who want to improve their services to their own organization: Ensuring that IT offers added value, that the organization benefits from efficiency of Cloud and managed services. Prevent IT from doing what it wants, from taking risks itself. A valuable document. ",style: TextStyle(
                    //                     color: Color.fromRGBO(50,50,75,1),
                    //                     fontWeight: FontWeight.w400,
                    //                     fontStyle: FontStyle.normal,
                    //                     fontSize: 15,
                    //                     fontFamily: "Cairo",
                    //                   height: 1.7,
                    //
                    //                 ),)
                    //
                    //
                    //
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                    //         Container(
                    //           height: 335,
                    //           width: 355,
                    //           decoration: BoxDecoration(
                    //               color: Colors.white,
                    //               borderRadius: BorderRadius.circular(20)
                    //           ),
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(20.0),
                    //             child: Column(
                    //               children: [
                    //                 Row(
                    //                   children: [
                    //                     CircleAvatar(
                    //                       radius: 30,
                    //                       backgroundImage: NetworkImage("assets/Ellipse 5.png"),
                    //                     ),
                    //                     SizedBox(width: 10),
                    //                     Column(
                    //                       crossAxisAlignment: CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text("Prof. dr. Wim Van Grembergen",style: TextStyle(
                    //                           color: Colors.black,
                    //                           fontWeight: FontWeight.w700,
                    //                           fontStyle: FontStyle.normal,
                    //                           fontSize: 18,
                    //                           fontFamily: "Cairo"
                    //                         ),),
                    //                         Text("University of Antwerp (UA):",style: TextStyle(
                    //                             color: Colors.black,
                    //                             fontWeight: FontWeight.w400,
                    //                             fontStyle: FontStyle.normal,
                    //                             fontSize: 15,
                    //                             fontFamily: "Cairo"
                    //                         ),)
                    //                       ],
                    //                     )
                    //                   ],
                    //                 ),
                    //                 SizedBox(height: 20),
                    //                 Text("Not only suitable for directors, owners and directors without IT expertise, but also for IT managers who want to improve their services to their own organization: Ensuring that IT offers added value, that the organization benefits from efficiency of Cloud and managed services. Prevent IT from doing what it wants, from taking risks itself. A valuable document. ",style: TextStyle(
                    //                     color: Color.fromRGBO(50,50,75,1),
                    //                     fontWeight: FontWeight.w400,
                    //                     fontStyle: FontStyle.normal,
                    //                     fontSize: 15,
                    //                     fontFamily: "Cairo",
                    //                   height: 1.7,
                    //
                    //                 ),)
                    //
                    //
                    //
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //
                    //
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Center(
                      child: Positioned(
                        bottom: 100,
                        child: Column(
                          children: [
                            Container(
                              height: 335,
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.symmetric(horizontal: 5.0),
                              // width: double.infinity,
                              // width: 450,
                              child: CarouselSlider.builder(
                                itemCount: carousellist.length,
                                options: CarouselOptions(
                                    autoPlay: false,
                                    aspectRatio: 16/9,
                                    viewportFraction: Responsive.isDesktop(context)?0.3:0.85,
                                    enlargeCenterPage: true,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        currentPos = index;
                                      });
                                    }
                                ),
                                itemBuilder: (context,index,realIdx){
                                  print(index);
                                  return Container(
                                    height: MediaQuery.of(context).size.height,
                                    // width: 355,
                                    // margin: const EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: Responsive.isDesktop(context)?30:23,
                                                backgroundImage: AssetImage(carousellist[index].image),
                                              ),
                                              const SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(carousellist[index].name,style:  TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w700,
                                                      fontStyle: FontStyle.normal,
                                                      fontSize: Responsive.isDesktop(context)?18:15,
                                                      fontFamily: "Cairo"
                                                  ),),
                                                  Text(carousellist[index].university,style:  TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w400,
                                                      fontStyle: FontStyle.normal,
                                                      fontSize: Responsive.isDesktop(context)?15:12,
                                                      fontFamily: "Cairo"
                                                  ),)
                                                ],
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          Text(carousellist[index].desc,style:  TextStyle(
                                            color: Color.fromRGBO(50,50,75,1),
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: Responsive.isDesktop(context)?15:11,
                                            fontFamily: "Cairo",
                                            height: 1.7,
                                          ),)
                                        ],
                                      ),
                                    ),
                                  );


                                  },
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: carousellist.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () => _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 12.0,
                                    height: 12.0,
                                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:  currentPos == entry.key?Color.fromRGBO(139, 190, 43, 1):Color.fromRGBO(50,59,75,0.18)
                                            // .withOpacity(currentPos == entry.key ? 0.9 : 0.2)
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),

                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              Container(
                // width: 1440,
                //   width:double.infinity,
                height: Responsive.isDesktop(context) ? 444 : 1350,
                color: const Color.fromRGBO(50, 59, 75, 1),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Responsive.isDesktop(context)
                          ? Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                        "assets/image 1.png",
                                        width: 33,
                                        height: 40),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "CIOFORUM",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              225, 225, 225, 1),
                                          fontWeight:
                                          FontWeight.w800,
                                          fontSize: 34,
                                          fontStyle:
                                          FontStyle.normal,
                                          fontFamily: "Montserrat"),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 40),
                                const Text(
                                  "CIOforum offers GDPR services and a\n${"Shared IT Director"}  without the overhead of\na salaried person. Make an appointment \nwithout obligation via",
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Cairo",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.0,
                                    height: 1.7,
                                  ),
                                ),
                                const Text(
                                    "rzondervan@cioforum.nl ",
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                          225, 225, 225, 1),
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
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(
                                              40),
                                          color:
                                          const Color.fromRGBO(
                                              0, 0, 0, 0.5),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "assets/Vector.png"),
                                              scale: 1.5)),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(
                                              40),
                                          color:
                                          const Color.fromRGBO(
                                              0, 0, 0, 0.5),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "assets/Vector.png"),
                                              scale: 1.5)),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(
                                              40),
                                          color:
                                          const Color.fromRGBO(
                                              0, 0, 0, 0.5),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "assets/Vector (1).png"),
                                              scale: 1.5)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.06),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "QUICK LIKES",
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
                                SizedBox(height: 70),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                          225, 225, 225, 1),
                                      fontWeight:
                                      FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:
                                      FontStyle.normal,
                                      fontSize: 16),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Products",
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
                                  "Blog",
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
                                  "About us",
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
                                  "Contact",
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
                            SizedBox(width: MediaQuery.of(context).size.width*0.06),
                            Column(
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
                                SizedBox(height: 70),
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
                            SizedBox(width: MediaQuery.of(context).size.width*0.06),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
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
                                const SizedBox(height: 80),
                                Row(
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
                                Column(
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
                                const SizedBox(height: 10),
                                Row(
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
                                const SizedBox(height: 20),
                                Row(
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
                                const SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      )
                          : Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                        "assets/image 1.png",
                                        width: 33,
                                        height: 40),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "CIOFORUM",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              225, 225, 225, 1),
                                          fontWeight:
                                          FontWeight.w800,
                                          fontSize: 34,
                                          fontStyle:
                                          FontStyle.normal,
                                          fontFamily:
                                          "Montserrat"),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 40),
                                const Text(
                                  "CIOforum offers GDPR services and a ${"Shared IT Director"}  without the overhead of a salaried person. Make an appointment without obligation via",
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Cairo",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.0,
                                    height: 2,
                                  ),
                                ),
                                const Text(
                                    "rzondervan@cioforum.nl ",
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                          225, 225, 225, 1),
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
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius
                                              .circular(40),
                                          color: const Color
                                              .fromRGBO(0, 0,
                                              0, 0.5),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/Vector.png"),
                                              scale: 1.5)),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius
                                              .circular(40),
                                          color: const Color
                                              .fromRGBO(0, 0,
                                              0, 0.5),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/Vector.png"),
                                              scale: 1.5)),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius
                                              .circular(40),
                                          color: const Color
                                              .fromRGBO(0, 0,
                                              0, 0.5),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/Vector (1).png"),
                                              scale: 1.5)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 40),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "QUICK LIKES",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(
                                        139, 190, 43, 1),
                                  ),
                                ),
                                SizedBox(height: 40),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                          225, 225, 225, 1),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Products",
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Blog",
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "About us",
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Contact",
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "OTHERS LIKES",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(
                                        139, 190, 43, 1),
                                  ),
                                ),
                                SizedBox(height: 40),
                                Text(
                                  "Terms and Conditions",
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Cookies",
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Sitemap",
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "FAQ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        225, 225, 225, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(height: 40),
                              ],
                            ),
                            SizedBox(height: 40),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "GET IN TOUCH",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(
                                        139, 190, 43, 1),
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                const SizedBox(height: 40),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.add_location_outlined,
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
                                Column(
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
                                              color:
                                              Color.fromRGBO(
                                                  225,
                                                  225,
                                                  225,
                                                  1),
                                              fontWeight:
                                              FontWeight.w400,
                                              fontSize: 16,
                                              fontFamily: "Cairo",
                                              fontStyle: FontStyle
                                                  .normal,
                                              height: 1.5),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
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
                                const SizedBox(height: 20),
                                Row(
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
                                const SizedBox(height: 10),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: const Text(
                          "©2022 CIOFORUM | All Rights are Reserved",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}

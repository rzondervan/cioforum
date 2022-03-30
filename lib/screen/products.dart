import 'package:carousel_slider/carousel_slider.dart';
import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';

import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/screen/privacy.dart';
import 'package:ciofroum_web/thememode/provider.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:ciofroum_web/widget/product_page.dart';
import 'package:ciofroum_web/widget/productcarousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


class Product extends StatefulWidget {
  ClickProductCallback callback;
  HomeExplorepage callback1;
  SitemapClick sitemapClick;

  Product({required this.callback,required this.clickFooterCallback,required this.callback1,required this.sitemapClick});

  ClickFooterCallback clickFooterCallback;
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int currentPos = 0;
  bool isSwitched = false;

  final CarouselController _controller = CarouselController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController scrollController=ScrollController();
  CarouselController carouselController=CarouselController();




  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    final themeChange = Provider.of<DarkThemeProvider>(context);

    print(width);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 250,
                height: height*0.3,
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
                        color:Color.fromRGBO(225, 225, 225, 1),
                        fontFamily: "Cairo",
                        fontStyle: FontStyle.normal,

                      ),),
                       SizedBox(height: Responsive.isDesktop(context)?20:10),
                       Text("Vendor independent services for directors and boards of schools and daycare organizations, who want to save on an IT director in salaried employment and/or an external Data Protection Officer.",textAlign: TextAlign.center,style:  TextStyle(
                         color:Color.fromRGBO(225, 225, 225, 1),
                        fontSize:Responsive.isDesktop(context)?24:16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Cairo",
                        fontStyle: FontStyle.normal,
                      ),)
                    ],
                  ),
                ),

              ),
               SizedBox(height: 20),
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap:()async{
                                setState(() {
                                  widget.callback.onPageProduct(true);

                                });


                                // Navigator.push(context,MaterialPageRoute(builder: (context)=>Privacy(clickFooterCallback:widget.clickFooterCallback)));

                              },
                              child: Container(
                                // height: MediaQuery.of(context).size.height*0.45,
                                // width: MediaQuery.of(context).size.width*0.35,
                                // height: MediaQuery.of(context).size.width*0.5,
                                // width: MediaQuery.of(context).size.width*0.6,
                                decoration: BoxDecoration(
                                    color: AppTheme(context).WhiteColor,
                                  // color:Colors.green,
                                    border: Border.all(
                                        color: const Color.fromRGBO(196,196,196,1)
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        // height: width<width*0.21,
                                        height: width*0.21,
                                        width: width*0.21,
                                        color: const Color.fromRGBO(246,246,246,1),
                                        child: Image.asset(productlist[i].image,height: width*0.3,width: width*0.3,),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(productlist[i].bookname,style:  TextStyle(
                                        color: themeChange.darkTheme?Colors.white:Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: Responsive.isDesktop(context)?20:13,
                                        fontFamily: "Cairo",
                                        fontStyle: FontStyle.normal,
                                      ),),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(productlist[i].bookdes,style:  TextStyle(
                                          color: themeChange.darkTheme?Colors.white:Color.fromRGBO(50,59,75,1),
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
                                ),),
                            )

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
                          color: themeChange.darkTheme?Colors.white:Color.fromRGBO(50,59,75,1),
                        fontFamily: "Cairo",
                        fontStyle: FontStyle.normal,

                      ),),
                    )

                  ],
                ),
              ),
               SizedBox(height: 20),
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
                        color: themeChange.darkTheme?Colors.black87: Color.fromRGBO(248,244,225,1),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            height: 335,
                            width: width,
                            child: CarouselSlider.builder(
                              itemCount: carousellist.length,
                              carouselController: carouselController,
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
                                  height: height,
                                  width: width,

                                  // width: 355,
                                  // margin: const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: AppTheme(context).WhiteColor,

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
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(carousellist[index].name,style:  TextStyle(
                                                      color: themeChange.darkTheme?Colors.white:Colors.black,
                                                      fontWeight: FontWeight.w700,
                                                      fontStyle: FontStyle.normal,
                                                      fontSize: Responsive.isDesktop(context)?18:15,
                                                      fontFamily: "Cairo"
                                                  ),),
                                                  Text(carousellist[index].university,style:  TextStyle(
                                                      color: themeChange.darkTheme?Colors.white:Colors.black,
                                                      fontWeight: FontWeight.w400,
                                                      fontStyle: FontStyle.normal,
                                                      fontSize: Responsive.isDesktop(context)?15:12,
                                                      fontFamily: "Cairo"
                                                  ),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Expanded(
                                          child: Text(carousellist[index].desc,style:  TextStyle(
                                            color: themeChange.darkTheme?Colors.white:Color.fromRGBO(50,50,75,1),
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: Responsive.isDesktop(context)?15:11,
                                            fontFamily: "Cairo",
                                            height: 1.7,
                                          ),),
                                        )
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
                                      color: themeChange.darkTheme?currentPos == entry.key?Colors.white:Colors.white54:currentPos == entry.key?Color.fromRGBO(139, 190, 43, 1):Color.fromRGBO(50,59,75,0.18)
                                          // .withOpacity(currentPos == entry.key ? 0.9 : 0.2)
                                  ),
                                ),
                              );
                            }).toList(),
                          ),

                        ],
                      ),
                    ),


                  ],
                ),
              ),
              Footer1(context,widget.clickFooterCallback)




            ],
          ),
        ),
      ),
    );
  }
}

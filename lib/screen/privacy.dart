import 'package:carousel_slider/carousel_slider.dart';
import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:ciofroum_web/widget/productcarousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Privacy extends StatefulWidget {
  Privacy({required this.clickFooterCallback});

  ClickFooterCallback clickFooterCallback;
  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  int currentPos = 0;
  final CarouselController _controller = CarouselController();
  PageController controller = PageController(
    // initialPage: 0,
  );

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }



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
                        color: AppTheme.primaryWhiteColor,
                        fontFamily: "Cairo",
                        fontStyle: FontStyle.normal,

                      ),),
                      SizedBox(height: Responsive.isDesktop(context)?20:10),
                      Text("Vendor independent services for directors and boards of schools and daycare organizations, who want to save on an IT director in salaried employment and/or an external Data Protection Officer.",textAlign: TextAlign.center,style:  TextStyle(
                        color:AppTheme.primaryWhiteColor,
                        fontSize:Responsive.isDesktop(context)?24:16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Cairo",
                        fontStyle: FontStyle.normal,
                      ),)
                    ],
                  ),
                ),

              ),
              Container(
                width: width,
                // height: 500,
                child: Padding(
                  padding:  EdgeInsets.only(left: Responsive.isDesktop(context)?width*0.13:width*0.06,right: Responsive.isDesktop(context)?width*0.13:width*0.06,top: 30,bottom: 30),
                  child: Row(
                    children: [
                      Image.asset("assets/image_3_(1).png",height: Responsive.isDesktop(context)?height*0.65:height*0.45,),
                      SizedBox(width:Responsive.isDesktop(context)? 20:10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Handboek Privacy en IT - een onderwijsvoorbeeld",style: TextStyle(
                              color:AppTheme.primaryBlackColor,
                              fontSize:Responsive.isDesktop(context)?38:16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Cairo",
                              fontStyle: FontStyle.normal,
                            ),),
                            SizedBox(height: 20),
                            Text("Auteur: Robert Zondervan, CIOforum",style: TextStyle(
                              color:AppTheme.primaryBlueColor,
                              fontSize:Responsive.isDesktop(context)?24:12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Cairo",
                              fontStyle: FontStyle.normal,
                            ),),
                            SizedBox(height: 10),
                            Text("Nu ook te bestellen via Amazon: ISBN-13, 978-1724306920",style: TextStyle(
                              color:AppTheme.primaryBlueColor,
                              fontSize:Responsive.isDesktop(context)?24:12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Cairo",
                              fontStyle: FontStyle.normal,
                            ),),
                            SizedBox(height: 10),
                            Text("Nederlandstalige paperback:",style: TextStyle(
                              color:AppTheme.primaryBlueColor,
                              fontSize:Responsive.isDesktop(context)?24:12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Cairo",
                              fontStyle: FontStyle.normal,
                            ),),
                            SizedBox(height: 20),
                            Text("€21.40",style: TextStyle(
                              color:AppTheme.primaryBlueColor,
                              fontSize:Responsive.isDesktop(context)?32:16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Cairo",
                              fontStyle: FontStyle.normal,
                            ),),
                            SizedBox(height: 20),
                            InkWell(
                              onTap: ()async{
                                final url="https://www.amazon.de/TOGAF-COBIT-Light-investment-success/dp/1534603441/ref=sr_1_2?ie=UTF8&qid=1476121717&sr=8-2&keywords=togaf+cobit";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                height: Responsive.isDesktop(context)?height*0.08:height*0.06,
                                width:Responsive.isDesktop(context)? width*0.15:width*0.15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Responsive.isDesktop(context)?60:20),
                                    color: AppTheme.primaryGreenColor
                                ),
                                child: Center(
                                  child: Text("Purchase",style: TextStyle(
                                    color:AppTheme.primaryWhiteColor,
                                    fontSize:Responsive.isDesktop(context)?23:15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Cairo",
                                    fontStyle: FontStyle.normal,
                                  ),),
                                ),
                              ),
                            ),
                            SizedBox(height: Responsive.isDesktop(context)?40:0),





                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    // onTap: () => buttonCarouselController.previousPage(
                    //     duration: const Duration(milliseconds: 300),
                    //     curve: Curves.linear),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppTheme.primaryBlackColor),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: AppTheme.primaryBlackColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    // onTap: () => buttonCarouselController.nextPage(
                    //     duration: const Duration(milliseconds: 300),
                    //     curve: Curves.linear),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppTheme.primaryBlackColor),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppTheme.primaryBlackColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
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
                        color: const Color.fromRGBO(248,244,225,1),
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
                                      color: AppTheme.WhiteColor,

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
                                                      color: AppTheme.primaryBlackColor,
                                                      fontWeight: FontWeight.w700,
                                                      fontStyle: FontStyle.normal,
                                                      fontSize: Responsive.isDesktop(context)?18:15,
                                                      fontFamily: "Cairo"
                                                  ),),
                                                  Text(carousellist[index].university,style:  TextStyle(
                                                      color: AppTheme.primaryBlackColor,
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
                                            color: Color.fromRGBO(50,50,75,1),
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

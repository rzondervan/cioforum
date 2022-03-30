import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

class Reference extends StatefulWidget {

  Reference({required this.clickFooterCallback,required this.sitemapClick});

  ClickFooterCallback clickFooterCallback;
  SitemapClick sitemapClick;
  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(width);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.2,
              width: double.infinity,
              color: Color.fromRGBO(50, 59, 75, 1),
              child: Center(
                child: Text(
                  "Reference",
                  style: TextStyle(
                      color: Color.fromRGBO(225, 225, 225, 1),
                      fontFamily: "Cairo",
                      fontSize: width < 600 ? 30 : 45,
                      // fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            Container(
              height: height * 0.4,
              width: double.infinity,
              color: AppTheme(context).WhiteColor,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "The organizations where CIOforum provides services are",
                    style: TextStyle(
                        color: AppTheme(context).primaryBlueColor,
                        fontFamily: "Cairo",
                        fontSize: Responsive.isDesktop(context) ?28 : 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal),
                  ),
                  const SizedBox(height: 50),
                  Wrap(
                    children: [
                      Image.network(
                        "assets/comenius-rgb 1.png",
                        width: 112,
                        height: 70,
                      ),
                      const SizedBox(width: 20),
                      Image.network(
                        "assets/qinas-logo_1.png",
                        width: 112,
                        height: 70,
                      ),
                      const SizedBox(width: 20),
                      Image.network(
                        "assets/erfgooierscollege_1.png",
                        width: 112,
                        height: 70,
                      ),
                      const SizedBox(width: 20),
                      Image.network(
                        "assets/CVO t Gooi RGB 1.png",
                        width: 112,
                        height: 70,
                      ),
                      const SizedBox(width: 20),
                      Image.network(
                        "assets/LC-Logo-Geel-RGB - light theme 1.png",
                        width: 112,
                        height: 70,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "What customers say",
              style: TextStyle(
                  color: AppTheme(context).primaryBlueColor,
                  fontFamily: "Cairo",
                  fontSize: Responsive.isDesktop(context) ? 31 : 22,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal),
            ),
            const SizedBox(height: 20),
            CarouselSlider.builder(
              itemCount: 1,
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: false,
                aspectRatio: Responsive.isDesktop(context)?16/9:16/12,
                // viewportFraction: Responsive.isDesktop(context)?0.3:0.85,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                // return Container(
                //   height: 200,
                //   width: 200,
                //   color: Colors.green,
                // );

                return Container(
                  // width: width * 0.7,
                  color: AppTheme(context).WhiteColor,
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "assets/quotes_start.png",
                          height: height * 0.1,
                          width: width * 0.1,
                          // color: Colors.blue,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "Robert delivers to us, through his unique vendor-independent subscription, a new IT vision and strategy, which allowed us to save on unnecessary investments in equipment and work. Robert is good at analyzing IT problems and wishes and comes with solution scenarios where availability and continuity are guaranteed. It is also very nice that he understands proposals from IT suppliers, can adapt them to our advantage, and explains them in understandable language. The latter in particular is a great pleasure for us. able to better leverage the IT capabilities that are important to our industry. We are thrilled with our new subscription to IT strategy assistance. Highly recommended for any organization without its own IT people.",
                                style: TextStyle(
                                    color: AppTheme(context).primaryBlueColor,
                                    fontFamily: "Cairo",
                                    fontSize: Responsive.isDesktop(context)
                                        ? 17
                                        : 10,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    height: 1.5),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Image.network(
                                    "assets/Ellipse_45.png",
                                    width: width * 0.04,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Renée Neuteboom",
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize:
                                                Responsive.isDesktop(context)
                                                    ? 18
                                                    : 10,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      Text(
                                        "Director of Childcare SKDD",
                                        style: TextStyle(
                                            color: AppTheme(context).primaryBlueColor,
                                            fontFamily: "Cairo",
                                            fontSize:
                                                Responsive.isDesktop(context)
                                                    ? 14
                                                    : 8,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Image.network(
                              "assets/quotes_end.png",
                              height: height * 0.1,
                              width: width * 0.1,
                            )),
                      ],
                    ),
                  ),
                );
               },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  hoverColor: Colors.transparent,

                  onTap: () => buttonCarouselController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppTheme(context).primaryBlackColor),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: AppTheme(context).primaryBlackColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  hoverColor: Colors.transparent,

                  onTap: () => buttonCarouselController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppTheme(context).primaryBlackColor),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppTheme(context).primaryBlackColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Footer1(context,widget.clickFooterCallback),
          ],
        ),
      ),
    );
  }
}
//
// height: width>1100?width*0.40:width*0.50,
// width: width,
// color:Colors.blue,
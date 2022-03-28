import 'package:ciofroum_web/Homepage.dart';
import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:ciofroum_web/widget/footer1.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewPage extends StatefulWidget {
  NewPage({required this.clickFooterCallback,required this.clickviewmore});

  ClickFooterCallback clickFooterCallback;
  Homeviewmore clickviewmore;
  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  String dropdownvalue1 = '2022(1)';
  String dropdownvalue2 = '2021(1)';
  String dropdownvalue3 = '2020(1)';
  String dropdownvalue4 = '2019(1)';
  TextEditingController searchController=TextEditingController();
  ScrollController scrollController=ScrollController();


  var items = [
    "2022(1)",
    "2022(2)"
  ];
  var items1 = [
    "2021(1)",
    "2021(2)"
  ];
  var items2 = [
    "2020(1)",
    "2020(2)"
  ];
  var items3 = [
    "2019(1)",
    "2019(2)"
  ];

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
                  child: Text("News",style: TextStyle(
                    color: AppTheme.primaryWhiteColor,
                    fontFamily: "Cairo",
                    fontSize: 45,
                    // fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal
                  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: Responsive.isDesktop(context)?130:20,right: Responsive.isDesktop(context)?100:20,top: 20,bottom: 20),
                child: Center(
                  child: Responsive.isDesktop(context)?Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width*0.50,
                        // height: height,
                        child: Column(
                          children: [
                            InkWell(
                              hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_22_(1).png",fit: BoxFit.cover,
                                          height: height*0.27,
                                          width: width*0.13,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Highly available internet ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 28,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("Exciting holiday",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 17,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("De kerstvakantieweken waren spannend voor de afdeling ICT, en daarmee voor al... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 19,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("REFERENCE - SOURCE: PUBLICATION OF CVO 'T GOOI",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                                hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_26.png",fit: BoxFit.cover,
                                          height: height*0.27,
                                          width: width*0.13,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("GDPR in childcare ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 28,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("What do you need to have arranged as a driver?",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 17,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("The accompanying 3-minute animation video features... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 19,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("Impact of the GDPR in childcare.",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                                hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_28_(1).png",fit: BoxFit.cover,
                                          height: height*0.27,
                                          width: width*0.13,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("AVG at school - dl3 - secure ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 28,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("What do you need to know about email?",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 17,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("The accompanying animation video of almost 2 minutes tells you what you can do wrong with... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 19,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("Impact of the GDPR in childcare.",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                                hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_30.png",fit: BoxFit.cover,
                                          height: height*0.27,
                                          width: width*0.13,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("AVG at school - dl2 - the ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 28,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("What do you need to know if you work in a school?",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 17,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("The accompanying 2-minute animation video shows the 5 rules of thumb... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 19,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("Impact of the GDPR on school.",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                                hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_26.png",fit: BoxFit.cover,
                                          height: height*0.27,
                                          width: width*0.13,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("GDPR for drivers ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 28,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("What do you need to have arranged as a driver?",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 17,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("The accompanying 3-minute animation video contains obligations... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 19,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("Impact of the GDPR on drivers.",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),


                          ],
                        ),

                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          width: width*0.25,
                          // height: height,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                                child: Text("Search",style: TextStyle(
                                  color: AppTheme.primaryBlackColor,
                                  fontSize: 19,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Cairo"
                                ),),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                                child: Container(
                                  height: 50,
                                  // width: width*0.8,
                                  // color: Colors.orangeAccent,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromRGBO(229,229,229,1)
                                      ),
                                    borderRadius: BorderRadius.circular(10),

                                  ),

                                  child: TextFormField(
                                      controller: searchController,
                                    onChanged: (value){
                                      setState(() {

                                      });
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none
                                      ),

                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: AppTheme.primaryGreenColor,
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Icon(Icons.search_rounded,size:16,color: Colors.white,),
                                        ),
                                      ),
                                      hintStyle: TextStyle(
                                          color: Color.fromRGBO(0,0,0,0.31),
                                          fontSize: 14,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Cairo"
                                      )
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Color.fromRGBO(248,248,248,1),
                                thickness: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20,bottom: 20,right: 10,left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Recent Posts",style: TextStyle(
                                        color: AppTheme.primaryBlackColor,
                                        fontSize: 19,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Cairo"
                                    ),),
                                    SizedBox(height: 20),
                                    ListView.builder(
                                        controller: scrollController,

                                      itemCount: 3,
                                        shrinkWrap: true,
                                        itemBuilder: (context,i){
                                          String name="Highly available internet ...";
                                          if(searchController.text.isEmpty){
                                            return Padding(
                                              padding: const EdgeInsets.only(bottom: 20),
                                              child: InkWell(
                                                onTap:()async{
                                                  final url="https://timesofindia.indiatimes.com/news";
                                                  if(await canLaunch(url)){
                                                    await launch(url);
                                                  }else {
                                                    throw 'Could not launch $url';
                                                  }
                                                },
                                                child: Row(
                                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: Image.asset(
                                                        "assets/Rectangle_22_(1).png",fit: BoxFit.cover,
                                                        height: 60,
                                                        width: 57,
                                                      ),
                                                    ),
                                                    SizedBox(width: 10),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text("Highly available internet ...",style: TextStyle(
                                                              color: AppTheme.primaryBlackColor,
                                                              fontFamily: "Cairo",
                                                              fontSize: 13.73,
                                                              fontWeight: FontWeight.w400,
                                                              fontStyle: FontStyle.normal
                                                          ),),
                                                          SizedBox(height: 10),
                                                          Text("De kerstvakantieweken waren spannend voor de afdeling ICT, en daarmee voor al...",style: TextStyle(
                                                              color: AppTheme.primaryBlackColor,
                                                              fontFamily: "Cairo",
                                                              fontSize: 9.32,
                                                              letterSpacing: 1.5,
                                                              // fontWeight: FontWeight.w600,
                                                              fontStyle: FontStyle.normal
                                                          ),),


                                                        ],
                                                      ),
                                                    )

                                                  ],
                                                ),
                                              ),
                                            );

                                          }
                                          else if(name.toLowerCase().contains(searchController.text.toLowerCase())){
                                            return Padding(
                                              padding: const EdgeInsets.only(bottom: 20),
                                              child: InkWell(
                                                onTap:()async{
                                                  final url="https://timesofindia.indiatimes.com/news";
                                                  if(await canLaunch(url)){
                                                    await launch(url);
                                                  }else {
                                                    throw 'Could not launch $url';
                                                  }
                                                },
                                                child: Row(
                                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: Image.network(
                                                        "assets/Rectangle_22_(1).png",fit: BoxFit.cover,
                                                        height: 60,
                                                        width: 57,
                                                      ),
                                                    ),
                                                    SizedBox(width: 10),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text("Highly available internet ...",style: TextStyle(
                                                              color: AppTheme.primaryBlackColor,
                                                              fontFamily: "Cairo",
                                                              fontSize: 13.73,
                                                              fontWeight: FontWeight.w400,
                                                              fontStyle: FontStyle.normal
                                                          ),),
                                                          SizedBox(height: 10),
                                                          Text("De kerstvakantieweken waren spannend voor de afdeling ICT, en daarmee voor al...",style: TextStyle(
                                                              color: AppTheme.primaryBlackColor,
                                                              fontFamily: "Cairo",
                                                              fontSize: 9.32,
                                                              letterSpacing: 1.5,
                                                              // fontWeight: FontWeight.w600,
                                                              fontStyle: FontStyle.normal
                                                          ),),


                                                        ],
                                                      ),
                                                    )

                                                  ],
                                                ),
                                              ),
                                            );
                                          }else{
                                            return Container();
                                          }

                                        },

                                    ),

                                  ],
                                ),
                              ),
                              Divider(
                                color: Color.fromRGBO(248,248,248,1),
                                thickness: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Archive",style: TextStyle(
                                        color: AppTheme.primaryBlackColor,
                                        fontSize: 19,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Cairo"
                                    ),),
                                    SizedBox(height: 20),
                                    Container(
                                      width: double.infinity,
                                      color: Color.fromRGBO(139,190,43,0.21),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            style: TextStyle(
                                              color: AppTheme.primaryBlueColor,
                                              fontFamily: "Cairo",
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 19
                                            ),

                                            // Initial Value
                                            value: dropdownvalue1,

                                            // Down Arrow Ico
                                            icon:  Icon(Icons.keyboard_arrow_down,  color: AppTheme.primaryBlueColor,),
                                            // Array list of items
                                            items: items.map((String items1) {
                                              return DropdownMenuItem(
                                                value: items1,
                                                child: Text(items1),
                                              );
                                            }).toList(),
                                            // After selecting the desired option,it will
                                            // change button value to selected value
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownvalue1 = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),

                                    Container(
                                      width: double.infinity,
                                      height: 50,
                                      // color: Colors.green,
                                      color: Color.fromRGBO(251,251,251,1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("february",style: TextStyle(
                                          fontSize: 19,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo"
                                        ),),
                                      ),

                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: double.infinity,
                                      color: Color.fromRGBO(139,190,43,0.21),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            style: TextStyle(
                                                color: AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 19
                                            ),

                                            // Initial Value
                                            value: dropdownvalue2,

                                            // Down Arrow Ico
                                            icon:  Icon(Icons.keyboard_arrow_down,  color: AppTheme.primaryBlueColor,size: 25,),
                                            // Array list of items
                                            items: items1.map((String items1) {
                                              return DropdownMenuItem(
                                                value: items1,
                                                child: Text(items1),
                                              );
                                            }).toList(),
                                            // After selecting the desired option,it will
                                            // change button value to selected value
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownvalue2 = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: double.infinity,
                                      color: Color.fromRGBO(139,190,43,0.21),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            style: TextStyle(
                                                color: AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 19
                                            ),

                                            // Initial Value
                                            value: dropdownvalue3,

                                            // Down Arrow Ico
                                            icon:  Icon(Icons.keyboard_arrow_down,  color: AppTheme.primaryBlueColor,size: 25,),
                                            // Array list of items
                                            items: items2.map((String items1) {
                                              return DropdownMenuItem(
                                                value: items1,
                                                child: Text(items1),
                                              );
                                            }).toList(),
                                            // After selecting the desired option,it will
                                            // change button value to selected value
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownvalue3 = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: double.infinity,
                                      color: Color.fromRGBO(139,190,43,0.21),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            style: TextStyle(
                                                color: AppTheme.primaryBlueColor,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 19
                                            ),

                                            // Initial Value
                                            value: dropdownvalue4,

                                            // Down Arrow Ico
                                            icon:  Icon(Icons.keyboard_arrow_down,  color: AppTheme.primaryBlueColor,size: 25,),
                                            // Array list of items
                                            items: items3.map((String items1) {
                                              return DropdownMenuItem(
                                                value: items1,
                                                child: Text(items1),
                                              );
                                            }).toList(),
                                            // After selecting the desired option,it will
                                            // change button value to selected value
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownvalue4 = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),




                                  ],
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
                      Container(
                        width: width*0.9,
                        // height: height,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                              child: Text("Search",style: TextStyle(
                                  color: AppTheme.primaryBlackColor,
                                  fontSize: 19,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Cairo"
                              ),),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                              child: Container(
                                height: 50,
                                // width: width*0.8,
                                // color: Colors.orangeAccent,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(229,229,229,1)
                                  ),
                                  borderRadius: BorderRadius.circular(10),

                                ),

                                child: TextFormField(
                                    controller: searchController,
                                  onChanged: (value){
                                    setState(() {

                                    });
                                  },
                                  decoration: InputDecoration(
                                      hintText: "Search",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none
                                      ),

                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: AppTheme.primaryGreenColor,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Icon(Icons.search_rounded,size:16,color: Colors.white,),
                                        ),
                                      ),
                                      hintStyle: TextStyle(
                                          color: Color.fromRGBO(0,0,0,0.31),
                                          fontSize: 14,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Cairo"
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              color: Color.fromRGBO(248,248,248,1),
                              thickness: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,bottom: 20,right: 10,left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Recent Posts",style: TextStyle(
                                      color: AppTheme.primaryBlackColor,
                                      fontSize: 19,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo"
                                  ),),
                                  SizedBox(height: 20),
                                  ListView.builder(
                                    controller: scrollController,
                                    itemCount: 3,
                                    shrinkWrap: true,
                                    itemBuilder: (context,i){
                                      String name="Highly available internet ...";
                                      if(searchController.text.isEmpty){
                                        return Padding(
                                          padding: const EdgeInsets.only(bottom: 20),
                                          child: InkWell(
                                            onTap:()async{
                                              final url="https://timesofindia.indiatimes.com/news";
                                              if(await canLaunch(url)){
                                                await launch(url);
                                              }else {
                                                throw 'Could not launch $url';
                                              }
                                            },
                                            child: Row(
                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: Image.asset(
                                                    "assets/Rectangle_22_(1).png",fit: BoxFit.cover,
                                                    height: 50,
                                                    width: 50,
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Highly available internet ...",style: TextStyle(
                                                          color: AppTheme.primaryBlackColor,
                                                          fontFamily: "Cairo",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400,
                                                          fontStyle: FontStyle.normal
                                                      ),),
                                                      SizedBox(height: 10),
                                                      Text("De kerstvakantieweken waren spannend voor de afdeling ICT, en daarmee voor al...",style: TextStyle(
                                                          color: AppTheme.primaryBlackColor,
                                                          fontFamily: "Cairo",
                                                          fontSize: 12,
                                                          letterSpacing: 1.5,
                                                          // fontWeight: FontWeight.w600,
                                                          fontStyle: FontStyle.normal
                                                      ),),


                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                          ),
                                        );

                                      }
                                      else if(name.toLowerCase().contains(searchController.text.toLowerCase())){
                                        return  Padding(
                                          padding: const EdgeInsets.only(bottom: 20),
                                          child: InkWell(
                                            onTap:()async{
                                              final url="https://timesofindia.indiatimes.com/news";
                                              if(await canLaunch(url)){
                                                await launch(url);
                                              }else {
                                                throw 'Could not launch $url';
                                              }
                                            },
                                            child: Row(
                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: Image.asset(
                                                    "assets/Rectangle_22_(1).png",fit: BoxFit.cover,
                                                    height: 50,
                                                    width: 50,
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Highly available internet ...",style: TextStyle(
                                                          color: AppTheme.primaryBlackColor,
                                                          fontFamily: "Cairo",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400,
                                                          fontStyle: FontStyle.normal
                                                      ),),
                                                      SizedBox(height: 10),
                                                      Text("De kerstvakantieweken waren spannend voor de afdeling ICT, en daarmee voor al...",style: TextStyle(
                                                          color: AppTheme.primaryBlackColor,
                                                          fontFamily: "Cairo",
                                                          fontSize: 12,
                                                          letterSpacing: 1.5,
                                                          // fontWeight: FontWeight.w600,
                                                          fontStyle: FontStyle.normal
                                                      ),),


                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                          ),
                                        );
                                      }else{
                                        return Container();
                                      }

                                    },

                                  ),

                                ],
                              ),
                            ),
                            Divider(
                              color: Color.fromRGBO(248,248,248,1),
                              thickness: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Archive",style: TextStyle(
                                      color: AppTheme.primaryBlackColor,
                                      fontSize: 19,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo"
                                  ),),
                                  SizedBox(height: 20),
                                  Container(
                                    width: double.infinity,
                                    color: Color.fromRGBO(139,190,43,0.21),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          style: TextStyle(
                                              color: AppTheme.primaryBlueColor,
                                              fontFamily: "Cairo",
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 19
                                          ),

                                          // Initial Value
                                          value: dropdownvalue1,

                                          // Down Arrow Ico
                                          icon:  Icon(Icons.keyboard_arrow_down,  color: AppTheme.primaryBlueColor,size: 25,),
                                          // Array list of items
                                          items: items.map((String items1) {
                                            return DropdownMenuItem(
                                              value: items1,
                                              child: Text(items1),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownvalue1 = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),

                                  Container(
                                    width: double.infinity,
                                    height: 50,
                                    // color: Colors.green,
                                    color: Color.fromRGBO(251,251,251,1),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("february",style: TextStyle(
                                          fontSize: 19,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo"
                                      ),),
                                    ),

                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: double.infinity,
                                    color: Color.fromRGBO(139,190,43,0.21),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          style: TextStyle(
                                              color: AppTheme.primaryBlueColor,
                                              fontFamily: "Cairo",
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 19
                                          ),

                                          // Initial Value
                                          value: dropdownvalue2,

                                          // Down Arrow Ico
                                          icon:  Icon(Icons.keyboard_arrow_down,  color: AppTheme.primaryBlueColor,size: 25,),
                                          // Array list of items
                                          items: items1.map((String items1) {
                                            return DropdownMenuItem(
                                              value: items1,
                                              child: Text(items1),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownvalue2 = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: double.infinity,
                                    color: Color.fromRGBO(139,190,43,0.21),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          style: TextStyle(
                                              color: AppTheme.primaryBlueColor,
                                              fontFamily: "Cairo",
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 19
                                          ),

                                          // Initial Value
                                          value: dropdownvalue3,

                                          // Down Arrow Ico
                                          icon:  Icon(Icons.keyboard_arrow_down,  color: AppTheme.primaryBlueColor,size: 25,),
                                          // Array list of items
                                          items: items2.map((String items1) {
                                            return DropdownMenuItem(
                                              value: items1,
                                              child: Text(items1),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownvalue3 = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: double.infinity,
                                    color: Color.fromRGBO(139,190,43,0.21),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          style: TextStyle(
                                              color: AppTheme.primaryBlueColor,
                                              fontFamily: "Cairo",
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 19
                                          ),

                                          // Initial Value
                                          value: dropdownvalue4,

                                          // Down Arrow Ico
                                          icon:  Icon(Icons.keyboard_arrow_down,  color: AppTheme.primaryBlueColor,size: 25,),
                                          // Array list of items
                                          items: items3.map((String items1) {
                                            return DropdownMenuItem(
                                              value: items1,
                                              child: Text(items1),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownvalue4 = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),




                                ],
                              ),
                            )
                          ],
                        ),

                      ),
                      SizedBox(height: 20),
                      Container(
                        width: width*0.9,
                        // height: height,
                        child: Column(
                          children: [
                            InkWell(
                              hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_22_(1).png",fit: BoxFit.cover,
                                          height: height*0.35,
                                          width: width*0.25,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Highly available internet ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("Exciting holiday",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("De kerstvakantieweken waren spannend voor de afdeling ICT, en daarmee voor al... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("REFERENCE - SOURCE: PUBLICATION OF CVO 'T GOOI",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                                hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_26.png",fit: BoxFit.cover,
                                          height: height*0.35,
                                          width: width*0.25,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("GDPR in childcare ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("What do you need to have arranged as a driver?",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("The accompanying 3-minute animation video features... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("Impact of the GDPR in childcare.",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                                hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_28_(1).png",fit: BoxFit.cover,
                                          height: height*0.35,
                                          width: width*0.25,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("AVG at school - dl3 - secure ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("What do you need to know about email?",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("The accompanying animation video of almost 2 minutes tells you what you can do wrong with... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("Impact of the GDPR in childcare.",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                                hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_30.png",fit: BoxFit.cover,
                                          height: height*0.35,
                                          width: width*0.25,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("AVG at school - dl2 - the ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("What do you need to know if you work in a school?",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("The accompanying 2-minute animation video shows the 5 rules of thumb... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("Impact of the GDPR on school.",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                                hoverColor: Colors.transparent,

                              onTap:()async{
                                final url="https://timesofindia.indiatimes.com/news";
                                if(await canLaunch(url)){
                                  await launch(url);
                                }else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle_26.png",fit: BoxFit.cover,
                                          height: height*0.35,
                                          width: width*0.25,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("GDPR for drivers ...",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 5),
                                            Text("What do you need to have arranged as a driver?",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("The accompanying 3-minute animation video contains obligations... Read more",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 20),

                                            Text("Impact of the GDPR on drivers.",style: TextStyle(
                                                color: AppTheme.primaryBlackColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                letterSpacing: 1,

                                                // fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal
                                            ),),
                                            SizedBox(height: 10),

                                            Text("Post On: 02/02/2022",style: TextStyle(
                                                color: AppTheme.primaryGreenColor,
                                                fontFamily: "Cairo",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal
                                            ),),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),


                          ],
                        ),

                      ),

                    ],
                  ),
                ),
              ),
              Footer1(context,widget.clickFooterCallback)


            ],
          ),
        )
      ),
    );
  }
}

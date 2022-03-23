import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  String dropdownvalue1 = '2022(1)';
  String dropdownvalue2 = '2021(1)';
  String dropdownvalue3 = '2020(1)';
  String dropdownvalue4 = '2019(1)';

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
                        width: width*0.55,
                        // height: height,
                        child: Column(
                          children: [
                            Container(
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
                                        child: Image.network(
                                          "assets/Rectangle 22 (1).png",fit: BoxFit.cover,
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
                            Container(
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
                                        child: Image.network(
                                          "assets/Rectangle 26.png",fit: BoxFit.cover,
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
                            Container(
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
                                        child: Image.network(
                                          "assets/Rectangle 28 (1).png",fit: BoxFit.cover,
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
                            Container(
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
                                        child: Image.network(
                                          "assets/Rectangle 30.png",fit: BoxFit.cover,
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
                            Container(
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
                                        child: Image.network(
                                          "assets/Rectangle 26.png",fit: BoxFit.cover,
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
                                    Row(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.network(
                                            "assets/Rectangle 22 (1).png",fit: BoxFit.cover,
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
                                    SizedBox(height: 20),
                                    Row(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.network(
                                            "assets/Rectangle 22 (1).png",fit: BoxFit.cover,
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
                                    SizedBox(height: 20),
                                    Row(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.network(
                                            "assets/Rectangle 22 (1).png",fit: BoxFit.cover,
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
                                    )
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
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle 22 (1).png",fit: BoxFit.cover,
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
                                  SizedBox(height: 20),
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle 22 (1).png",fit: BoxFit.cover,
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
                                  SizedBox(height: 20),
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/Rectangle 22 (1).png",fit: BoxFit.cover,
                                          height: 50,
                                          width:50,
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
                                  )
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
                            Container(
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
                                          "assets/Rectangle 22 (1).png",fit: BoxFit.cover,
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
                            Container(
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
                                          "assets/Rectangle 26.png",fit: BoxFit.cover,
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
                            Container(
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
                                          "assets/Rectangle 28 (1).png",fit: BoxFit.cover,
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
                            Container(
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
                                          "assets/Rectangle 30.png",fit: BoxFit.cover,
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
                            Container(
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
                                          "assets/Rectangle 26.png",fit: BoxFit.cover,
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
              Container(
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
                                      Image.asset("assets/image 1.png",
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
                                    "CIOforum offers GDPR services and a\n${"Shared IT Director"}  without the overhead of\na salaried person. Make an appointment \nwithout obligation via",
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
                                      Container(
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
                                      const SizedBox(width: 10),
                                      Container(
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
                                      const SizedBox(width: 10),
                                      Container(
                                        height: 44,
                                        width: 44,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(40),
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.5),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/Vector (1).png"),
                                                scale: 1.5)),
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
                                children: const [
                                  Text(
                                    "QUICK LIKES",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(139, 190, 43, 1),
                                    ),
                                  ),
                                  SizedBox(height: 70),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                        color:
                                        Color.fromRGBO(225, 225, 225, 1),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Cairo",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Products",
                                    style: TextStyle(
                                      color: Color.fromRGBO(225, 225, 225, 1),
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
                                      color: Color.fromRGBO(225, 225, 225, 1),
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
                                      color: Color.fromRGBO(225, 225, 225, 1),
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
                                      color: Color.fromRGBO(225, 225, 225, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      fontFamily: "Cairo",
                                      fontStyle: FontStyle.normal,
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

              ),


            ],
          ),
        )
      ),
    );
  }
}

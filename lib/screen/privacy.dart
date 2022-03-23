import 'package:ciofroum_web/constants/themes.dart';
import 'package:ciofroum_web/responsive.dart';
import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

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

            ],
          ),
        ),
      ),
    );
  }
}

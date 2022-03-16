import 'package:ciofroum_web/responsive.dart';
import 'package:flutter/material.dart';

class Hearder extends StatefulWidget {
  const Hearder({Key? key}) : super(key: key);

  @override
  State<Hearder> createState() => _HearderState();
}

class _HearderState extends State<Hearder> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: PreferredSize(
          preferredSize: const Size.fromHeight(112.0), // here the desired height
          child:Container(
            height: 112,
            color: Colors.white,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !Responsive.isDesktop(context)? InkWell(
                    onTap: () {_scaffoldKey.currentState?.openDrawer();},
                    child: const Icon(Icons.menu,color: Colors.black,size: 30,)):Container(),
                Responsive.isTablet(context)?const Spacer():const SizedBox(width: 70),
                Image.asset("assets/image 1.png",width: 33,height: 40),
                const SizedBox(width: 10),
                const Center(
                  child: Text("CIOFORUM",style: TextStyle(
                      color: Color.fromRGBO(50,59,75,1),
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),),
                ),
                Responsive.isTablet(context)?const Spacer():const SizedBox(width: 70),
                Responsive.isDesktop(context)? const SizedBox(width: 70):Container(),
                Responsive.isDesktop(context)?  const Text("Home",style: TextStyle(color:  Color.fromRGBO(139,190,43,1),fontWeight: FontWeight.w400,fontSize: 15)):Container(),
                Responsive.isDesktop(context)? const SizedBox(width: 30):Container(),
                Responsive.isDesktop(context)?  const Text("Products",style: TextStyle(color:  Color.fromRGBO(50,59,75,1),fontWeight: FontWeight.w400,fontSize: 18)):Container(),
                Responsive.isDesktop(context)? const SizedBox(width: 30):Container(),
                Responsive.isDesktop(context)?  const Text("News",style: const TextStyle(color:  Color.fromRGBO(50,59,75,1),fontWeight: FontWeight.w400,fontSize: 18)):Container(),
                Responsive.isDesktop(context)? const SizedBox(width: 30):Container(),
                Responsive.isDesktop(context)?  const Text("About",style: const TextStyle(color:  Color.fromRGBO(50,59,75,1),fontWeight: FontWeight.w400,fontSize: 18)):Container(),
                Responsive.isDesktop(context)? const SizedBox(width: 50):Container(),
                Responsive.isDesktop(context)?Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(50,59,75,1),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(
                      child: Text("Contact Us",style: const TextStyle(color: Color.fromRGBO(225, 225, 225, 1),),
                      ),
                    )):Container(),
                Responsive.isDesktop(context)? const SizedBox(width: 40):Container(),
                const Icon(Icons.stream,color: Color.fromRGBO(50,59,75,1),

                ),
                Switch(
                  activeColor:  const Color.fromRGBO(139,190,43,1),
                  inactiveThumbColor: const Color.fromRGBO(139,190,43,1),
                  inactiveTrackColor: Colors.grey.shade200,
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),

              ],
            ),
          )
      ),

    );
  }
}

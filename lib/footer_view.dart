import 'package:flutter/material.dart';

class FooterView extends StatelessWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Container(
          width: 1440,
          height: 444,
          color: const Color.fromRGBO(50, 59, 75, 1),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/image 1.png",width: 33,height: 40),
                        const SizedBox(width: 10),
                        const Text("CIOFORUM",style: TextStyle(
                            color: Color.fromRGBO(225, 225, 225, 1),
                            fontWeight: FontWeight.w800,
                            fontSize: 34
                        ),),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text("CIOforum offers GDPR services and a\n ${"Shared IT Director"}  without the overhead of\n a salaried person. Make an appointment \nwithout obligation via",
                      // textAlign: TextAlign.left,
                      style: TextStyle(color: Color.fromRGBO(225, 225, 225, 1),
                      ),
                    ),
                    const Text("rzondervan@cioforum.nl ", style: const TextStyle(color: Color.fromRGBO(225, 225, 225, 1),)
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromRGBO(0,0,0,1)
                          ),
                          child: Image.asset("assets/Vector.png"),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromRGBO(0,0,0,1)
                          ),
                          child: Image.asset("assets/Vector.png"),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromRGBO(0,0,0,1)
                          ),
                          child: Image.asset("assets/Vector (1).png",),
                        ),


                      ],
                    )

                  ],
                ),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 20,
                          width: 139,
                          color: Colors.grey,
                        ),

                        const Positioned(
                          bottom: 3,
                          child: Center(
                            child: Text("Quick Links",style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(139,190,43,1),
                            ),),
                          ),
                        ),

                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text("Home",style: TextStyle(
                        color: Color.fromRGBO(225, 225, 225, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                    const SizedBox(height: 20),
                    const Text("Products",style: TextStyle(
                        color: Color.fromRGBO(225, 225, 225, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                    const SizedBox(height: 20),
                    const Text("Blog",style: TextStyle(
                        color: Color.fromRGBO(225, 225, 225, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                    const SizedBox(height: 20),
                    const Text("About us",style: TextStyle(
                        color: Color.fromRGBO(225, 225, 225, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                    const SizedBox(height: 20),
                    const Text("Contact",style: TextStyle(
                        color: Color.fromRGBO(225, 225, 225, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                  ],
                ),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 20,
                          width: 139,
                          color: Colors.grey,
                        ),

                        const Positioned(
                          bottom: 3,
                          child: Center(
                            child: Text("Other Links",style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(139,190,43,1),
                            ),),
                          ),
                        ),

                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text("Terms and Conditions",style: TextStyle(
                        color: Color.fromRGBO(225, 225, 225, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                    const SizedBox(height: 20),
                    const Text("Cookies",style: TextStyle(
                        color: Color.fromRGBO(225, 225, 225, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                    const SizedBox(height: 20),
                    const Text("Sitemap",style: TextStyle(
                        color: Color.fromRGBO(225, 225, 225, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                    const SizedBox(height: 20),
                    const Text("FAQ",style: TextStyle(
                        color: Color.fromRGBO(225, 225, 225, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                  ],
                ),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 20,
                          width: 139,
                          color: Colors.grey,
                        ),

                        const Positioned(
                          bottom: 3,
                          child: Center(
                            child: Text("Get in TOuch",style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(139,190,43,1),
                            ),),
                          ),
                        ),

                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children:  const [
                        Icon(Icons.add_location_outlined,color: Color.fromRGBO(139,190,43,1),
                        ),
                        SizedBox(width: 20),
                        Text("CIOFORUM",style: TextStyle(
                            color: Color.fromRGBO(225, 225, 225, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 19
                        ),),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:  [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            SizedBox(width: 40),
                            Text("Buntlaan 11B 3941 MG Doorn\nNederland",style: TextStyle(
                                color: Color.fromRGBO(225, 225, 225, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 16
                            ),),
                          ],
                        ),

                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children:  const [
                        Icon(Icons.email_outlined,color: Color.fromRGBO(139,190,43,1),
                        ),
                        SizedBox(width: 20),
                        Text("rzondervan@cioforum.nl",style: TextStyle(
                            color: Color.fromRGBO(225, 225, 225, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                        ),),

                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children:  const [
                        Icon(Icons.call,color: Color.fromRGBO(139,190,43,1),
                        ),
                        SizedBox(width: 20),
                        Text("+31 6 20 707 442",style: TextStyle(
                            color: Color.fromRGBO(225, 225, 225, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                        ),),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

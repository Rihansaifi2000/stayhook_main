import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Screens/inspection_screen.dart';
import 'package:stayhook_main/Screens/property_detail_inside_screen.dart';
import 'package:stayhook_main/Screens/ready_screen.dart';

class PropertyDetailsPage extends StatefulWidget {
  final String device;
  const PropertyDetailsPage({super.key, required this.device});

  @override
  State<PropertyDetailsPage> createState() => _PropertyDetailsPageState();
}

class _PropertyDetailsPageState extends State<PropertyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          body: Stack(
            children: [
             Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: <Color>[
                      // Color(0xffDC1F26),
                      Color(0xffffffff),
                      Color(0xffc2e9fb),
                    ]),
              ),

            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 45,bottom: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop(true);
                            },
                            child: Icon(Icons.arrow_back_ios,),
                          ),
                          Expanded(
                            child: TabBar(
                                unselectedLabelColor: Colors.grey.shade500,
                                labelColor: Color(0xff000000),
                                dividerColor: Colors.transparent,
                                indicatorSize: TabBarIndicatorSize.label,
                            
                                tabs:[
                                  Tab(
                                    child: Text(
                                      "Details",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Inspection",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Ready",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                            
                                ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/1.14,
                      width: double.infinity,
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height / 1.140,

                                  child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: 5,
                                      itemBuilder: (context,index ){
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(
                                                builder: (context)=>PropertyDetailInsideScreen(
                                                  device: '',)));
                                          },
                                          child: Card(
                                            margin: EdgeInsets.only(bottom: 7.5, top: 7.5),
                                            color: Colors.white,
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: MediaQuery.of(context).size.height/5,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(15.0)),

                                                      image: DecorationImage(image: AssetImage(
                                                          "assets/images/property_home_picture.png"),
                                                          fit: BoxFit.fill
                                                      ),

                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  /*Image.asset("assets/images/property_home_picture.png",width: 400,),*/
                                                  Text("B4,1004,panchsheel greens - 2, sector 16,Noida ,UP,2BHK (1105 sqft)",
                                                      style: GoogleFonts.roboto(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w500,
                                                      )),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Owner : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Gajendra Singh',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Revenue Share : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: '50%',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Status : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Ready, Not available',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.lightBlue,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      RichText(
                                                        text: TextSpan(
                                                            text: "\u{20B9}${'2,000'}: ",
                                                            style: GoogleFonts.roboto(
                                                              color: Colors.lightBlue,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                            children: <TextSpan>[
                                                              TextSpan(
                                                                  text: '/month',
                                                                  style: GoogleFonts.roboto(
                                                                    color: Colors.black54,
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.w400,
                                                                  )),
                                                            ]),
                                                      ),

                                                    ],
                                                  )



                                                ],
                                              ),
                                            ),

                                          ),
                                        );
                                      }),
                                )

                              ],

                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height / 1.140,

                                  child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: 5,
                                      itemBuilder: (context,index ){
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>InspectionScreen(device: 'device')));
                                          },
                                          child: Card(
                                            margin: EdgeInsets.only(bottom: 7.5, top: 7.5),
                                            color: Colors.white,
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: MediaQuery.of(context).size.height/5,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(15.0)),

                                                      image: DecorationImage(image: AssetImage(
                                                          "assets/images/property_home_picture.png"),
                                                          fit: BoxFit.fill
                                                      ),

                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  /*Image.asset("assets/images/property_home_picture.png",width: 400,),*/
                                                  Text("B4,1004,panchsheel greens - 2, sector 16,Noida ,UP,2BHK (1105 sqft)",
                                                      style: GoogleFonts.roboto(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w500,
                                                      )),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Owner : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Gajendra Singh',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Revenue Share : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: '50%',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Status : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Ready, Not available',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.lightBlue,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      RichText(
                                                        text: TextSpan(
                                                            text: "\u{20B9}${'2,000'}: ",
                                                            style: GoogleFonts.roboto(
                                                              color: Colors.lightBlue,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                            children: <TextSpan>[
                                                              TextSpan(
                                                                  text: '/month',
                                                                  style: GoogleFonts.roboto(
                                                                    color: Colors.black54,
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.w400,
                                                                  )),
                                                            ]),
                                                      ),

                                                    ],
                                                  )



                                                ],
                                              ),
                                            ),

                                          ),
                                        );
                                      }),
                                )

                              ],

                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height / 1.140,

                                  child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: 5,
                                      itemBuilder: (context,index ){
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ReadyScreen(device: 'device')));
                                          },
                                          child: Card(
                                            margin: EdgeInsets.only(bottom: 7.5, top: 7.5),
                                            color: Colors.white,
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: MediaQuery.of(context).size.height/5,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(15.0)),

                                                      image: DecorationImage(image: AssetImage(
                                                          "assets/images/property_home_picture.png"),
                                                          fit: BoxFit.fill
                                                      ),

                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  /*Image.asset("assets/images/property_home_picture.png",width: 400,),*/
                                                  Text("B4,1004,panchsheel greens - 2, sector 16,Noida ,UP,2BHK (1105 sqft)",
                                                      style: GoogleFonts.roboto(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w500,
                                                      )),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Owner : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Gajendra Singh',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Revenue Share : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: '50%',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Status : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Ready, Not available',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.lightBlue,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      RichText(
                                                        text: TextSpan(
                                                            text: "\u{20B9}${'2,000'}: ",
                                                            style: GoogleFonts.roboto(
                                                              color: Colors.lightBlue,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                            children: <TextSpan>[
                                                              TextSpan(
                                                                  text: '/month',
                                                                  style: GoogleFonts.roboto(
                                                                    color: Colors.black54,
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.w400,
                                                                  )),
                                                            ]),
                                                      ),

                                                    ],
                                                  )



                                                ],
                                              ),
                                            ),

                                          ),
                                        );
                                      }),
                                )

                              ],

                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              )
    ],
          ),


        )
    );
  }
}

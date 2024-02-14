import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Screens/support_add_ticket.dart';
import 'package:stayhook_main/Screens/support_closed_detail_page.dart';
import 'package:stayhook_main/Screens/support_detail_page.dart';
import 'package:stayhook_main/Screens/support_inprocess_detail_page.dart';
import 'package:stayhook_main/Screens/support_open_detail_page.dart';

class SpotScreen extends StatefulWidget {
  final String device;
  const SpotScreen({super.key, required this.device});

  @override
  State<SpotScreen> createState() => _SpotScreenState();
}

class _SpotScreenState extends State<SpotScreen> {
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
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>SupportAddTicketScreen(device: 'device')));

                            },
                            child: Container(
                              height: 40,
                              width: 130,
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Color(0xff2972FF),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const Text(
                                '+ Add Ticket',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(

                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Row(
                        children: [


                          Expanded(
                            child: TabBar(
                                unselectedLabelColor: Colors.grey.shade500,
                                labelColor: Color(0xff000000),
                                dividerColor: Colors.transparent,
                                indicatorSize: TabBarIndicatorSize.label,
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "Open",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "In-process",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Closed",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),


                                ]),
                          )

                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/1.364,
                      width: double.infinity,
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height / 1.370,
                                  child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: 5,
                                      itemBuilder: (context,index ){
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SupportOpenDetailsPage(device: 'device')));

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
                                                  Text("B4, 1004, Panchsheel Greens -II, Sector 16, Noida, UP",
                                                      style: GoogleFonts.roboto(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w500,
                                                      )),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Tenant : ',
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
                                                        text: 'Type : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Wooden',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Issue Type : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'General',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Issue Details : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Need the flooring to be maintained',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),





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
                                  height: MediaQuery.of(context).size.height / 1.370,
                                  child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: 5,
                                      itemBuilder: (context,index ){
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(
                                                builder: (context)=>SupportInprocessDetailsPage(device: 'device')));
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
                                                  Text("B4, 1004, Panchsheel Greens -II, Sector 16, Noida, UP",
                                                      style: GoogleFonts.roboto(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w500,
                                                      )),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Tenant : ',
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
                                                        text: 'Type : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Wooden',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Issue Type : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'General',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Issue Details : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Need the flooring to be maintained',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),





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
                                  height: MediaQuery.of(context).size.height / 1.370,
                                  child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: 5,
                                      itemBuilder: (context,index ){
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>  SupportClosedDetailsPage(device: '',)));

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
                                                  Text("B4, 1004, Panchsheel Greens -II, Sector 16, Noida, UP",
                                                      style: GoogleFonts.roboto(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w500,
                                                      )),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Tenant : ',
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
                                                        text: 'Type : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Wooden',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Issue Type : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'General',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: 'Issue Details : ',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: 'Need the flooring to be maintained',
                                                              style: GoogleFonts.roboto(
                                                                color: Colors.black54,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                              )),
                                                        ]),
                                                  ),





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


                        ],
                      ),

                    )

                  ],
                ),
              )
            ],
          ),

        ));
  }
}

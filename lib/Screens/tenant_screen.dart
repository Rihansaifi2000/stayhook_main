 import 'package:dotted_border/dotted_border.dart';
 import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
 import 'package:stayhook_main/Screens/add_tenant_screen.dart';
import 'package:stayhook_main/Screens/edit_tenant_screen.dart';
import 'package:stayhook_main/Screens/follow_up_screen.dart';
 import 'package:stayhook_main/Screens/home_screen_user_detail.dart';
import 'package:stayhook_main/Screens/move_in_screen.dart';
 import 'package:stayhook_main/Screens/tenant_followup_screen.dart';
import 'package:stayhook_main/Screens/token_screen.dart';
import 'package:stayhook_main/Widgets/button1_widget.dart';
import 'package:stayhook_main/Widgets/textfeild_widget.dart';

 class TenantScreen extends StatefulWidget {
   final String device;
 const TenantScreen({super.key, required this.device});

  @override
  State<TenantScreen> createState() => _TenantScreenState();
}

class _TenantScreenState extends State<TenantScreen> {
  final TextEditingController moveoutdateController = TextEditingController();
  final TextEditingController inspectiondateController = TextEditingController();
  final TextEditingController commentController = TextEditingController();

  List moveoutreason = ["Society Problem","Owner Request","Criminal Report","Payment Delays","Other"];
  var Moveoutreason;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 45, bottom: 10),
                        child: TabBar(
                          unselectedLabelColor: Colors.grey.shade500,
                          labelColor: Color(0xff000000),
                          dividerColor: Colors.transparent,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs:[
                            Tab(
                              child: Text(
                                "Follow Up",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Token",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Move in",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),

                          ]
                      ),
                      ),

                      SizedBox(

                        height: MediaQuery.of(context).size.height / 1.238 ,
                        width: double.infinity,
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddTenant(device: '')));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Tenant : 5",style: GoogleFonts.roboto(
                                  textStyle: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.black)),),
                              Container(
                               // height: 40,
                               // width: 130,
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff2972FF),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Text(
                                  '+ Add Tenant',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),

                            ],
                          ),
                        ),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  SizedBox(
                                    height: MediaQuery.of(context).size.height / 1.300,

                                    child: ListView.builder(
                                        padding: EdgeInsets.zero,
                                        // shrinkWrap: true,
                                        // physics: NeverScrollableScrollPhysics(),
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>FollowUpScreen(device: '',)));
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
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment.start,
                                                                  children: [
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'TL : ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: 'SH 00001',
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.black54,
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w400,
                                                                                )),
                                                                          ]),
                                                                    ),
                                                                    Text("Gajendra Singh",
                                                                        style: GoogleFonts.roboto(
                                                                          color: const Color(
                                                                              0xff2F2E41),
                                                                          fontSize: 15,
                                                                          fontWeight:
                                                                          FontWeight.w500,
                                                                        )),
                                                                    Text(
                                                                      'gajendra.singh@gmail.com ',
                                                                      style: GoogleFonts.roboto(
                                                                        color: Color(0xff4E4E4E),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '+91 3783289323 ',
                                                                      style: GoogleFonts.roboto(
                                                                        color: Color(0xff4E4E4E),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'Budget: ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: '15000.',
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.black54,
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w400,
                                                                                )),
                                                                          ]),
                                                                    ),
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'Type: ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: 'Private/Shared',
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
                                                              Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment.end,
                                                                children: [

                                                                  CircleAvatar(
                                                                    backgroundImage: NetworkImage(
                                                                        "https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg"),
                                                                    radius: 35,
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Divider(
                                                            height: 20,
                                                            color: Colors.grey.shade400,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Row(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                                children: [
                                                                  GestureDetector(
                                                                      onTap: () {
                                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>EditTenantScreen(device: 'device')));
                                                                      },
                                                                      child: Image.asset(
                                                                        "assets/icons/notes.png",
                                                                        width: 25,
                                                                      )),
                                                                  SizedBox(
                                                                    width: 15,
                                                                  ),
                                                                  GestureDetector(
                                                                      onTap: () {},
                                                                      child: Image.asset(
                                                                        "assets/icons/chat.png",
                                                                        width: 25,
                                                                      )),
                                                                ],
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {},
                                                                child: DottedBorder(
                                                                    borderType: BorderType.RRect,
                                                                    radius: Radius.circular(10),
                                                                    padding: EdgeInsets.all(6),
                                                                    child: ClipRRect(
                                                                      borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              10)),
                                                                      child: Container(
                                                                        alignment: Alignment.center,
                                                                        height: 30,
                                                                        width: 120,
                                                                        child: Text(
                                                                          "Follow up",
                                                                          style: TextStyle(
                                                                              fontSize: 16,
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Color(0xff34A853)),
                                                                        ),
                                                                      ),
                                                                    )),
                                                              ),
                                                            ],
                                                          )
                                                        ]),
                                                  )));
                                        }),
                                  ),

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height / 1.240,
                                    child: ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        // physics: NeverScrollableScrollPhysics(),
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TokenScreen(device: 'device')));
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
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment.start,
                                                                  children: [
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'TL : ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: 'SH 00001',
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.black54,
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w400,
                                                                                )),
                                                                          ]),
                                                                    ),
                                                                    Text("Gajendra Singh",
                                                                        style: GoogleFonts.roboto(
                                                                          color: const Color(
                                                                              0xff2F2E41),
                                                                          fontSize: 15,
                                                                          fontWeight:
                                                                          FontWeight.w500,
                                                                        )),
                                                                    Text(
                                                                      'gajendra.singh@gmail.com ',
                                                                      style: GoogleFonts.roboto(
                                                                        color: Color(0xff4E4E4E),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '+91 3783289323 ',
                                                                      style: GoogleFonts.roboto(
                                                                        color: Color(0xff4E4E4E),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'Budget: ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: '15000.',
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.black54,
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w400,
                                                                                )),
                                                                          ]),
                                                                    ),
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'Type: ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: 'Private/Sheared',
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.black54,
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w400,
                                                                                )),
                                                                          ]),
                                                                    ),
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'Property : ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: 'B4,1004,Panchsheel Greens-2,Sector 16,Noida Up, 201301.',
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
                                                              Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment.end,
                                                                children: [

                                                                  CircleAvatar(
                                                                    backgroundImage: NetworkImage(
                                                                        "https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg"),
                                                                    radius: 35,
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Divider(
                                                            height: 20,
                                                            color: Colors.grey.shade400,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Row(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                                children: [
                                                                  GestureDetector(
                                                                      onTap: () {},
                                                                      child: Image.asset(
                                                                        "assets/icons/notes.png",
                                                                        width: 25,
                                                                      )),
                                                                  SizedBox(
                                                                    width: 15,
                                                                  ),
                                                                  GestureDetector(
                                                                      onTap: () {},
                                                                      child: Image.asset(
                                                                        "assets/icons/chat.png",
                                                                        width: 25,
                                                                      )),
                                                                ],
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {},
                                                                child: DottedBorder(
                                                                    borderType: BorderType.RRect,
                                                                    radius: Radius.circular(10),
                                                                    padding: EdgeInsets.all(6),
                                                                    child: ClipRRect(
                                                                      borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              10)),
                                                                      child: Container(
                                                                        alignment: Alignment.center,
                                                                        height: 30,
                                                                        width: 120,
                                                                        child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Token: " ,
                                                                            style: TextStyle(
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Color(0xffFBBC04)),

                                                                              children: <TextSpan>[
                                                                                TextSpan(
                                                                                  text: "\u{20B9}${'2,000'} ",
                                                                                  style: GoogleFonts.roboto(
                                                                                    color: Colors.lightBlue,
                                                                                    fontSize: 16,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                                    ),
                                                                              ]),
                                                                        ),
                                                                        /* Text(
                                                                          "Token",
                                                                         */
                                                                      ),
                                                                    )),
                                                              ),
                                                            ],
                                                          )
                                                        ]),
                                                  )));
                                        }),
                                  ),

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height / 1.240,
                                    child: ListView.builder(
                                        padding: EdgeInsets.zero,
                                        // shrinkWrap: true,
                                        // physics: NeverScrollableScrollPhysics(),
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MoveInScreen(device: '',)));
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
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment.start,
                                                                  children: [
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'TL : ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: 'SH 00001',
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.black54,
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w400,
                                                                                )),
                                                                          ]),
                                                                    ),
                                                                    Text("Gajendra Singh",
                                                                        style: GoogleFonts.roboto(
                                                                          color: const Color(
                                                                              0xff2F2E41),
                                                                          fontSize: 15,
                                                                          fontWeight:
                                                                          FontWeight.w500,
                                                                        )),
                                                                    Text(
                                                                      'gajendra.singh@gmail.com ',
                                                                      style: GoogleFonts.roboto(
                                                                        color: Color(0xff4E4E4E),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '+91 3783289323 ',
                                                                      style: GoogleFonts.roboto(
                                                                        color: Color(0xff4E4E4E),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'Budget: ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: '15000.',
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.black54,
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w400,
                                                                                )),
                                                                          ]),
                                                                    ),
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'Type: ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: 'Private/Sheared',
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.black54,
                                                                                  fontSize: 15,
                                                                                  fontWeight: FontWeight.w400,
                                                                                )),
                                                                          ]),
                                                                    ),
                                                                    RichText(
                                                                      text: TextSpan(
                                                                          text: 'Property : ',
                                                                          style: GoogleFonts.roboto(
                                                                            color: Colors.black,
                                                                            fontSize: 15,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                                text: 'B4,1004,Panchsheel Greens-2,Sector 16,Noida Up, 201301.',
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
                                                              Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment.end,
                                                                children: [

                                                                  CircleAvatar(
                                                                    backgroundImage: NetworkImage(
                                                                        "https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg"),
                                                                    radius: 35,
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Divider(
                                                            height: 20,
                                                            color: Colors.grey.shade400,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Row(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                                children: [
                                                                  GestureDetector(
                                                                      onTap: () {},
                                                                      child: Image.asset(
                                                                        "assets/icons/notes.png",
                                                                        width: 25,
                                                                      )),
                                                                  SizedBox(
                                                                    width: 15,
                                                                  ),
                                                                  GestureDetector(
                                                                      onTap: () {},
                                                                      child: Image.asset(
                                                                        "assets/icons/chat.png",
                                                                        width: 25,
                                                                      )),
                                                                ],
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {},
                                                                child: DottedBorder(
                                                                    borderType: BorderType.RRect,
                                                                    radius: Radius.circular(10),
                                                                    padding: EdgeInsets.all(6),
                                                                    child: ClipRRect(
                                                                      borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              10)),
                                                                      child: Container(
                                                                        alignment: Alignment.center,
                                                                        height: 25,
                                                                        width: 110,
                                                                        child: Text(
                                                                          "Moved In",
                                                                          style: TextStyle(
                                                                              fontSize: 16,
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Color(0xffFF5374)),
                                                                        ),
                                                                      ),
                                                                    )),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  showDialog(context: context,
                                                                      builder: (context){
                                                                        return StatefulBuilder(

                                                                            builder: (BuildContext context,
                                                                                StateSetter     setState) {
                                                                              return AlertDialog(
                                                                                shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.all(
                                                                                        Radius.circular(10))
                                                                                ),
                                                                                title: Text('Move Out',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: GoogleFonts.roboto(
                                                                                      color: Color(0xff000000),
                                                                                      fontSize: 24,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    )),
                                                                                content: Card(
                                                                                  color: Colors.transparent,
                                                                                  elevation: 0.0,
                                                                                  child: SingleChildScrollView(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                     children: [
                                                                                       Container(
                                                                                         alignment: Alignment.center,
                                                                                         decoration: BoxDecoration(
                                                                                           color: Colors.grey.shade100,
                                                                                           borderRadius: const BorderRadius.all(Radius.circular(15)),
                                                                                         ),

                                                                                         child: TextField(

                                                                                           controller: moveoutdateController,
                                                                                           decoration:InputDecoration(
                                                                                             contentPadding:
                                                                                             const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                                                             border: InputBorder.none,

                                                                                             //  prefixIcon: Icon(Icons.phone),

                                                                                             hintText: 'Move Out Date',
                                                                                             hintStyle: GoogleFonts.roboto(
                                                                                                 fontSize: 16,
                                                                                                 fontWeight: FontWeight.w400,
                                                                                                 color: Color(0xffB7B8B8)),
                                                                                           ),
                                                                                           onTap: ()async{
                                                                                             DateTime? pickedDate = await showDatePicker(
                                                                                               context: context,
                                                                                               initialDate: DateTime.now(),
                                                                                               firstDate: DateTime(2000),
                                                                                               lastDate: DateTime(2101),);
                                                                                             if(
                                                                                             pickedDate!=null){
                                                                                               String formattedDate=DateFormat("dd-MM-yyyy").format(pickedDate);
                                                                                               setState(() {
                                                                                                 moveoutdateController.text=formattedDate.toString();
                                                                                               });
                                                                                             }else{
                                                                                               print("Not Selected");
                                                                                             }
                                                                                           },
                                                                                           readOnly: true,
                                                                                         ),
                                                                                       ),
                                                                                       SizedBox(
                                                                                         height: 10,
                                                                                       ),
                                                                                       Container(
                                                                                         alignment: Alignment.center,
                                                                                         decoration: BoxDecoration(
                                                                                           color: Colors.grey.shade100,
                                                                                           borderRadius: const BorderRadius.all(Radius.circular(15)),
                                                                                         ),

                                                                                         child: TextField(

                                                                                           controller: inspectiondateController,
                                                                                           decoration:InputDecoration(
                                                                                             contentPadding:
                                                                                             const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                                                             border: InputBorder.none,

                                                                                             //  prefixIcon: Icon(Icons.phone),

                                                                                             hintText: 'Inspection Date',
                                                                                             hintStyle: GoogleFonts.roboto(
                                                                                                 fontSize: 16,
                                                                                                 fontWeight: FontWeight.w400,
                                                                                                 color: Color(0xffB7B8B8)),
                                                                                           ),
                                                                                           onTap: ()async{
                                                                                             DateTime? pickedDate = await showDatePicker(
                                                                                               context: context,
                                                                                               initialDate: DateTime.now(),
                                                                                               firstDate: DateTime(2000),
                                                                                               lastDate: DateTime(2101),);
                                                                                             if(
                                                                                             pickedDate!=null){
                                                                                               String formattedDate=DateFormat("dd-MM-yyyy").format(pickedDate);
                                                                                               setState(() {
                                                                                                 inspectiondateController.text=formattedDate.toString();
                                                                                               });
                                                                                             }else{
                                                                                               print("Not Selected");
                                                                                             }
                                                                                           },
                                                                                           readOnly: true,
                                                                                         ),
                                                                                       ),
                                                                                       SizedBox(
                                                                                         height: 10,
                                                                                       ),
                                                                                       Container(
                                                                                         alignment: Alignment.center,
                                                                                         decoration: BoxDecoration(
                                                                                           color: Colors.grey.shade100,


                                                                                           borderRadius: BorderRadius.all(
                                                                                               Radius.circular(15)),

                                                                                         ),
                                                                                         child: InputDecorator(

                                                                                           decoration: InputDecoration(

                                                                                               border: InputBorder.none,
                                                                                               contentPadding: EdgeInsets
                                                                                                   .symmetric(
                                                                                                 horizontal: 10,)),
                                                                                           child: DropdownButtonHideUnderline(
                                                                                             child: DropdownButton<String>(
                                                                                               style: GoogleFonts.roboto(
                                                                                                 fontSize: 16,
                                                                                                 fontWeight: FontWeight
                                                                                                     .w500,
                                                                                                 color: Colors.black26,),
                                                                                               dropdownColor: Colors.white,
                                                                                               borderRadius: BorderRadius
                                                                                                   .circular(10),
                                                                                               value: Moveoutreason,
                                                                                               isExpanded: true,
                                                                                               icon: Icon(
                                                                                                   Icons
                                                                                                       .keyboard_arrow_down,
                                                                                                   size: 30,
                                                                                                   color: Colors.black54
                                                                                               ),
                                                                                               hint: Text("Move out Reason",
                                                                                                 style: GoogleFonts.roboto(
                                                                                                     color: Colors.black26,
                                                                                                     fontSize: 16,
                                                                                                     fontWeight: FontWeight
                                                                                                         .w500
                                                                                                 ),
                                                                                               ),
                                                                                               elevation: 1,
                                                                                               underline: Container(
                                                                                                 height: 1,
                                                                                                 color: Colors.black45,
                                                                                               ),
                                                                                               onChanged: (value) {
                                                                                                 setState(() {
                                                                                                   Moveoutreason = value;

                                                                                                   //  gender = newValue!;

                                                                                                 });
                                                                                               },
                                                                                               items: moveoutreason.map<
                                                                                                   DropdownMenuItem<
                                                                                                       String>>((index) {
                                                                                                 return DropdownMenuItem<
                                                                                                     String>(
                                                                                                   value: index,
                                                                                                   child: Text(
                                                                                                     index,
                                                                                                     style: GoogleFonts
                                                                                                         .dmSans(
                                                                                                       textStyle: TextStyle(
                                                                                                         color: Colors
                                                                                                             .black54,
                                                                                                         fontSize: 16,
                                                                                                         fontWeight: FontWeight
                                                                                                             .w500,
                                                                                                       ),
                                                                                                     ),
                                                                                                   ),
                                                                                                 );
                                                                                               }).toList(),
                                                                                             ),
                                                                                           ),
                                                                                         ),
                                                                                       ),
                                                                                       SizedBox(
                                                                                         height: 10,
                                                                                       ),
                                                                                       TextFieldWidget(
                                                                                           controller: commentController,
                                                                                           obscureText: false,
                                                                                           inputType: TextInputType.text,
                                                                                           text: "",
                                                                                           hintText: 'Comment',
                                                                                           cursorColor: Color(0xff2972FF),
                                                                                           inputAction: TextInputAction
                                                                                               .done,
                                                                                           Maxline: 4),
                                                                                       SizedBox(
                                                                                         height: 10,
                                                                                       ),
                                                                                       GestureDetector(
                                                                                           onTap: () {

                                                                                           },
                                                                                           child: Button1Widget(
                                                                                             text: "Save Change",
                                                                                             color: Colors.blue,
                                                                                             textColor: Colors.white,
                                                                                             width: MediaQuery
                                                                                                 .of(context)
                                                                                                 .size
                                                                                                 .width,)

                                                                                       ),





                                                                                     ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );

                                                                            }
                                                                        );
                                                                      });

                                                                },
                                                                child: Container(
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                    color: Color(0xffFF5374),

                                                                  ),
                                                                  alignment: Alignment.center,
                                                                  height: 40,
                                                                  width: 120,

                                                                  child: Text(
                                                                    "Move Out",
                                                                    style: TextStyle(
                                                                        fontSize: 16,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.white),
                                                                  ),
                                                                ),
                                                              ),


                                                            ],
                                                          ),


                                                        ]),
                                                  )));
                                        }),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      )

                    ],
                  ),
                )

              ]
          ),

        )
    );
  }
}




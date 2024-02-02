import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Screens/follow_up_screen.dart';
import 'package:stayhook_main/Screens/move_in_screen.dart';
import 'package:stayhook_main/Screens/token_screen.dart';
import 'package:stayhook_main/Widgets/button1_widget.dart';

class TenantFollowUpScreen2 extends StatefulWidget {
  final String device;
  const  TenantFollowUpScreen2 ({super.key, required this.device});

  @override
  State< TenantFollowUpScreen2> createState() => _TenantFollowUpScreen2State();
}

class _TenantFollowUpScreen2State extends State< TenantFollowUpScreen2> {
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
                        ],
                      ),
                    ),
                    SizedBox(

                      height: MediaQuery.of(context).size.height / 1.138 ,
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
                                                                              text: 'Private/Sheared',
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
                                  height: MediaQuery.of(context).size.height / 1.140,
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
                                                                      child: Text(
                                                                        "Token",
                                                                        style: TextStyle(
                                                                            fontSize: 16,
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Color(0xffFBBC04)),
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
                                  height: MediaQuery.of(context).size.height / 1.140,
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
                                                                      child: Text(
                                                                        "Move In",
                                                                        style: TextStyle(
                                                                            fontSize: 16,
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Color(0xffFF5374)),
                                                                      ),
                                                                    ),
                                                                  )),
                                                            ),

                                                          ],
                                                        ),

                                                        Divider(
                                                          height: 20,
                                                          color: Colors.grey.shade400,
                                                        ),
                                                        GestureDetector(
                                                          onTap: (){},
                                                          child: Button1Widget(
                                                              text: 'Move Out',
                                                              color: Color(0xffFF5374),
                                                              textColor: Colors.white,
                                                              width: MediaQuery.of(context).size.width,

                                                          ),
                                                        )

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

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Screens/add_tenant_screen.dart';
import 'package:stayhook_main/Screens/follow_up_screen.dart';
import 'package:stayhook_main/Screens/home_screen_user_detail.dart';
import 'package:stayhook_main/Screens/tenant_followup_screen.dart';


class HomeScreen extends StatefulWidget {
  final String device;
  const HomeScreen({super.key, required this.device});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45, bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddTenant(device: '')));
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
                      '+ Add Tenant',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.25,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    // shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                           Navigator.push(context,MaterialPageRoute(builder: (context)=>FollowUpScreen(device: 'device')));

                           /* Navigator.push(context, MaterialPageRoute(builder: (context)=>TenantFollowUpScreen2(device: 'device')));*/
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
                                             /* Text("Follow up",
                                                  style: GoogleFonts.roboto(
                                                    color:
                                                        const Color(0xff34A853),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                  )),*/
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
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w400,
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
              )
            ],
          ),
        ),
      )
    ]));
  }
}

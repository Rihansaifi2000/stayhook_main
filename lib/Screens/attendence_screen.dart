import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Screens/map_screen.dart';

import '../Widgets/button1_widget.dart';

class AttendenceScreen extends StatefulWidget {
  final String device;
  const AttendenceScreen({super.key, required this.device});

  @override
  State<AttendenceScreen> createState() => _AttendenceScreenState();
}

class _AttendenceScreenState extends State<AttendenceScreen> {
  bool isActive = false;
  Map userData = {};

  @override
  void initState() {
    {
      super.initState();
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
               Navigator.of(context).pop(true);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),

      ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.blue.shade500,
                  radius: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user_image.png"),
                    radius: 85,
                  ),


                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Rajesh Kumar",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
              Text("Site-Engineer",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
              Text("Delhi NCR",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 50,
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>MapScreen(device: widget.device)));
                },
                child: Button1Widget(
                    text: "Present",
                    color: Color(0xff0BAE00),
                    textColor: Colors.white,
                    width: MediaQuery.of(context).size.width/2),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: (){
                },
                child: Button1Widget(
                    text: "Absent",
                    color: Color(0xffFF4D49),
                    textColor: Colors.white,
                    width: MediaQuery.of(context).size.width/2),
              ),
              SizedBox(
                height: 170,
              ),
              GestureDetector(
                onTap: (){
                 /* Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      OTPScreen(device: widget.device)));*/

                },
                child: Button1Widget(
                    text: "Save Change",
                    color: Color(0xff2972FF),
                    textColor: Colors.white,
                    width: double.infinity),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

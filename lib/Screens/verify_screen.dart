import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Screens/attendence_screen.dart';

import '../Widgets/button1_widget.dart';

class VerifyScreen extends StatefulWidget {
  final String device;
  const VerifyScreen({super.key, required this.device});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
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
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )),
              Text("Delhi NCR",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 50,
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  AttendenceScreen(device: widget.device)));
                },
                child: Button1Widget(
                    text: "its me",
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
                    text: "Not me",
                    color: Color(0xffFF4D49),
                    textColor: Colors.white,
                    width: MediaQuery.of(context).size.width/2),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

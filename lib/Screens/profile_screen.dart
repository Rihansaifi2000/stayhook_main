//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Profile/edit_profile.dart';
import 'package:stayhook_main/Widgets/container_widget.dart';

class ProfileScreen extends StatefulWidget {
  final String device;
  const ProfileScreen({super.key, required this.device});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool light0 = true;
  //File? imageFile;
  @override
  void initState() {
    super.initState();
    //profileApi();
  }
  final MaterialStateProperty<Icon?> thumbIcon =
  MaterialStateProperty.resolveWith<Icon?>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
        /*  child: IconButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },

            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),*/
        ),

        title: Text("Profile",
            style: GoogleFonts.roboto(
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
               // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 41.5,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage("https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg"),
                      radius: 50,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Gajen Singh",style: TextStyle(
                      fontSize: 17,fontWeight: FontWeight.w500,
                      color: Colors.black),),
                 SizedBox(
                   width: 10,
                 ),

                 Image.asset("assets/icons/verified.png",
                   width: 20,
                 ),


                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                height: 20,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Bookings",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w400,
                      color: Color(0xff64748B)),),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                },
                child: ContainerWidget(text: 'Profile',
                    color: Color(0xff121826)),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 20,
                color: Colors.grey.shade200,
              ),
              GestureDetector(
                onTap: (){},
                child: ContainerWidget(
                  text: 'My Payments', color: Color(0xff121826),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.grey.shade200,
              ),
              GestureDetector(
                onTap: (){},
                child: ContainerWidget(
                  text: 'Complete Profile', color: Color(0xff121826),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.grey.shade200,
              ),
              GestureDetector(
                onTap: (){},
                child: ContainerWidget(
                  text: 'Download Documents', color: Color(0xff121826),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.grey.shade200,
              ),
              GestureDetector(
                onTap: (){},
                child: ContainerWidget(
                  text: 'Resolve Problems via Tickets', color: Color(0xff121826),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Application Settings",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w400,
                      color: Color(0xff64748B)),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                color: Colors.white,
                elevation: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                         "Notification",
                          style: GoogleFonts.roboto(
                            color: Color(0xff121826),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Switch(

                        value: light0,
                        onChanged: (bool value){
                      setState(() {
                        light0 = value;
                      });
                        }),





                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Support",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w400,
                      color: Color(0xff64748B)),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){},
                child: ContainerWidget(
                  text: 'Help center', color: Color(0xff121826),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.grey.shade200,
              ),
              GestureDetector(
                onTap: (){},
                child: ContainerWidget(
                  text: 'Terms and conditions', color: Color(0xff121826),
                ),
              ),










            ],
          ),
        ),
      ),

    );
  }
}

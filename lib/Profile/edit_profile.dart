//import 'dart:html';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stayhook_main/Widgets/button1_widget.dart';
import 'package:stayhook_main/Widgets/textfeild_prefix_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  File? imageFile;
  @override
  void initState() {
    super.initState();
    //profileApi();
  }

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

        title: Text(" Edit Profile",
            style: GoogleFonts.roboto(
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                topLeft: Radius.circular(25),)),
                          context: context,
                          builder: (BuildContext bc){
                            return StatefulBuilder(builder:
                                (BuildContext context,StateSetter setState){
                              return BackdropFilter(filter: ImageFilter.blur(
                                  sigmaX: 0.3,sigmaY: 0.3),
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          GestureDetector(
                                            onTap: (){
                                              /*                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FullScreenImage(
                                                  img: "assets/icons/user (1).png")));*/
                                            },
                                            child: Row(children: [
                                              Image.asset("assets/icons/profile.png",
                                                width: 25,
                                                color: Colors.black54,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "View Photo",
                                                style: GoogleFonts.dmSans(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              )

                                            ],),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              Navigator.pop(context);
                                              await _getCamera();
                                              if (imageFile != null) {

                                              }
                                            },
                                            child:  Row(children: [
                                              Image.asset(
                                                "assets/icons/profile.png",
                                                width: 25,
                                                color: Colors.black54,
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Take Photo",
                                                style: GoogleFonts.dmSans(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              )
                                            ],
                                            ),

                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              Navigator.pop(context);
                                              await _getGallery();
                                              if (imageFile != null) {
                                                //UpdateApi();
                                              }
                                            },
                                            child: Row(children: [
                                              Image.asset(
                                                "assets/icons/profile.png",
                                                width: 25,
                                                color: Colors.black54,
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Select from gallery",
                                                style: GoogleFonts.dmSans(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              )
                                            ] ),

                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ]),
                                  ));
                            });
                          });
                    },
                    child: Stack(clipBehavior: Clip.none,children: [
                      (imageFile ==null)
                          ? CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 51,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/icons/photo-camera.png"),
                          backgroundColor: Colors.grey.shade200,
                          radius: 50,
                        ),
                      )
                          : CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          radius: 50,
                          backgroundImage: FileImage(imageFile!   ,),
                        ),
                      ),

                    ]
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFeildPrefixWidget(
                  controller: nameController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "",
                  hintText: "User Name",
                  cursorColor: Color(0xff2972FF),
                  inputAction:TextInputAction.next,
                  Maxline: 1,
                  prefixIcon: ("assets/icons/user_textfeild_icon.png"),


              ),
              SizedBox(
                height: 10,
              ),
              TextFeildPrefixWidget(
                controller: phoneController,
                obscureText: false,
                inputType: TextInputType.number,
                text: "",
                hintText: "Number",
                cursorColor: Color(0xff2972FF),
                inputAction:TextInputAction.done,
                Maxline: 1,
                prefixIcon: ("assets/icons/phone_textfeild_icon.png"),


              ),
              SizedBox(
                height: 400,
              ),
              Button1Widget(text: "Save Change ",
                  color: Color(0xff2972FF),
                  textColor: Colors.white,
                  width: double.infinity
              )


            ]
          ),
        ),
      ),
    );
  }
  _getGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
    if (pickedFile != null) {
      File? img = File(pickedFile.path  );
      setState(() {
        imageFile = img;
      });
    }
  }

  _getCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );
    if (pickedFile != null) {
      File? img = File(pickedFile.path  );
      setState(() {
        imageFile = img;
      });
    }
  }
}

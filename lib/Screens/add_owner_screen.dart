// import 'dart:html';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stayhook_main/Widgets/textfeild_widget.dart';

import '../Widgets/button1_widget.dart';

class AddOwnerScreen extends StatefulWidget {
  final String device;
  const AddOwnerScreen({super.key, required this.device});

  @override
  State<AddOwnerScreen> createState() => _AddOwnerScreenState();
}

class _AddOwnerScreenState extends State<AddOwnerScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController relationController = TextEditingController();
  final TextEditingController permanentController = TextEditingController();
  final TextEditingController panController = TextEditingController();
  final TextEditingController aadharController = TextEditingController();

  List gender = ["Male","Female","Other"];
  var Gender;
  File? imageFile;
  @override
  void initState() {
    super.initState();
    //profileApi();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text("Add Owner",
            style: GoogleFonts.roboto(
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          backgroundImage: FileImage(imageFile! as File,),
                        ),
                      ),

                    ]
                    ),
                  ),
                ],
              ),

              TextFieldWidget(
                  controller: nameController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Name",
                  hintText: "Name",
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline:1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: emailController,
                  obscureText: false,
                  inputType: TextInputType.emailAddress,
                  text: "Email id" ,
                  hintText: 'Email id',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: mobileController,
                  obscureText: false,
                  inputType: TextInputType.number,
                  text: "Mobile Number" ,
                  hintText: 'Mobile number',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),

              SizedBox(
                height: 20,
              ),
              Container(
                child: Text("Gender",textAlign: TextAlign.start,
                  style:
                GoogleFonts.roboto(
                    fontSize: 16,color: Color(0xff000000),
                    fontWeight: FontWeight.w500
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,


                  borderRadius: BorderRadius.all(Radius.circular(15)),

                ),
                child: InputDecorator(

                  decoration: InputDecoration(

                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      style: GoogleFonts.roboto(fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black26,),
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      value:Gender,
                      isExpanded: true,
                      icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color:Colors.black54
                      ),
                      hint: Text("Select Gender",
                        style: GoogleFonts.roboto(
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      elevation: 1,
                      underline: Container(
                        height: 1,color: Colors.black45,
                      ),
                      onChanged: (value){
                        setState(() {
                          Gender = value;

                          //  gender = newValue!;

                        });
                      },
                      items:gender.map<DropdownMenuItem<String>>((index
                          ){
                        return DropdownMenuItem<String>(
                          value: index,
                          child: Text(
                            index,
                            style: GoogleFonts.dmSans(
                              textStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
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
                height: 20,
              ),
              TextFieldWidget(
                  controller: relationController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Wife/Husband/Father Name" ,
                  hintText: 'Wife/Husband/Father Name',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: permanentController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Permanent Address" ,
                  hintText: 'Permanent Address',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: panController,
                  obscureText: false,
                  inputType: TextInputType.number,
                  text: "Pan Number" ,
                  hintText: 'Pan Number',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: aadharController,
                  obscureText: false,
                  inputType: TextInputType.number,
                  text: "Aadhar Number" ,
                  hintText: 'Aadhar Number',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){


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

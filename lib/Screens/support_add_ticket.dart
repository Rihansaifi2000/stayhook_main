
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stayhook_main/Widgets/button1_widget.dart';
import 'package:stayhook_main/Widgets/textfeild_widget.dart';

class SupportAddTicketScreen extends StatefulWidget {
  final String device;
  const SupportAddTicketScreen({super.key, required this.device});

  @override
  State<SupportAddTicketScreen> createState() => _SupportAddTicketScreenState();
}

class _SupportAddTicketScreenState extends State<SupportAddTicketScreen> {

  final TextEditingController issueController = TextEditingController();
  final TextEditingController issuedetailsController = TextEditingController();
  List selecttenant = ["Rajesh Kumar","Mohan Kumar","Piyush Kumar"];
  var SelectTenant;
  List selectproperty = ["Eco Village - I","Eco Village - II","Eco Village - III"];
  var SelectProperty;
  List issuetype = ["Wooden","Electrical","Plumbing"];
  var IssueType;

  List<File> selectedImages = [];

  List<XFile> pickedFile = [];

  final picker = ImagePicker();
  void selectImage()async{
    pickedFile = await picker.pickMultiImage(
      imageQuality: 50,
    );

    setState(
            () {
          if (pickedFile.isNotEmpty){
            for (var i = 0; i < pickedFile.length; i++) {
              selectedImages.add(File(pickedFile[i].path ));
            }
          }
        }
    );
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
        title: Text("Add Ticket",
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
              Container(
                child: Text("Select Tenant",textAlign: TextAlign.start,
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
                      value:SelectTenant,
                      isExpanded: true,
                      icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color:Colors.black54
                      ),
                      hint: Text("Assigned",
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
                          SelectTenant = value;

                          //  gender = newValue!;

                        });
                      },
                      items:selecttenant.map<DropdownMenuItem<String>>((index
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
              Container(
                child: Text("Select Property",textAlign: TextAlign.start,
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
                      value:SelectProperty,
                      isExpanded: true,
                      icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color:Colors.black54
                      ),
                      hint: Text("Assigned",
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
                          SelectProperty = value;

                          //  gender = newValue!;

                        });
                      },
                      items:selectproperty.map<DropdownMenuItem<String>>((index
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
              Container(
                child: Text("Issue Type",textAlign: TextAlign.start,
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
                      value:IssueType,
                      isExpanded: true,
                      icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color:Colors.black54
                      ),
                      hint: Text("Assigned",
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
                          IssueType = value;

                          //  gender = newValue!;

                        });
                      },
                      items:issuetype.map<DropdownMenuItem<String>>((index
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
                  controller: issueController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Issue" ,
                  hintText: 'Issue',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: issuedetailsController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Issue Details" ,
                  hintText: 'Details',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 4),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: GestureDetector(
                  onTap: (){
                    selectImage();
                  },
                  child: (selectedImages.isEmpty)
                      ? Container(
                    height: 40,
                    width: 250,
                    // color: Colors.lightBlue,
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                      color: Colors.lightBlue,

                      border: Border.all(
                          color: Colors.black54,width: 1.5
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text("Upload Photo",style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white
                    ),),


                  )
                      : GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: selectedImages.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: MediaQuery.of(context).
                        size.width/(MediaQuery.of(context).size.height / 3.8),
                      ),
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          height: 100,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey,width: 1
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(image: FileImage(
                                selectedImages[index] as File ,
                              ),
                                  fit: BoxFit.cover
                              )
                          ),
                        );


                      }),

                ),
              ),
              SizedBox(
                height: 70,
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
}

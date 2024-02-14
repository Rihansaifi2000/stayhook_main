//import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:timelines/timelines.dart';

import '../Widgets/button1_widget.dart';
import '../Widgets/textfeild_widget.dart';

class PropertyDetailInsideScreen extends StatefulWidget {
  final String device;
  const PropertyDetailInsideScreen({super.key, required this.device});

  @override
  State<PropertyDetailInsideScreen> createState() => _PropertyDetailInsideScreenState();
}

class _PropertyDetailInsideScreenState extends State<PropertyDetailInsideScreen> {



  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  final TextEditingController date1Controller = TextEditingController();
  final TextEditingController time1Controller = TextEditingController();
  final TextEditingController comment1Controller = TextEditingController();
  final TextEditingController comment2Controller = TextEditingController();
  final TextEditingController comment3Controller = TextEditingController();

  List property = ["Property 1","Property 2","Property 3"];
  var Property;
  List status = ["status 1","status 2","status 3"];
  var Status;
  List property1 = ["Property 1","Property 2","Property 3"];
  var Property1;
  List status1 = ["status 1","status 2","status 3"];
  var Status1;


  List worktype = ["WorkType 1","WorkType 2","WorkType 3"];
  var WorkType;
  List worklist = ["WorkList 1","WorkList 2","WorkList 3"];
  var WorkList;
  List assignto = ["AssignTo 1","AssignTo 2","AssignTo 3"];
  var AssignTo;

  bool isActive = false;
  int? id = -1;
  List<File> selectedImages = [];
  List<XFile> pickedFile = [];
  List<File> selectedDoc = [];
  List<XFile> pickedDoc = [];
  final picked = ImagePicker();

  final picker = ImagePicker();

  void selectDoc()async{
    pickedDoc = await picked.pickMultiImage(
      imageQuality: 50,
    );
    setState(() {
      if(pickedDoc.isNotEmpty){
        for (var i = 0; i < pickedDoc.length; i++){
          selectedDoc.add(File(pickedDoc[i].path));
        }
      }
    });
  }
  void selectImage()async{
    pickedFile = await picker.pickMultiImage(
      imageQuality: 50,
    );
    setState(
            () {
          if (pickedFile.isNotEmpty){
            for (var i = 0; i < pickedFile.length; i++) {
              selectedImages.add(File(pickedFile[i].path));
            }
          }
        }
    );
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

        title: Text("Details",
            style: GoogleFonts.roboto(
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.0, 1.0],
              colors: [
                //Color(0xffffffff),

                Color(0xffc2e9fb),
                Color(0xffc2e9fb),
              ],
            ),
          ),
        ),
      ),
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
         SingleChildScrollView(

           child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 GestureDetector(
                     onTap: (){},
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
                           Text("B4,1004,panchsheel greens - 2, sector 16,Noida ,UP,2BHK (1105 sqft)",
                               style:
                               GoogleFonts.roboto(
                                 color: Color(0xff4E4E4E),
                                 fontSize: 14,
                                 fontWeight:
                                 FontWeight.w400,
                               )),
                           RichText(
                             text: TextSpan(
                                 text: 'Owner : ',
                                 style:
                                 GoogleFonts.roboto(
                                   color: Color(0xff4E4E4E),
                                   fontSize: 14,
                                   fontWeight:
                                   FontWeight.w400,
                                 ),
                                 children: <TextSpan>[
                                   TextSpan(
                                       text: 'Gajendra Singh',
                                       style:
                                       GoogleFonts.roboto(
                                         color: Color(0xff4E4E4E),
                                         fontSize: 14,
                                         fontWeight:
                                         FontWeight.w400,
                                       )),
                                 ]),
                           ),
                           RichText(
                             text: TextSpan(
                                 text: 'Revenue Share : ',
                                 style:
                                 GoogleFonts.roboto(
                                   color: Color(0xff4E4E4E),
                                   fontSize: 14,
                                   fontWeight:
                                   FontWeight.w400,
                                 ),
                                 children: <TextSpan>[
                                   TextSpan(
                                       text: '50%',
                                       style:
                                       GoogleFonts.roboto(
                                         color: Color(0xff4E4E4E),
                                         fontSize: 14,
                                         fontWeight:
                                         FontWeight.w400,
                                       )),
                                 ]),
                           ),
                           RichText(
                             text: TextSpan(
                                 text: 'Status : ',
                                 style:
                                 GoogleFonts.roboto(
                                   color: Color(0xff4E4E4E),
                                   fontSize: 14,
                                   fontWeight:
                                   FontWeight.w400,
                                 ),
                                 children: <TextSpan>[
                                   TextSpan(
                                       text: 'Ready, Not available',
                                       style: GoogleFonts.roboto(
                                         color: Colors.lightBlue,
                                         fontSize: 15,
                                         fontWeight: FontWeight.w400,
                                       )),
                                 ]),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               RichText(
                                 text: TextSpan(
                                     text: "\u{20B9}${'2,000'}: ",
                                     style: GoogleFonts.roboto(
                                       color: Colors.lightBlue,
                                       fontSize: 16,
                                       fontWeight: FontWeight.w500,
                                     ),
                                     children: <TextSpan>[
                                       TextSpan(
                                           text: '/month',
                                           style: GoogleFonts.roboto(
                                             color: Colors.black54,
                                             fontSize: 15,
                                             fontWeight: FontWeight.w400,
                                           )),
                                     ]),
                               ),

                             ],
                           ),
                           Divider(
                             height: 20,
                             color: Colors.grey.shade400,
                           ),
                           Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceBetween,
                             children: [
                               Image.asset(
                                 "assets/icons/place_icon.png",
                                 width: 20,
                               ),
                               SizedBox(
                                 width: 20,
                               ),
                               Expanded(
                                 child: Column(
                                   crossAxisAlignment:
                                   CrossAxisAlignment.start,
                                   children: [
                                     Text("Sun,Feb 19, 04:14 PM",
                                         style:
                                         GoogleFonts.roboto(
                                           color: Color(0xff4E4E4E),
                                           fontSize: 14,
                                           fontWeight:
                                           FontWeight.w400,
                                         )),
                                     Text("Visit Availability",
                                         style: GoogleFonts.roboto(
                                           color: const Color(
                                               0xff2F2E41),
                                           fontSize: 15,
                                           fontWeight:
                                           FontWeight.w500,
                                         )),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),

                   ),
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
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
                                       title: Text('Call',
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

                                                   controller: dateController,
                                                   decoration:InputDecoration(
                                                     contentPadding:
                                                     const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                     border: InputBorder.none,

                                                     //  prefixIcon: Icon(Icons.phone),

                                                     hintText: 'Date',
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
                                                         dateController.text=formattedDate.toString();
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

                                                     controller: timeController,
                                                     decoration:InputDecoration(
                                                       contentPadding:
                                                       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                       border: InputBorder.none,

                                                       //  prefixIcon: Icon(Icons.phone),

                                                       hintText: 'Time',
                                                       hintStyle: GoogleFonts.roboto(
                                                           fontSize: 16,
                                                           fontWeight: FontWeight.w400,
                                                           color: Color(0xffB7B8B8)),
                                                     ),
                                                     onTap: ()async{
                                                       final TimeOfDay? newTime =
                                                       await showTimePicker(
                                                         context: context,
                                                         initialTime: TimeOfDay.now(),
                                                       );
                                                       setState(() {
                                                         timeController.text =
                                                             newTime!.format(context);
                                                       });
                                                     }


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
                                                       value: Property,
                                                       isExpanded: true,
                                                       icon: Icon(
                                                           Icons
                                                               .keyboard_arrow_down,
                                                           size: 30,
                                                           color: Colors.black54
                                                       ),
                                                       hint: Text(
                                                         "Select Property",
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
                                                           Property = value;

                                                           //  gender = newValue!;

                                                         });
                                                       },
                                                       items: property.map<
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
                                                       value: Status,
                                                       isExpanded: true,
                                                       icon: Icon(
                                                           Icons
                                                               .keyboard_arrow_down,
                                                           size: 30,
                                                           color: Colors.black54
                                                       ),
                                                       hint: Text("Status",
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
                                                           Status = value;

                                                           //  gender = newValue!;

                                                         });
                                                       },
                                                       items: status.map<
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
                                                 height: 20,
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
                         width: MediaQuery.of(context).size.width / 2.2,
                         alignment: Alignment.center,
                         padding: const EdgeInsets.all(13),
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                               begin: Alignment.bottomRight,
                               end: Alignment.topLeft,
                               stops: [
                                 0.0,
                                 1.0
                               ],
                               colors: [
                                 Color(0xffFCB683),
                                 Color(0xffFF5374),
                               ]),
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Text(
                           "Call",
                           style: GoogleFonts.inter(
                             fontWeight: FontWeight.w500,
                             fontSize: 18,
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ),
                     GestureDetector(
                       onTap: () {
                         showDialog(context: context,
                             builder: (context){
                               return StatefulBuilder(

                                   builder: (BuildContext context,
                                       StateSetter  setState) {
                                     return AlertDialog(
                                       shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.all(
                                               Radius.circular(10))
                                       ),
                                       title: Text('Schedule meet',
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

                                                   controller: date1Controller,
                                                   decoration:InputDecoration(
                                                     contentPadding:
                                                     const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                     border: InputBorder.none,

                                                     //  prefixIcon: Icon(Icons.phone),

                                                     hintText: 'Date',
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
                                                         date1Controller.text=formattedDate.toString();
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

                                                     controller: time1Controller,
                                                     decoration:InputDecoration(
                                                       contentPadding:
                                                       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                       border: InputBorder.none,

                                                       //  prefixIcon: Icon(Icons.phone),

                                                       hintText: 'Time',
                                                       hintStyle: GoogleFonts.roboto(
                                                           fontSize: 16,
                                                           fontWeight: FontWeight.w400,
                                                           color: Color(0xffB7B8B8)),
                                                     ),
                                                     onTap: ()async{
                                                       final TimeOfDay? newTime =
                                                       await showTimePicker(
                                                         context: context,
                                                         initialTime: TimeOfDay.now(),
                                                       );
                                                       setState(() {
                                                         time1Controller.text =
                                                             newTime!.format(context);
                                                       });
                                                     }


                                                 ),
                                               ),

                                               SizedBox(
                                                 height: 10,
                                               ),
                                               Container(
                                                 alignment: Alignment.center,
                                                 decoration: BoxDecoration(
                                                   color: Colors.grey.shade100,


                                                   borderRadius: BorderRadius
                                                       .all(
                                                       Radius.circular(15)),

                                                 ),
                                                 child: InputDecorator(

                                                   decoration: InputDecoration(

                                                       border: InputBorder
                                                           .none,
                                                       contentPadding: EdgeInsets
                                                           .symmetric(
                                                         horizontal: 10,)),
                                                   child: DropdownButtonHideUnderline(
                                                     child: DropdownButton<
                                                         String>(
                                                       style: GoogleFonts
                                                           .roboto(
                                                         fontSize: 16,
                                                         fontWeight: FontWeight
                                                             .w500,
                                                         color: Colors
                                                             .black26,),
                                                       dropdownColor: Colors
                                                           .white,
                                                       borderRadius: BorderRadius
                                                           .circular(10),
                                                       value: Property1,
                                                       isExpanded: true,
                                                       icon: Icon(
                                                           Icons
                                                               .keyboard_arrow_down,
                                                           size: 30,
                                                           color: Colors
                                                               .black54
                                                       ),
                                                       hint: Text(
                                                         "Select Property",
                                                         style: GoogleFonts
                                                             .roboto(
                                                             color: Colors
                                                                 .black26,
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
                                                           Property1 = value;

                                                           //  gender = newValue!;

                                                         });
                                                       },
                                                       items: property1.map<
                                                           DropdownMenuItem<
                                                               String>>((
                                                           index) {
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
                                               Container(
                                                 alignment: Alignment.center,
                                                 decoration: BoxDecoration(
                                                   color: Colors.grey.shade100,


                                                   borderRadius: BorderRadius
                                                       .all(
                                                       Radius.circular(15)),

                                                 ),
                                                 child: InputDecorator(

                                                   decoration: InputDecoration(

                                                       border: InputBorder
                                                           .none,
                                                       contentPadding: EdgeInsets
                                                           .symmetric(
                                                         horizontal: 10,)),
                                                   child: DropdownButtonHideUnderline(
                                                     child: DropdownButton<
                                                         String>(
                                                       style: GoogleFonts
                                                           .roboto(
                                                         fontSize: 16,
                                                         fontWeight: FontWeight
                                                             .w500,
                                                         color: Colors
                                                             .black26,),
                                                       dropdownColor: Colors
                                                           .white,
                                                       borderRadius: BorderRadius
                                                           .circular(10),
                                                       value: Status1,
                                                       isExpanded: true,
                                                       icon: Icon(
                                                           Icons
                                                               .keyboard_arrow_down,
                                                           size: 30,
                                                           color: Colors
                                                               .black54
                                                       ),
                                                       hint: Text("Status",
                                                         style: GoogleFonts
                                                             .roboto(
                                                             color: Colors
                                                                 .black26,
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
                                                           Status1 = value;

                                                           //  gender = newValue!;

                                                         });
                                                       },
                                                       items: status1.map<
                                                           DropdownMenuItem<
                                                               String>>((
                                                           index) {
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
                                                   controller: comment1Controller,
                                                   obscureText: false,
                                                   inputType: TextInputType
                                                       .text,
                                                   text: "",
                                                   hintText: 'Comment',
                                                   cursorColor: Color(
                                                       0xff2972FF),
                                                   inputAction: TextInputAction
                                                       .done,
                                                   Maxline: 4),
                                               SizedBox(
                                                 height: 20,
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
                         width: MediaQuery.of(context).size.width / 2.2,
                         alignment: Alignment.center,
                         padding: const EdgeInsets.all(13),
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                               begin: Alignment.bottomRight,
                               end: Alignment.topLeft,
                               stops: [
                                 0.0,
                                 1.0
                               ],
                               colors: [
                                 Color(0xff587CF4),
                                 Color(0xffFBB3C1),
                               ]),
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Text(
                           "Schedule meet",
                           style: GoogleFonts.inter(
                             fontWeight: FontWeight.w500,
                             fontSize: 18,
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Card(
                   color: Colors.white,
                   elevation: 2,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Column(
                       children: [
                         Timeline.tileBuilder(
                           theme: TimelineThemeData(
                             nodePosition: 0,
                             color: Colors.blue,
                             connectorTheme:
                             ConnectorThemeData(thickness: 3.0),
                           ),
                           shrinkWrap: true,
                           physics: NeverScrollableScrollPhysics(),
                           builder: TimelineTileBuilder.fromStyle(
                             itemCount: 1,
                             contentsAlign: ContentsAlign.basic,
                             contentsBuilder: (context, index) => Card(
                               margin: EdgeInsets.only(top: 10,
                                   bottom: 15, left: 10, right: 10),
                               color: Colors.white,
                               elevation: 2,
                               shape: RoundedRectangleBorder(
                                   borderRadius:
                                   BorderRadius.circular(12)),
                               child: Padding(
                                 padding: EdgeInsets.all(10.0),
                                 child: ListTile(
                                   title: RichText(
                                     text: TextSpan(
                                         text: 'Call Scheduled ',
                                         style: GoogleFonts.roboto(
                                           color: Colors.blue,
                                           fontSize: 15,
                                           fontWeight:
                                           FontWeight.w500,
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                               text: '',
                                               style: GoogleFonts
                                                   .roboto(
                                                 color: Colors.black,
                                                 fontSize: 15,
                                                 fontWeight:
                                                 FontWeight.w500,
                                               )),
                                         ]),
                                   ),
                                   subtitle: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       SizedBox(
                                         height: 5,
                                       ),
                                       Text(
                                         'Call Date : 12/01/2023 ',
                                         style:
                                         GoogleFonts.roboto(
                                           color: Color(0xff4E4E4E),
                                           fontSize: 14,
                                           fontWeight:
                                           FontWeight.w400,
                                         ),
                                       ),
                                       SizedBox(
                                         height: 3,
                                       ),
                                       Text(
                                         'Call Time : 3:50 pm ',
                                         style:
                                         GoogleFonts.roboto(
                                           color: Color(0xff4E4E4E),
                                           fontSize: 14,
                                           fontWeight:
                                           FontWeight.w400,
                                         ),
                                       ),
                                       const SizedBox(
                                         height: 3,
                                       ),
                                       RichText(
                                         text: TextSpan(
                                             text: 'Select Property : ',
                                             style:
                                             GoogleFonts.roboto(
                                               color: Color(0xff4E4E4E),
                                               fontSize: 14,
                                               fontWeight:
                                               FontWeight.w400,
                                             ),
                                             children: <TextSpan>[
                                               TextSpan(
                                                   text: 'Property 1',
                                                   style:
                                                   GoogleFonts.roboto(
                                                     color: Color(0xff4E4E4E),
                                                     fontSize: 14,
                                                     fontWeight:
                                                     FontWeight.w400,
                                                   )),
                                             ]),
                                       ),
                                       const SizedBox(
                                         height: 3,
                                       ),
                                       RichText(
                                         text: TextSpan(
                                             text: 'Status : ',
                                             style:
                                             GoogleFonts.roboto(
                                               color: Color(0xff4E4E4E),
                                               fontSize: 14,
                                               fontWeight:
                                               FontWeight.w400,
                                             ),
                                             children: <TextSpan>[
                                               TextSpan(
                                                   text: 'Status 1',
                                                   style:
                                                   GoogleFonts.roboto(
                                                     color: Color(0xff4E4E4E),
                                                     fontSize: 14,
                                                     fontWeight:
                                                     FontWeight.w400,
                                                   )),
                                             ]),
                                       ),
                                       Text(
                                           'Comment:  ',
                                           style:
                                           GoogleFonts.roboto(
                                             color: Color(0xff4E4E4E),
                                             fontSize: 14,
                                             fontWeight:
                                             FontWeight.w400,
                                           )
                                       ),

                                     ],),
                                 ),


                               ),

                             ),

                           ),
                         ),
                         Timeline.tileBuilder(
                           theme: TimelineThemeData(
                             nodePosition: 0,
                             color: Colors.blue,
                             connectorTheme:
                             ConnectorThemeData(thickness: 3.0),
                           ),
                           shrinkWrap: true,
                           physics: NeverScrollableScrollPhysics(),
                           builder: TimelineTileBuilder.fromStyle(
                             itemCount: 1,
                             contentsAlign: ContentsAlign.basic,
                             contentsBuilder: (context, index) => Card(
                               margin: EdgeInsets.only(top: 10,
                                   bottom: 15, left: 10, right: 10),
                               color: Colors.white,
                               elevation: 2,
                               shape: RoundedRectangleBorder(
                                   borderRadius:
                                   BorderRadius.circular(12)),
                               child: Padding(
                                 padding: EdgeInsets.all(10.0),
                                 child: ListTile(
                                   title: RichText(
                                     text: TextSpan(
                                         text: 'Scheduled meet ',
                                         style: GoogleFonts.roboto(
                                           color: Colors.blue,
                                           fontSize: 15,
                                           fontWeight:
                                           FontWeight.w500,
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                               text: '',
                                               style: GoogleFonts
                                                   .roboto(
                                                 color: Colors.black,
                                                 fontSize: 15,
                                                 fontWeight:
                                                 FontWeight.w500,
                                               )),
                                         ]),
                                   ),
                                   subtitle: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       SizedBox(
                                         height: 5,
                                       ),
                                       Text(
                                         'Call Date : 12/01/2023 ',
                                         style:
                                         GoogleFonts.roboto(
                                           color: Color(0xff4E4E4E),
                                           fontSize: 14,
                                           fontWeight:
                                           FontWeight.w400,
                                         ),
                                       ),
                                       SizedBox(
                                         height: 3,
                                       ),
                                       Text(
                                         'Call Time : 3.50 pm ',
                                         style:
                                         GoogleFonts.roboto(
                                           color: Color(0xff4E4E4E),
                                           fontSize: 14,
                                           fontWeight:
                                           FontWeight.w400,
                                         ),
                                       ),
                                       const SizedBox(
                                         height: 3,
                                       ),
                                       RichText(
                                         text: TextSpan(
                                             text: 'Select Property : ',
                                             style:
                                             GoogleFonts.roboto(
                                               color: Color(0xff4E4E4E),
                                               fontSize: 14,
                                               fontWeight:
                                               FontWeight.w400,
                                             ),
                                             children: <TextSpan>[
                                               TextSpan(
                                                   text: 'Property 1',
                                                   style:
                                                   GoogleFonts.roboto(
                                                     color: Color(0xff4E4E4E),
                                                     fontSize: 14,
                                                     fontWeight:
                                                     FontWeight.w400,
                                                   )),
                                             ]),
                                       ),
                                       const SizedBox(
                                         height: 3,
                                       ),
                                       RichText(
                                         text: TextSpan(
                                             text: 'Status : ',
                                             style:
                                             GoogleFonts.roboto(
                                               color: Color(0xff4E4E4E),
                                               fontSize: 14,
                                               fontWeight:
                                               FontWeight.w400,
                                             ),
                                             children: <TextSpan>[
                                               TextSpan(
                                                   text: 'Status 1',
                                                   style:
                                                   GoogleFonts.roboto(
                                                     color: Color(0xff4E4E4E),
                                                     fontSize: 14,
                                                     fontWeight:
                                                     FontWeight.w400,
                                                   )),
                                             ]),
                                       ),
                                       Text(
                                           'Comment:  ',
                                           style:
                                           GoogleFonts.roboto(
                                             color: Color(0xff4E4E4E),
                                             fontSize: 14,
                                             fontWeight:
                                             FontWeight.w400,
                                           )
                                       ),

                                     ],),
                                 ),


                               ),

                             ),

                           ),
                         ),
                       ],
                     ),
                   ),



                 ),
                SizedBox(
                  height: 20,
                ),
                GridView.builder(

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: MediaQuery.of(context).
                      size.width/(MediaQuery.of(context).size.height / 3.8),

                    ),
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (
                      BuildContext context, position) {
                      return GestureDetector(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(10)),
                          elevation: 5,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(image:
                              AssetImage("assets/images/property_details_inside_pictures.jpg",
                              ),

                              ),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),

                        ),
                      );
                  },),
                 SizedBox(
                   height: 20,
                 ),
                 GestureDetector(
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
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [

                         Row(
                           children: [
                             Text("Upload Photo",style: TextStyle(
                               fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white
                             ),),
                           ],
                         ),
                         Icon(Icons.upload,color: Colors.white,)
                       ],
                     ),

                     /*Icon(
                       Icons.add,
                       color: Colors.black26,
                       size: 40,
                     ),*/

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
                                 selectedImages[index] ,
                               ),
                                   fit: BoxFit.cover
                               )
                           ),
                         );


                       }),

                 ),


               ],
             ),

           ),
         ),


    ]
      ),
      floatingActionButton:  SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        animatedIconTheme: IconThemeData(size: 28.0),
        backgroundColor: Colors.blue,
        visible: true,
        curve: Curves.bounceInOut,
        children: [

          SpeedDialChild(
            child: Icon(Icons.home,
                color: Colors.blue),
            backgroundColor: Colors.white,

            onTap: (){
              showDialog(context: context,
                  builder: (context){
                    return StatefulBuilder(

                        builder: (BuildContext context,
                            StateSetter setState) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            title: Text('Furnishing Work',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
                            content: Card(
                              color: Colors.transparent,
                              elevation: 0.0,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                               children: [
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
                                         contentPadding: EdgeInsets.symmetric(
                                           horizontal: 10,)),
                                     child: DropdownButtonHideUnderline(
                                       child: DropdownButton<String>(
                                         style: GoogleFonts.roboto(fontSize: 16,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black26,),
                                         dropdownColor: Colors.white,
                                         borderRadius: BorderRadius.circular(10),
                                         value: WorkType,
                                         isExpanded: true,
                                         icon: Icon(
                                             Icons.keyboard_arrow_down,
                                             size: 30,
                                             color: Colors.black54
                                         ),
                                         hint: Text("Work Type",
                                           style: GoogleFonts.roboto(
                                               color: Colors.black26,
                                               fontSize: 16,
                                               fontWeight: FontWeight.w500
                                           ),
                                         ),
                                         elevation: 1,
                                         underline: Container(
                                           height: 1, color: Colors.black45,
                                         ),
                                         onChanged: (value) {
                                           setState(() {
                                             WorkType = value;

                                             //  gender = newValue!;

                                           });
                                         },
                                         items: worktype.map<
                                             DropdownMenuItem<String>>((index) {
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
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                     color: Colors.grey.shade100,


                                     borderRadius: BorderRadius.all(
                                         Radius.circular(15)),

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
                                         value: WorkList,
                                         isExpanded: true,
                                         icon: Icon(
                                             Icons.keyboard_arrow_down,
                                             size: 30,
                                             color: Colors.black54
                                         ),
                                         hint: Text("Work List",
                                           style: GoogleFonts.roboto(
                                               color: Colors.black26,
                                               fontSize: 16,
                                               fontWeight: FontWeight.w500
                                           ),
                                         ),
                                         elevation: 1,
                                         underline: Container(
                                           height: 1, color: Colors.black45,
                                         ),
                                         onChanged: (value) {
                                           setState(() {
                                             WorkList = value;

                                             //  gender = newValue!;

                                           });
                                         },
                                         items: worklist.map<
                                             DropdownMenuItem<String>>((index) {
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
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                     color: Colors.grey.shade100,


                                     borderRadius: BorderRadius.all(
                                         Radius.circular(15)),

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
                                         value: AssignTo,
                                         isExpanded: true,
                                         icon: Icon(
                                             Icons.keyboard_arrow_down,
                                             size: 30,
                                             color: Colors.black54
                                         ),
                                         hint: Text("Assign to",
                                           style: GoogleFonts.roboto(
                                               color: Colors.black26,
                                               fontSize: 16,
                                               fontWeight: FontWeight.w500
                                           ),
                                         ),
                                         elevation: 1,
                                         underline: Container(
                                           height: 1, color: Colors.black45,
                                         ),
                                         onChanged: (value) {
                                           setState(() {
                                             AssignTo = value;

                                             //  gender = newValue!;

                                           });
                                         },
                                         items: assignto.map<
                                             DropdownMenuItem<String>>((index) {
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

                          );

                        }
                    );
                  });
            },
            label: 'Furnishing Work',
            labelStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),
          SpeedDialChild(
            child: Icon(Icons.home,
                color: Colors.blue),
            backgroundColor: Colors.white,
            onTap: () {
              showDialog(context: context,
                  builder: (context)
                  {
                    return StatefulBuilder(

                        builder: (BuildContext context,
                            StateSetter    setState) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            title: Text('Owner Doc Collect',

                              style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
                            content: Card(
                              color: Colors.transparent,
                              elevation: 0.0,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                 children: [
                                   GestureDetector(
                                     onTap: () {
                                       selectDoc();
                                     },
                                     child: (selectedDoc.isEmpty)
                                         ? Container(
                                       height: 40,
                                       width: 250,
                                       // color: Colors.lightBlue,
                                       alignment: Alignment.center,

                                       decoration: BoxDecoration(
                                         // color: Colors.lightBlue,

                                         border: Border.all(
                                             color: Colors.black54,
                                             width: 1.5),
                                         borderRadius: BorderRadius.all(
                                             Radius.circular(10)),
                                       ),
                                       child: Row(
                                         mainAxisAlignment:
                                         MainAxisAlignment.spaceAround,
                                         children: [
                                           Row(
                                             children: [
                                               Text(
                                                 "Upload Aadhaar",
                                                 style: TextStyle(
                                                     fontSize: 16,
                                                     fontWeight:
                                                     FontWeight.w400,
                                                     color: Colors.black),
                                               ),
                                             ],
                                           ),
                                           Icon(
                                             Icons.upload,
                                             color: Colors.black,
                                           )
                                         ],
                                       ),

                                     )
                                         : GridView.builder(
                                         shrinkWrap: true,
                                         //  physics: NeverScrollableScrollPhysics(),
                                         itemCount: selectedDoc.length,
                                         gridDelegate:
                                         SliverGridDelegateWithFixedCrossAxisCount(

                                           crossAxisCount: 2,
                                           crossAxisSpacing: 10,
                                           mainAxisSpacing: 10,
                                           childAspectRatio:
                                           MediaQuery.of(context)
                                               .size
                                               .width /
                                               (MediaQuery.of(context)
                                                   .size
                                                   .height /
                                                   4.8),
                                         ),
                                         itemBuilder:
                                             (BuildContext context, int index) {
                                           return Container(
                                             height: 100,
                                             width: 70,
                                             alignment: Alignment.center,
                                             decoration: BoxDecoration(
                                                 border: Border.all(
                                                     color: Colors.grey,
                                                     width: 1),
                                                 borderRadius: BorderRadius.all(
                                                     Radius.circular(10)),
                                                 image: DecorationImage(
                                                     image: FileImage(
                                                       selectedDoc[index],
                                                     ),
                                                     fit: BoxFit.cover)),
                                           );
                                         }),
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
            label: 'Owner Document',
            labelStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),
          SpeedDialChild(
            child: Icon(Icons.home,
                color: Colors.blue),
            backgroundColor: Colors.white,
            onTap: () {
              showDialog(context: context,
                  builder: (context)
                  {
                    return StatefulBuilder(

                        builder: (BuildContext context,
                            StateSetter    setState) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            title: Text('Agreement shared',

                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
                            content: Card(
                              color: Colors.transparent,
                              elevation: 0.0,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                                fillColor: MaterialStateColor.resolveWith((states) =>
                                                Colors.blue),
                                                value: 1,
                                                groupValue: id,
                                                onChanged: (value){
                                                  setState(() {
                                                    // radioButtonItem = 'ONE';
                                                    id = 1;
                                                  });
                                                }
                                            ),
                                            Text("Yes",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                                fillColor: MaterialStateColor.resolveWith((states) =>
                                                Colors.blue),
                                                value: 2,
                                                groupValue: id,
                                                onChanged: (value){
                                                  setState(() {
                                                    // radioButtonItem = 'Two';
                                                    id = 2;
                                                  });

                                                }
                                            ),
                                            Text("No",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFieldWidget(
                                        controller: comment2Controller,
                                        obscureText: false,
                                        inputType: TextInputType.text,
                                        text: "",
                                        hintText: 'Comment',
                                        cursorColor: Color(0xff2972FF),
                                        inputAction: TextInputAction.done,
                                        Maxline: 4),
                                    SizedBox(
                                      height: 20,
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
            label: 'Agreement shared',
            labelStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),
          SpeedDialChild(
            child: Icon(Icons.home,
                color: Colors.blue),
            backgroundColor: Colors.white,
            onTap: () {
              showDialog(context: context,
                  builder: (context)
                  {
                    return StatefulBuilder(

                        builder: (BuildContext context,
                            StateSetter    setState) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            title: Text('Signature Agreement',

                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
                            content: Card(
                              color: Colors.transparent,
                              elevation: 0.0,
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(

                                            children: [
                                              Radio(
                                                  fillColor: MaterialStateColor.resolveWith((states) =>
                                                  Colors.blue),
                                                  value: 1,
                                                  groupValue: id,
                                                  onChanged: (value){
                                                    setState(() {
                                                      // radioButtonItem = 'ONE';
                                                      id = 1;
                                                    });
                                                  }
                                              ),
                                              Text("Yes",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Radio(
                                                  fillColor: MaterialStateColor.resolveWith((states) =>
                                                  Colors.blue),
                                                  value: 2,
                                                  groupValue: id,
                                                  onChanged: (value){
                                                    setState(() {
                                                      // radioButtonItem = 'Two';
                                                      id = 2;
                                                    });

                                                  }
                                              ),
                                              Text("No",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextFieldWidget(
                                          controller: comment3Controller,
                                          obscureText: false,
                                          inputType: TextInputType.text,
                                          text: "",
                                          hintText: 'Comment',
                                          cursorColor: Color(0xff2972FF),
                                          inputAction: TextInputAction.done,
                                          Maxline: 4),
                                      SizedBox(
                                        height: 20,
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
                            ),
                          );

                        }
                    );
                  });
            },
            label: 'Signature Agreement',
            labelStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),
        ],
      ),

    );
  }
}

//import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:stayhook_main/Screens/move_in_screen.dart';
import 'package:timelines/timelines.dart';

import '../Widgets/button1_widget.dart';
import '../Widgets/textfeild_widget.dart';

class TokenScreen extends StatefulWidget {
  final String device;

  const TokenScreen({super.key, required this.device});

  @override
  State<TokenScreen> createState() => _TokenScreenState();
}

class _TokenScreenState extends State<TokenScreen> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  final TextEditingController date1Controller = TextEditingController();
  final TextEditingController time1Controller = TextEditingController();
  final TextEditingController comment1Controller = TextEditingController();
  final TextEditingController uploadController = TextEditingController();
  final TextEditingController monthlyController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController transactionController = TextEditingController();
  List property = ["Property 1", "Property 2", "Property 3"];
  var Property;
  List status = ["Status 1", "Status 2", "Status 3"];
  var Status;
  List property1 = ["Property 1", "Property 2", "Property 3"];
  var Property1;
  List status1 = ["status 1", "status 2", "status 3"];
  var Status1;

  List against = ["Property 1", "Property 2", "Property 3"];
  var Against;
  List mode = ["Mode 1", "Mode 2", "Mode 3"];
  var Mode;
  List worktype = [
    "Leakage",
    "Change Tabs",
    "Pipe Fitting",
    " Sink Repair",
    "Washroom Leakage"
  ];
  var WorkType;
  List worklist = ["WorkList 1", "WorkList 2", "WorkList 3"];
  var WorkList;
  List assignto = ["AssignTo 1", "AssignTo 2", "AssignTo 3"];
  var AssignTo;

  bool _isChecked = false;
  bool _isChecked2 = false;
  List<File> selectedImages = [];
  List<XFile> pickedFile = [];
  final picker = ImagePicker();

  void selectImage() async {
    pickedFile = await picker.pickMultiImage(
      imageQuality: 50,
    );
    setState(() {
      if (pickedFile.isNotEmpty) {
        for (var i = 0; i < pickedFile.length; i++) {
          selectedImages.add(File(pickedFile[i].path));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        leadingWidth: 35,
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
        title: Text("Token",
            style: GoogleFonts.roboto(
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MoveInScreen(device: 'device')));
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xff2972FF),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'Swift to Move In',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
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
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.118,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            margin: EdgeInsets.only(bottom: 7.5, top: 7.5),
                            color: Colors.white,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg"),
                                        radius: 35,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                  text: 'TL : ',
                                                  style: GoogleFonts.roboto(
                                                    color: Color(0xff2F2E41),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'SH 00001',
                                                        style:
                                                            GoogleFonts.roboto(
                                                          color:
                                                              Color(0xff4E4E4E),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ]),
                                            ),
                                            Text("Gajendra Singh",
                                                style: GoogleFonts.roboto(
                                                  color: Color(0xff4E4E4E),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text('gajendrasingh@gmail.com ',
                                                style: GoogleFonts.roboto(
                                                  color: Color(0xff4E4E4E),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text('M: +91 9897223366 ',
                                                style: GoogleFonts.roboto(
                                                  color: Color(0xff4E4E4E),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            RichText(
                                              text: TextSpan(
                                                  text: 'Budget: ',
                                                  style: GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: '15000.',
                                                        style:
                                                            GoogleFonts.roboto(
                                                          color:
                                                              Color(0xff4E4E4E),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ]),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                  text: 'Type: ',
                                                  style: GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Private/Sheared',
                                                        style:
                                                            GoogleFonts.roboto(
                                                          color:
                                                              Color(0xff4E4E4E),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ]),
                                            ),
                                          ],
                                        ),
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
                                        "assets/icons/green_circul_button.png",
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
                                            Text("B4,1004,Panchsheel",
                                                style: GoogleFonts.roboto(
                                                  color: Color(0xff4E4E4E),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("Greens-2,Sector 16,Noida Up",
                                                style: GoogleFonts.roboto(
                                                  color: Color(0xff4E4E4E),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("201301.",
                                                style: GoogleFonts.roboto(
                                                  color: Color(0xff4E4E4E),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
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
                        );
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              ),
                                              child: TextField(
                                                controller: dateController,
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                  border: InputBorder.none,

                                                  //  prefixIcon: Icon(Icons.phone),

                                                  hintText: 'Date',
                                                  hintStyle: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xffB7B8B8)),
                                                ),
                                                onTap: () async {
                                                  DateTime? pickedDate =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(2000),
                                                    lastDate: DateTime(2101),
                                                  );
                                                  if (pickedDate != null) {
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(pickedDate);
                                                    setState(() {
                                                      dateController.text =
                                                          formattedDate
                                                              .toString();
                                                    });
                                                  } else {
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              ),
                                              child: TextField(
                                                  controller: timeController,
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 10,
                                                            vertical: 10),
                                                    border: InputBorder.none,

                                                    //  prefixIcon: Icon(Icons.phone),

                                                    hintText: 'Time',
                                                    hintStyle:
                                                        GoogleFonts.roboto(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xffB7B8B8)),
                                                  ),
                                                  onTap: () async {
                                                    final TimeOfDay? newTime =
                                                        await showTimePicker(
                                                      context: context,
                                                      initialTime:
                                                          TimeOfDay.now(),
                                                    );
                                                    setState(() {
                                                      timeController.text =
                                                          newTime!
                                                              .format(context);
                                                    });
                                                  }),
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
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                    )),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: DropdownButton<String>(
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black26,
                                                    ),
                                                    dropdownColor: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    value: Property,
                                                    isExpanded: true,
                                                    icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down,
                                                        size: 30,
                                                        color: Colors.black54),
                                                    hint: Text(
                                                      "Select Property",
                                                      style: GoogleFonts.roboto(
                                                          color: Colors.black26,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
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
                                                            textStyle:
                                                                TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
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
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                    )),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: DropdownButton<String>(
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black26,
                                                    ),
                                                    dropdownColor: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    value: Status,
                                                    isExpanded: true,
                                                    icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down,
                                                        size: 30,
                                                        color: Colors.black54),
                                                    hint: Text(
                                                      "Status",
                                                      style: GoogleFonts.roboto(
                                                          color: Colors.black26,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
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
                                                            textStyle:
                                                                TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
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
                                                inputAction:
                                                    TextInputAction.done,
                                                Maxline: 4),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                                onTap: () {},
                                                child: Button1Widget(
                                                  text: "Save Change",
                                                  color: Colors.blue,
                                                  textColor: Colors.white,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
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
                          showDialog(
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              ),
                                              child: TextField(
                                                controller: date1Controller,
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                  border: InputBorder.none,

                                                  //  prefixIcon: Icon(Icons.phone),

                                                  hintText: 'Date',
                                                  hintStyle: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xffB7B8B8)),
                                                ),
                                                onTap: () async {
                                                  DateTime? pickedDate =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(2000),
                                                    lastDate: DateTime(2101),
                                                  );
                                                  if (pickedDate != null) {
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(pickedDate);
                                                    setState(() {
                                                      date1Controller.text =
                                                          formattedDate
                                                              .toString();
                                                    });
                                                  } else {
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              ),
                                              child: TextField(
                                                  controller: time1Controller,
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 10,
                                                            vertical: 10),
                                                    border: InputBorder.none,

                                                    //  prefixIcon: Icon(Icons.phone),

                                                    hintText: 'Time',
                                                    hintStyle:
                                                        GoogleFonts.roboto(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xffB7B8B8)),
                                                  ),
                                                  onTap: () async {
                                                    final TimeOfDay? newTime =
                                                        await showTimePicker(
                                                      context: context,
                                                      initialTime:
                                                          TimeOfDay.now(),
                                                    );
                                                    setState(() {
                                                      time1Controller.text =
                                                          newTime!
                                                              .format(context);
                                                    });
                                                  }),
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
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                    )),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: DropdownButton<String>(
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black26,
                                                    ),
                                                    dropdownColor: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    value: Property1,
                                                    isExpanded: true,
                                                    icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down,
                                                        size: 30,
                                                        color: Colors.black54),
                                                    hint: Text(
                                                      "Select Property",
                                                      style: GoogleFonts.roboto(
                                                          color: Colors.black26,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
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
                                                            String>>((index) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: index,
                                                        child: Text(
                                                          index,
                                                          style: GoogleFonts
                                                              .dmSans(
                                                            textStyle:
                                                                TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
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
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                    )),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: DropdownButton<String>(
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black26,
                                                    ),
                                                    dropdownColor: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    value: Status1,
                                                    isExpanded: true,
                                                    icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down,
                                                        size: 30,
                                                        color: Colors.black54),
                                                    hint: Text(
                                                      "Status",
                                                      style: GoogleFonts.roboto(
                                                          color: Colors.black26,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
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
                                                            String>>((index) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: index,
                                                        child: Text(
                                                          index,
                                                          style: GoogleFonts
                                                              .dmSans(
                                                            textStyle:
                                                                TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
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
                                                inputType: TextInputType.text,
                                                text: "",
                                                hintText: 'Comment',
                                                cursorColor: Color(0xff2972FF),
                                                inputAction:
                                                    TextInputAction.done,
                                                Maxline: 4),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                                onTap: () {},
                                                child: Button1Widget(
                                                  text: "Save Change",
                                                  color: Colors.blue,
                                                  textColor: Colors.white,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
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
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 15, left: 10, right: 10),
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: ListTile(
                                    title: RichText(
                                      text: TextSpan(
                                          text: 'Call Scheduled ',
                                          style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
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
                                        Text('Call Date : 12/01/2023 ',
                                            style: GoogleFonts.roboto(
                                              color: Color(0xff4E4E4E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            )),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text('Call Time : 3.50 pm ',
                                            style: GoogleFonts.roboto(
                                              color: Color(0xff4E4E4E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            )),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: 'Select Property : ',
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Property 1',
                                                    style: GoogleFonts.roboto(
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
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Status 1',
                                                    style: GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    )),
                                              ]),
                                        ),
                                        Text('Comment:  ',
                                            style: GoogleFonts.roboto(
                                              color: Color(0xff4E4E4E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      ],
                                    ),
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
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 15, left: 10, right: 10),
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: ListTile(
                                    title: RichText(
                                      text: TextSpan(
                                          text: 'Schedule Meet Scheduled ',
                                          style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
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
                                        Text('Call Date : 12/01/2023 ',
                                            style: GoogleFonts.roboto(
                                              color: Color(0xff4E4E4E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            )),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text('Call Time : 3:50 pm ',
                                            style: GoogleFonts.roboto(
                                              color: Color(0xff4E4E4E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            )),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: 'Select Property : ',
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Property 1',
                                                    style: GoogleFonts.roboto(
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
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Status 1',
                                                    style: GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    )),
                                              ]),
                                        ),
                                        Text('Comment:  ',
                                            style: GoogleFonts.roboto(
                                              color: Color(0xff4E4E4E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      ],
                                    ),
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
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 15, left: 10, right: 10),
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: ListTile(
                                    title: RichText(
                                      text: TextSpan(
                                          text:
                                              'Rahul Create Furnishing Work: ',
                                          style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
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
                                        RichText(
                                          text: TextSpan(
                                              text: 'Work Type: ',
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Plumbing (List)',
                                                    style: GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    )),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: 'Assign to: ',
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Raju (Plumber)',
                                                    style: GoogleFonts.roboto(
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
                                              text: 'Assigned On : ',
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: '13 jan 2024',
                                                    style: GoogleFonts.roboto(
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
                                      ],
                                    ),
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
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 15, left: 10, right: 10),
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: ListTile(
                                    title: RichText(
                                      text: TextSpan(
                                          text: 'Rahul Collected Document: ',
                                          style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
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
                                        RichText(
                                          text: TextSpan(
                                              text: 'Tenant ID: ',
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Aadhaar(View)',
                                                    style: GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    )),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                      ],
                                    ),
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
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 15, left: 10, right: 10),
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: ListTile(
                                    title: RichText(
                                      text: TextSpan(
                                          text: 'Rahul Collected Document: ',
                                          style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
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
                                        RichText(
                                          text: TextSpan(
                                              text: 'Agreement: ',
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Agreement(View)',
                                                    style: GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    )),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                      ],
                                    ),
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
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 15, left: 10, right: 10),
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: ListTile(
                                    title: RichText(
                                      text: TextSpan(
                                          text: 'Rahul Collected Document: ',
                                          style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
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
                                        RichText(
                                          text: TextSpan(
                                              text: 'Police Verification: ',
                                              style: GoogleFonts.roboto(
                                                color: Color(0xff4E4E4E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Police Repost (View)',
                                                    style: GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    )),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        animatedIconTheme: IconThemeData(size: 28.0),
        backgroundColor: Colors.blue,
        visible: true,
        curve: Curves.bounceInOut,
        children: [
          SpeedDialChild(
            child: Icon(Icons.home, color: Colors.blue),
            backgroundColor: Colors.white,
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        title: Text('Documentation',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Color(0xff000000),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            )),
                        content: Card(
                          color: Colors.transparent,
                          elevation: 0.0,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  selectImage();
                                },
                                child: (selectedImages.isEmpty)
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
                                        itemCount: selectedImages.length,
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
                                                      selectedImages[index],
                                                    ),
                                                    fit: BoxFit.cover)),
                                          );
                                        }),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
                  });
            },
            label: 'Documentation',
            labelStyle:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),
          SpeedDialChild(
            child: Icon(Icons.home, color: Colors.blue),
            backgroundColor: Colors.white,
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        title: Text('Furnishing Work',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Color(0xff000000),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            )),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: InputDecorator(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      )),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26,
                                      ),
                                      dropdownColor: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      value: WorkType,
                                      isExpanded: true,
                                      icon: Icon(Icons.keyboard_arrow_down,
                                          size: 30, color: Colors.black54),
                                      hint: Text(
                                        "Work Type",
                                        style: GoogleFonts.roboto(
                                            color: Colors.black26,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      elevation: 1,
                                      underline: Container(
                                        height: 1,
                                        color: Colors.black45,
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          WorkType = value;

                                          //  gender = newValue!;
                                        });
                                      },
                                      items: worktype
                                          .map<DropdownMenuItem<String>>(
                                              (index) {
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: InputDecorator(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      )),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26,
                                      ),
                                      dropdownColor: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      value: WorkList,
                                      isExpanded: true,
                                      icon: Icon(Icons.keyboard_arrow_down,
                                          size: 30, color: Colors.black54),
                                      hint: Text(
                                        "Work List",
                                        style: GoogleFonts.roboto(
                                            color: Colors.black26,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      elevation: 1,
                                      underline: Container(
                                        height: 1,
                                        color: Colors.black45,
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          WorkList = value;

                                          //  gender = newValue!;
                                        });
                                      },
                                      items: worklist
                                          .map<DropdownMenuItem<String>>(
                                              (index) {
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: InputDecorator(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      )),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26,
                                      ),
                                      dropdownColor: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      value: AssignTo,
                                      isExpanded: true,
                                      icon: Icon(Icons.keyboard_arrow_down,
                                          size: 30, color: Colors.black54),
                                      hint: Text(
                                        "Assign to",
                                        style: GoogleFonts.roboto(
                                            color: Colors.black26,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      elevation: 1,
                                      underline: Container(
                                        height: 1,
                                        color: Colors.black45,
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          AssignTo = value;

                                          //  gender = newValue!;
                                        });
                                      },
                                      items: assignto
                                          .map<DropdownMenuItem<String>>(
                                              (index) {
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
                                  onTap: () {},
                                  child: Button1Widget(
                                    text: "Save Change",
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    width: MediaQuery.of(context).size.width,
                                  )),
                            ],
                          ),
                        ),
                      );
                    });
                  });
            },
            label: 'Furnishing Work',
            labelStyle:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),
          /* SpeedDialChild(
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
                      title: Text('Token',
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        // tristate: true,
                                        value: _isChecked,
                                        onChanged: (value) {
                                          setState(() {
                                            _isChecked = value!;
                                          });
                                        },
                                      ),
                                      Text("Collected", style: TextStyle(
                                          color: Color(0xff4C4E64),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),)


                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              4.0),
                                        ),
                                        activeColor: Colors.cyan,
                                        checkColor: Colors.white,
                                        splashRadius: 20,
                                        // tristate: true,
                                        value: _isChecked2,
                                        onChanged: (value) {
                                          setState(() {
                                            _isChecked2 = value!;
                                          });
                                        },
                                      ),
                                      Text(" Not Collected", style: TextStyle(
                                          color: Color(0xff4C4E64),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),)


                                    ],
                                  ),
                                ],
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
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10,)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      style: GoogleFonts.roboto(fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26,),
                                      dropdownColor: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      value: Against,
                                      isExpanded: true,
                                      icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 30,
                                          color: Colors.black54
                                      ),
                                      hint: Text("Against",
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
                                          Against = value;

                                          //  gender = newValue!;

                                        });
                                      },
                                      items: against.map<
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
                                height: 10,
                              ),
                              TextFieldWidget(
                                  controller: monthlyController,
                                  obscureText: false,
                                  inputType: TextInputType.text,
                                  text: "",
                                  hintText: 'Monthly Rent',
                                  cursorColor: Color(0xff2972FF),
                                  inputAction: TextInputAction.done,
                                  Maxline: 1),
                              SizedBox(
                                height: 10,
                              ),
                              TextFieldWidget(
                                  controller: amountController,
                                  obscureText: false,
                                  inputType: TextInputType.text,
                                  text: "",
                                  hintText: 'Amount',
                                  cursorColor: Color(0xff2972FF),
                                  inputAction: TextInputAction.done,
                                  Maxline: 1),

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
                                      value: Mode,
                                      isExpanded: true,
                                      icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 30,
                                          color: Colors.black54
                                      ),
                                      hint: Text("Mode",
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
                                          Mode = value;

                                          //  gender = newValue!;

                                        });
                                      },
                                      items: mode.map<
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
                                height: 10,
                              ),
                              TextFieldWidget(
                                  controller: transactionController,
                                  obscureText: false,
                                  inputType: TextInputType.text,
                                  text: "",
                                  hintText: 'Transaction Number',
                                  cursorColor: Color(0xff2972FF),
                                  inputAction: TextInputAction.done,
                                  Maxline: 1),
                              SizedBox(
                                height: 10,
                              ),

                              TextFieldWidget(
                                  controller: uploadController,
                                  obscureText: false,
                                  inputType: TextInputType.text,
                                  text: "",
                                  hintText: 'Upload Proof',
                                  cursorColor: Color(0xff2972FF),
                                  inputAction: TextInputAction.done,
                                  Maxline: 1),
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
                              SizedBox(
                                height: 20,
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
            label: 'Token',
            labelStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),*/
        ],
      ),
    );
  }
}

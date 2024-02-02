import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';

import '../Widgets/button1_widget.dart';
import '../Widgets/textfeild_widget.dart';

class ReadyScreen extends StatefulWidget {
  final String device;
  const ReadyScreen({super.key, required this.device});

  @override
  State<ReadyScreen> createState() => _ReadyScreenState();
}

class _ReadyScreenState extends State<ReadyScreen> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  final TextEditingController date1Controller = TextEditingController();
  final TextEditingController time1Controller = TextEditingController();
  final TextEditingController comment1Controller = TextEditingController();
  final TextEditingController comment2Controller = TextEditingController();
  final TextEditingController comment3Controller = TextEditingController();
  final TextEditingController comment4Controller = TextEditingController();

  List property = ["Property 1","Property 2","Property 3"];
  var Property;
  List status = ["status 1","status 2","status 3"];
  var Status;
  List property1 = ["Property 1","Property 2","Property 3"];
  var Property1;
  List status1 = ["status 1","status 2","status 3"];
  var Status1;
  List assign = ["Assign 1","Assign 2","Assign 3"];
  var Assign;
  int? id = -1;
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

        title: Text("Ready",
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
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )),
                            RichText(
                              text: TextSpan(
                                  text: 'Owner : ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Gajendra Singh',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Revenue Share : ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '50%',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Status : ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
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
                                          style: GoogleFonts.roboto(
                                            color: const Color(
                                                0xffA9A9AA),
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.w400,
                                          )),
                                      Text("Ready, Availability",
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
                                        title:  Text('Call',
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
                                                TextFieldWidget(
                                                    controller: dateController,
                                                    obscureText: false,
                                                    inputType: TextInputType.text,
                                                    text: "",
                                                    hintText: 'Date',
                                                    cursorColor: Color(0xff2972FF),
                                                    inputAction: TextInputAction
                                                        .done,
                                                    Maxline: 1),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                TextFieldWidget(
                                                    controller: timeController,
                                                    obscureText: false,
                                                    inputType: TextInputType.text,
                                                    text: "",
                                                    hintText: 'Time',
                                                    cursorColor: Color(0xff2972FF),
                                                    inputAction: TextInputAction
                                                        .done,
                                                    Maxline: 1),
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
                                                TextFieldWidget(
                                                    controller: date1Controller,
                                                    obscureText: false,
                                                    inputType: TextInputType
                                                        .text,
                                                    text: "",
                                                    hintText: 'Date',
                                                    cursorColor: Color(
                                                        0xff2972FF),
                                                    inputAction: TextInputAction
                                                        .done,
                                                    Maxline: 1),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                TextFieldWidget(
                                                    controller: time1Controller,
                                                    obscureText: false,
                                                    inputType: TextInputType
                                                        .text,
                                                    text: "",
                                                    hintText: 'Time',
                                                    cursorColor: Color(
                                                        0xff2972FF),
                                                    inputAction: TextInputAction
                                                        .done,
                                                    Maxline: 1),
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
                      child: Timeline.tileBuilder(
                          theme: TimelineThemeData(
                            nodePosition: 0,
                            color: Colors.blue,
                            connectorTheme:
                            ConnectorThemeData(thickness: 3.0),
                          ),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          builder: TimelineTileBuilder.fromStyle(
                              itemCount: 5,
                              contentsAlign: ContentsAlign.basic,
                              contentsBuilder: (context, index) => Card(
                                margin: EdgeInsets.only(
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
                                          text: 'Created by : ',
                                          style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.w500,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'Sunita Singh',
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
                                          '12 March 2023, 10:41 PM ',
                                          style: GoogleFonts.roboto(
                                            color: Color(0xff4E4E4E),
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          'Had a call with tenant and we wants to meet. ',
                                          style: GoogleFonts.roboto(
                                            color: Color(0xff4E4E4E),
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),

                                      ],),
                                  ),

                                ),
                              ))),
                    ),

                  ),


                ],
              ),
            ),
          )

        ],
      ),
      floatingActionButton:  SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        animatedIconTheme: IconThemeData(size: 28.0),
        backgroundColor: Colors.blue,
        visible: true,
        curve: Curves.bounceInOut,
        children: [
          SpeedDialChild(
            child: Icon(
                Icons.home,
                color: Colors.blue),
            backgroundColor: Colors.white,
            onTap: (){
              showDialog(context: context,
                  builder: (context){
                    return StatefulBuilder(

                        builder: (BuildContext context,
                            StateSetter   setState) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10))
                            ),
                            title: Text('Payment Work', style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,),
                            content: Card(
                              color: Colors.transparent,
                              elevation: 0.0,
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
                                      Row(
                                        children: [
                                          Radio(
                                              fillColor: MaterialStateColor.resolveWith((states) =>
                                              Colors.blue),
                                              value: 3,
                                              groupValue: id,
                                              onChanged: (value){
                                                setState(() {
                                                  // radioButtonItem = 'ONE';
                                                  id = 3;
                                                });
                                              }
                                          ),
                                          Text("Not Sure",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
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
                          );

                        }
                    );
                  }
              );
            },
            label: 'Payment Work',
            labelStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),
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
                            title: Text('Keys Collection', style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
                            content: Card(
                              color: Colors.transparent,
                              elevation: 0.0,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                          Text("Not Collected",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
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
                                          Text("Collected",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
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

                          );

                        }
                    );
                  });
            },
            label: 'Keys Collection',
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
                            title: Text('Assign Broker', style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
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
                                            value: Assign,
                                            isExpanded: true,
                                            icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down,
                                                size: 30,
                                                color: Colors.black54
                                            ),
                                            hint: Text(
                                              "Assign person",
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
                                                Assign = value;

                                                //  gender = newValue!;

                                              });
                                            },
                                            items: assign.map<
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
                                        controller: comment4Controller,
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
            label: 'Assign Broker',
            labelStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),
        ],
      ),

    );
  }
}

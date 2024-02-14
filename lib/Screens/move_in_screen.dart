import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timelines/timelines.dart';

import '../Widgets/button1_widget.dart';
import '../Widgets/textfeild_widget.dart';

class MoveInScreen extends StatefulWidget {
  final String device;
  const MoveInScreen({super.key, required this.device});

  @override
  State<MoveInScreen> createState() => _MoveInScreenState();
}

class _MoveInScreenState extends State<MoveInScreen> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  final TextEditingController date1Controller = TextEditingController();
  final TextEditingController time1Controller = TextEditingController();
  final TextEditingController comment1Controller = TextEditingController();
  final TextEditingController comment2Controller = TextEditingController();
  final TextEditingController rentController = TextEditingController();

  List builder = ["Property 1","Property 2","Property 3"];
  var Builder;
  List society = ["status 1","status 2","status 3"];
  var Society;
  List property2 = ["status 1","status 2","status 3"];
  var Property2;

  List property = ["Property 1","Property 2","Property 3"];
  var Property;
  List status = ["status 1","status 2","status 3"];
  var Status;
  List property1 = ["Property 1","Property 2","Property 3"];
  var Property1;
  List status1 = ["status 1","status 2","status 3"];
  var Status1;
  List owner = ["Owner 1","Owner 2","Owner 3"];
  var Owner;
  List status2 = ["Status 1","Status 2","Status 3"];
  var Status2;
  List finalproperty = ["B4,1004,Panchsheel Green-2","B4,1004,Panchsheel Green-4","B4,1004,Panchsheel Green-8"];
  var Finalproperty;
  List type = ["Shared","Private"];
  var Type ;
  List status3 = [" Incomplete KYC", "Hold", "Move IN", "Cancelled"];
  var Status3;
  bool _isChecked = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  int? id = -1;
  int? id1 = -1;
  int? id2 = -1;
  int? id3 = -1;
  int? id4 = -1;

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

        title: Text("Move In",
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
                                margin:
                                EdgeInsets.only(bottom: 7.5, top: 7.5),
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
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
                                                      style:
                                                      GoogleFonts.roboto(
                                                        color: Color(0xff4E4E4E),
                                                        fontSize: 14,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: 'SH 00001',
                                                            style:
                                                            GoogleFonts.roboto(
                                                              color: Color(0xff4E4E4E),
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight.w400,
                                                            )),
                                                      ]),
                                                ),
                                                Text("Gajendra Singh",
                                                    style:
                                                    GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                    )),
                                                Text(
                                                  'gajendrasingh@gmail.com ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  'm: +91 9897223366 ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                      text: 'Budget: ',
                                                      style:
                                                      GoogleFonts.roboto(
                                                        color: Color(0xff4E4E4E),
                                                        fontSize: 14,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: '15000.',
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
                                                      text: 'Type: ',
                                                      style:
                                                      GoogleFonts.roboto(
                                                        color: Color(0xff4E4E4E),
                                                        fontSize: 14,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: 'Private/Sheared',
                                                            style:
                                                            GoogleFonts.roboto(
                                                              color: Color(0xff4E4E4E),
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
                                                    style:
                                                    GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                    )),
                                                Text("Greens-2,Sector 16,Noida Up",
                                                    style:
                                                    GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                    )),
                                                Text("201301.",
                                                    style:
                                                    GoogleFonts.roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                      FontWeight.w400,
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
                              showDialog(context: context,
                                  builder: (context){
                                    return StatefulBuilder(

                                      builder: (BuildContext context,
                                    StateSetter    setState) {
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
                                                      color: Colors.grey
                                                          .shade100,


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
                                                          value: Property,
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
                                                            color: Colors
                                                                .black45,
                                                          ),
                                                          onChanged: (value) {
                                                            setState(() {
                                                              Property = value;

                                                              //  gender = newValue!;

                                                            });
                                                          },
                                                          items: property.map<
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
                                                      color: Colors.grey
                                                          .shade100,


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
                                                          value: Status,
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
                                                            color: Colors
                                                                .black45,
                                                          ),
                                                          onChanged: (value) {
                                                            setState(() {
                                                              Status = value;

                                                              //  gender = newValue!;

                                                            });
                                                          },
                                                          items: status.map<
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
                                                      controller: commentController,
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
                                          title:  Text('Schedule meet',
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
                                                      color: Colors.grey
                                                          .shade100,


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
                                                            color: Colors
                                                                .black45,
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
                                                      color: Colors.grey
                                                          .shade100,


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
                                                            color: Colors
                                                                .black45,
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
                                              text: 'Schedule Meet Scheduled ',
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
                                              text: 'Rahul Update Payment: ',
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
                                            RichText(
                                              text: TextSpan(
                                                  text: 'Final Property: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'B4 1004, Panchsheel Greens-2.Sector 16, Noida UP,201301',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'Type: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Shared',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'Rent/Month: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: '\u{20B9}${'2,000'}',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'Rent Collected: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Yes',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'Security Collected: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Yes',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'Agreement Shared: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Yes',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'Key handover: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Yes',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'Owner Email Sent: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Yes',
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
                                                        text: ' Incomplete KYC, Hold, Move IN, Cancelled.',
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
                                              text: 'Move Out: ',
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
                                            RichText(
                                              text: TextSpan(
                                                  text: 'Move Out Date: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: '03/01/2024',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'Inspection Date: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: '04/01/2024',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'Move Out Reason: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: ' ( Society Problem, Owner Request, Criminal Report, Payment Delays, Other) ',
                                                        style:
                                                        GoogleFonts.roboto(
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
                                                  text: 'comment: ',
                                                  style:
                                                  GoogleFonts.roboto(
                                                    color: Color(0xff4E4E4E),
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: '',
                                                        style: GoogleFonts
                                                            .roboto(
                                                          color: Colors.black54,
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight.w400,
                                                        )),
                                                  ]),
                                            ),
                                            SizedBox(
                                              height: 3,
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

                    ],
                  ),
                ),



              ),
            )
          ]
      ),
      floatingActionButton:  SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        animatedIconTheme: IconThemeData(size: 28.0),
        backgroundColor: Colors.blue,
        visible: true,
        curve: Curves.bounceInOut,
        children: [

          /*SpeedDialChild(
            child: Icon(Icons.home,
                color: Colors.blue),
            backgroundColor: Colors.white,
            onTap: (){
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
                          title: Text('Add Property',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black26,),
                                          dropdownColor: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          value: Builder,
                                          isExpanded: true,
                                          icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 30,
                                              color: Colors.black54
                                          ),
                                          hint: Text("Select Builder",
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
                                              Builder = value;

                                              //  gender = newValue!;

                                            });
                                          },
                                          items: builder.map<
                                              DropdownMenuItem<String>>((
                                              index) {
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
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black26,),
                                          dropdownColor: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          value: Society,
                                          isExpanded: true,
                                          icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 30,
                                              color: Colors.black54
                                          ),
                                          hint: Text("Select Society",
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
                                              Society = value;

                                              //  gender = newValue!;

                                            });
                                          },
                                          items: society.map<
                                              DropdownMenuItem<String>>((
                                              index) {
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
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black26,),
                                          dropdownColor: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          value: Property2,
                                          isExpanded: true,
                                          icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 30,
                                              color: Colors.black54
                                          ),
                                          hint: Text("Select Property",
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
                                              Property2 = value;

                                              //  gender = newValue!;

                                            });
                                          },
                                          items: property2.map<
                                              DropdownMenuItem<String>>((
                                              index) {
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
            label: 'Add Property',
            labelStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),*/
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
                    StateSetter  setState) {
                       return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10))
                          ),
                          title: Text('Move-in', style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,),
                          content: Card(
                            color: Colors.transparent,
                            elevation: 0.0,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black26,),
                                          dropdownColor: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          value: Owner,
                                          isExpanded: true,
                                          icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 30,
                                              color: Colors.black54
                                          ),
                                          hint: Text("Owner email",
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
                                              Owner = value;

                                              //  gender = newValue!;

                                            });
                                          },
                                          items: owner.map<
                                              DropdownMenuItem<String>>((
                                              index) {
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
                                  Text("Agreement", style: TextStyle(
                                      color: Color(0xff4C4E64), fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),),
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
                                          Text("Yes", style: TextStyle(
                                              color: Color(0xff4C4E64),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500
                                          ),)


                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 60),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                              // tristate: true,
                                              value: _isChecked2,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isChecked2 = value!;
                                                });
                                              },
                                            ),
                                            Text(" No", style: TextStyle(
                                                color: Color(0xff4C4E64),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500
                                            ),)


                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: 'Move In inspection : ',
                                        style: GoogleFonts.roboto(
                                          color: Color(0xff4C4E64),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Done',
                                              style: GoogleFonts.roboto(
                                                color: Colors.blue,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              )),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: 'Payment Status : ',
                                        style: GoogleFonts.roboto(
                                          color: Color(0xff4C4E64),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Pending',
                                              style: GoogleFonts.roboto(
                                                color: Colors.blue,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              )),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Key Handover", style: TextStyle(
                                      color: Color(0xff4C4E64), fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            // tristate: true,
                                            value: _isChecked3,
                                            onChanged: (value) {
                                              setState(() {
                                                _isChecked3 = value!;
                                              });
                                            },
                                          ),
                                          Text("Yes", style: TextStyle(
                                              color: Color(0xff4C4E64),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500
                                          ),)


                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 60),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                              // tristate: true,
                                              value: _isChecked4,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isChecked4 = value!;
                                                });
                                              },
                                            ),
                                            Text(" No", style: TextStyle(
                                                color: Color(0xff4C4E64),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500
                                            ),)


                                          ],
                                        ),
                                      ),
                                    ],
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
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black26,),
                                          dropdownColor: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          value: Status,
                                          isExpanded: true,
                                          icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 30,
                                              color: Colors.black54
                                          ),
                                          hint: Text("Status",
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
                                              Status = value;

                                              //  gender = newValue!;

                                            });
                                          },
                                          items: status.map<
                                              DropdownMenuItem<String>>((
                                              index) {
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
                                    height: 30,
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
            label: 'Move-in',
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
                            StateSetter  setState) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10))
                            ),
                            title: Text('Update Payment', style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
                            content: Card(
                              color: Colors.transparent,
                              elevation: 0.0,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                           value: Finalproperty,
                                           isExpanded: true,
                                           icon: Icon(
                                               Icons.keyboard_arrow_down,
                                               size: 30,
                                               color: Colors.black54
                                           ),
                                           hint: Text("Final Property",
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
                                               Finalproperty = value;

                                               //  gender = newValue!;

                                             });
                                           },
                                           items: finalproperty.map<
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
                                           value: Type,
                                           isExpanded: true,
                                           icon: Icon(
                                               Icons.keyboard_arrow_down,
                                               size: 30,
                                               color: Colors.black54
                                           ),
                                           hint: Text("Property Type",
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
                                               Type = value;

                                               //  gender = newValue!;

                                             });
                                           },
                                           items: type.map<
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
                                   RichText(
                                     text: TextSpan(
                                         text: 'Rent/Month : ',
                                         style: GoogleFonts.roboto(
                                           color: Color(0xff4C4E64),
                                           fontSize: 16,
                                           fontWeight: FontWeight.w500,
                                         ),
                                         children: <TextSpan>[
                                           TextSpan(
                                               text: '\u{20B9}${'15,000'}',
                                               style: GoogleFonts.roboto(
                                                 color: Colors.blue,
                                                 fontSize: 16,
                                                 fontWeight: FontWeight.w400,
                                               )),
                                         ]),
                                   ),
                                   SizedBox(
                                     height: 10,
                                   ),
                                   Text("Rent Collected", style: TextStyle(
                                       color: Color(0xff4C4E64), fontSize: 16,
                                       fontWeight: FontWeight.w500
                                   ),),
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,

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
                                           Text("Yes",style: TextStyle(
                                               fontSize: 14,fontWeight: FontWeight.w500,
                                               color: Color(0xff000000)),),



                                         ],
                                       ),
                                       SizedBox(
                                         width: 40,
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
                                           Text("No",style: TextStyle(fontSize: 14,
                                               fontWeight: FontWeight.w500,color: Color(0xff000000)),),



                                         ],
                                       ),
                                     ],
                                   ),
                                   SizedBox(
                                     height: 10,
                                   ),
                                   Text("Security Collected", style: TextStyle(
                                       color: Color(0xff4C4E64), fontSize: 16,
                                       fontWeight: FontWeight.w500
                                   ),),
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,

                                     children: [
                                       Row(
                                         children: [
                                           Radio(
                                               fillColor: MaterialStateColor.resolveWith((states) =>
                                               Colors.blue),
                                               value: 1,
                                               groupValue: id1,
                                               onChanged: (value){
                                                 setState(() {
                                                   // radioButtonItem = 'ONE';
                                                   id1 = 1;
                                                 });
                                               }
                                           ),
                                           Text("Yes",style: TextStyle(
                                               fontSize: 14,fontWeight: FontWeight.w500,
                                               color: Color(0xff000000)),),



                                         ],
                                       ),
                                       SizedBox(
                                         width: 40,
                                       ),
                                       Row(

                                         children: [
                                           Radio(
                                               fillColor: MaterialStateColor.resolveWith((states) =>
                                               Colors.blue),
                                               value: 2,
                                               groupValue: id1,
                                               onChanged: (value){
                                                 setState(() {
                                                   // radioButtonItem = 'Two';
                                                   id1 = 2;
                                                 });

                                               }
                                           ),
                                           Text("No",style: TextStyle(fontSize: 14,
                                               fontWeight: FontWeight.w500,color: Color(0xff000000)),),



                                         ],
                                       ),
                                     ],
                                   ),
                                   SizedBox(
                                     height: 10,
                                   ),
                                   Text("Agreement Shared", style: TextStyle(
                                       color: Color(0xff4C4E64), fontSize: 16,
                                       fontWeight: FontWeight.w500
                                   ),),
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,

                                     children: [
                                       Row(
                                         children: [
                                           Radio(
                                               fillColor: MaterialStateColor.resolveWith((states) =>
                                               Colors.blue),
                                               value: 1,
                                               groupValue: id2,
                                               onChanged: (value){
                                                 setState(() {
                                                   // radioButtonItem = 'ONE';
                                                   id2 = 1;
                                                 });
                                               }
                                           ),
                                           Text("Yes",style: TextStyle(
                                               fontSize: 14,fontWeight: FontWeight.w500,
                                               color: Color(0xff000000)),),



                                         ],
                                       ),
                                       SizedBox(
                                         width: 40,
                                       ),
                                       Row(

                                         children: [
                                           Radio(
                                               fillColor: MaterialStateColor.resolveWith((states) =>
                                               Colors.blue),
                                               value: 2,
                                               groupValue: id2,
                                               onChanged: (value){
                                                 setState(() {
                                                   // radioButtonItem = 'Two';
                                                   id2 = 2;
                                                 });

                                               }
                                           ),
                                           Text("No",style: TextStyle(fontSize: 14,
                                               fontWeight: FontWeight.w500,color: Color(0xff000000)),),



                                         ],
                                       ),
                                     ],
                                   ),
                                   SizedBox(
                                     height: 10,
                                   ),
                                   Text("Key Handover", style: TextStyle(
                                       color: Color(0xff4C4E64), fontSize: 16,
                                       fontWeight: FontWeight.w500
                                   ),),
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,

                                     children: [
                                       Row(
                                         children: [
                                           Radio(
                                               fillColor: MaterialStateColor.resolveWith((states) =>
                                               Colors.blue),
                                               value: 1,
                                               groupValue: id3,
                                               onChanged: (value){
                                                 setState(() {
                                                   // radioButtonItem = 'ONE';
                                                   id3 = 1;
                                                 });
                                               }
                                           ),
                                           Text("Yes",style: TextStyle(
                                               fontSize: 14,fontWeight: FontWeight.w500,
                                               color: Color(0xff000000)),),



                                         ],
                                       ),
                                       SizedBox(
                                         width: 40,
                                       ),
                                       Row(

                                         children: [
                                           Radio(
                                               fillColor: MaterialStateColor.resolveWith((states) =>
                                               Colors.blue),
                                               value: 2,
                                               groupValue: id3,
                                               onChanged: (value){
                                                 setState(() {
                                                   // radioButtonItem = 'Two';
                                                   id3 = 2;
                                                 });

                                               }
                                           ),
                                           Text("No",style: TextStyle(fontSize: 14,
                                               fontWeight: FontWeight.w500,color: Color(0xff000000)),),



                                         ],
                                       ),
                                     ],
                                   ),
                                   SizedBox(
                                     height: 10,
                                   ),
                                   Text("Owner Email Sent", style: TextStyle(
                                       color: Color(0xff4C4E64), fontSize: 16,
                                       fontWeight: FontWeight.w500
                                   ),),
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,

                                     children: [
                                       Row(
                                         children: [
                                           Radio(
                                               fillColor: MaterialStateColor.resolveWith((states) =>
                                               Colors.blue),
                                               value: 1,
                                               groupValue: id4,
                                               onChanged: (value){
                                                 setState(() {
                                                   // radioButtonItem = 'ONE';
                                                   id4 = 1;
                                                 });
                                               }
                                           ),
                                           Text("Yes",style: TextStyle(
                                               fontSize: 14,fontWeight: FontWeight.w500,
                                               color: Color(0xff000000)),),



                                         ],
                                       ),
                                       SizedBox(
                                         width: 40,
                                       ),
                                       Row(

                                         children: [
                                           Radio(
                                               fillColor: MaterialStateColor.resolveWith((states) =>
                                               Colors.blue),
                                               value: 2,
                                               groupValue: id4,
                                               onChanged: (value){
                                                 setState(() {
                                                   // radioButtonItem = 'Two';
                                                   id4 = 2;
                                                 });

                                               }
                                           ),
                                           Text("No",style: TextStyle(fontSize: 14,
                                               fontWeight: FontWeight.w500,color: Color(0xff000000)),),



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
                                           value: Status3,
                                           isExpanded: true,
                                           icon: Icon(
                                               Icons.keyboard_arrow_down,
                                               size: 30,
                                               color: Colors.black54
                                           ),
                                           hint: Text("Property Status",
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
                                               Status3 = value;

                                               //  gender = newValue!;

                                             });
                                           },
                                           items:status3.map<
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
                            ),
                          );

                        }
                    );
                  });
            },
            label: 'Update Payment',
            labelStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            labelBackgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

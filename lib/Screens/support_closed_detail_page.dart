import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:stayhook_main/Screens/ticket_action_screen.dart';
import 'package:timelines/timelines.dart';

import '../Widgets/button1_widget.dart';
import '../Widgets/textfeild_widget.dart';

class SupportClosedDetailsPage extends StatefulWidget {
  final String device;
  const SupportClosedDetailsPage({super.key, required this.device});

  @override
  State<SupportClosedDetailsPage> createState() => _SupportClosedDetailsPageState();
}

class _SupportClosedDetailsPageState extends State<SupportClosedDetailsPage> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  final TextEditingController date1Controller = TextEditingController();
  final TextEditingController time1Controller = TextEditingController();
  final TextEditingController comment1Controller = TextEditingController();

  List property = ["Property 1","Property 2","Property 3"];
  var Property;
  List status = ["status 1","status 2","status 3"];
  var Status;
  List property1 = ["Property 1","Property 2","Property 3"];
  var Property1;
  List status1 = ["status 1","status 2","status 3"];
  var Status1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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

        title: Text("Closed",
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
      ) ,
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
                children: [
                  GestureDetector(
                    onTap: (){},
                    child:  Card(
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
                            /*Image.asset("assets/images/property_home_picture.png",width: 400,),*/
                            Text("B4, 1004, Panchsheel Greens -II, Sector 16, Noida, UP",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )),
                            RichText(
                              text: TextSpan(
                                  text: 'Tenant : ',
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
                                  text: 'Type : ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Wooden',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Issue Type : ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'General',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Issue Details : ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Need the flooring to be maintained',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ]),
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
                                          'Call Time : 3.50 pm ',
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
                                        RichText(
                                          text: TextSpan(
                                              text: 'Select Property : ',
                                              style: GoogleFonts.roboto(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight:
                                                FontWeight.w500,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Property 1',
                                                    style: GoogleFonts
                                                        .roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 15,
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
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight:
                                                FontWeight.w500,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Status 1',
                                                    style: GoogleFonts
                                                        .roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                    )),
                                              ]),
                                        ),
                                        Text(
                                            'Comment:  ',
                                            style: GoogleFonts
                                                .roboto(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight:
                                              FontWeight.w500,
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
                                          text: 'Visit-Revisit Scheduled ',
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
                                          'Call Time : 3.50 pm ',
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
                                        RichText(
                                          text: TextSpan(
                                              text: 'Select Property : ',
                                              style: GoogleFonts.roboto(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight:
                                                FontWeight.w500,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Property 1',
                                                    style: GoogleFonts
                                                        .roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 15,
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
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight:
                                                FontWeight.w500,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Status 1',
                                                    style: GoogleFonts
                                                        .roboto(
                                                      color: Color(0xff4E4E4E),
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                    )),
                                              ]),
                                        ),
                                        Text(
                                            'Comment:  ',
                                            style: GoogleFonts
                                                .roboto(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight:
                                              FontWeight.w500,
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


                ],
              ),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 28,
        ),
        backgroundColor: Colors.lightBlue,
        onPressed: (){

        },
      ),
    );
  }
}

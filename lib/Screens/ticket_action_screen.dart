import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Widgets/button1_widget.dart';

import '../Widgets/textfeild_widget.dart';

class TicketActionScreen extends StatefulWidget {
  final String device;
  const TicketActionScreen({super.key, required this.device});

  @override
  State<TicketActionScreen> createState() => _TicketActionScreenState();
}

class _TicketActionScreenState extends State<TicketActionScreen> {


  final TextEditingController assignController = TextEditingController();
  final TextEditingController ticketController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  List ticketaction = ["Assigned 1","Assigned 2","Assigned 3"];
  var TicketAction;
  List inspection = ["Eco Village 1","Eco Village 2","Eco Village 3"];
  var Inspection;
  int? id = -1;
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
        title: Text("Ticket Action",
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
                child: Text("Ticket Action",textAlign: TextAlign.start,
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
                      value:TicketAction,
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
                          TicketAction = value;

                          //  gender = newValue!;

                        });
                      },
                      items:ticketaction.map<DropdownMenuItem<String>>((index
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
                child: Text("Stayhook Inspection",textAlign: TextAlign.start,
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
                      value:Inspection,
                      isExpanded: true,
                      icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color:Colors.black54
                      ),
                      hint: Text("Eco Village ",
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
                          Inspection = value;

                          //  gender = newValue!;

                        });
                      },
                      items:inspection.map<DropdownMenuItem<String>>((index
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
                child: Text("Revenue ",textAlign: TextAlign.start,
                  style:
                  GoogleFonts.roboto(
                      fontSize: 16,color: Color(0xff000000),
                      fontWeight: FontWeight.w500
                  ),),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                   // mainAxisAlignment: MainAxisAlignment.center,
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
                      Text("Paid",style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),),
                    ],
                  ),
                  SizedBox(
                    width: 100,
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
                      Text("Unpaid",style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500,color: Color(0xff000000)),),
                    ],
                  ),


                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: assignController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Assign Status" ,
                  hintText: 'Active',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: ticketController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Ticket Status" ,
                  hintText: 'Inprocess',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: otpController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Enter OTP" ,
                  hintText: 'Enter OTP',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 60,
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

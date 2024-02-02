import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/button1_widget.dart';
import '../Widgets/textfeild_widget.dart';

class DocumentationScreen extends StatefulWidget {
  const DocumentationScreen({super.key});

  @override
  State<DocumentationScreen> createState() => _DocumentationScreenState();
}

class _DocumentationScreenState extends State<DocumentationScreen> {
  final TextEditingController tenantController = TextEditingController();
  final TextEditingController uploadController = TextEditingController();
  final TextEditingController upload2Controller = TextEditingController();
  final TextEditingController upload3Controller = TextEditingController();
  final TextEditingController upload4Controller = TextEditingController();



  bool? isChecked1 = true;
  bool? isChecked2 = true;
  bool? isChecked3 = true;
  bool? isChecked4 = true;
  bool? isChecked5 = true;
  bool? isChecked6 = true;
  bool? isChecked7 = true;
  bool? isChecked8 = true;

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
        title: Text("Documentation",
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
              TextFieldWidget(
                  controller: tenantController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Tenant Docs" ,
                  hintText: 'Tenant Docs',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.done,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              Text("Agreement",style: TextStyle(
                  color: Color(0xff4C4E64),fontSize: 16,
                  fontWeight: FontWeight.w500
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        // tristate: true,
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value;
                          });
                        },
                      ),
                      Text("Shared",style: TextStyle(
                          color: Color(0xff4C4E64),fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),)


                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(
                      children: [
                        Checkbox(
                          // tristate: true,
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked2 = value;
                            });
                          },
                        ),
                        Text(" Not Shared",style: TextStyle(
                            color: Color(0xff4C4E64),fontSize: 18,
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

              TextFieldWidget(
                  controller: uploadController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Upload Agreement" ,
                  hintText: 'Upload Agreement',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.done,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              Text("Signed Agreement(Tenant)",style: TextStyle(
                  color: Color(0xff4C4E64),fontSize: 16,
                  fontWeight: FontWeight.w500
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        // tristate: true,
                        value: isChecked3,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked3 = value;
                          });
                        },
                      ),
                      Text("Yes",style: TextStyle(
                          color: Color(0xff4C4E64),fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),)


                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(
                      children: [
                        Checkbox(
                          // tristate: true,
                          value: isChecked4,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked4 = value;
                            });
                          },
                        ),
                        Text(" No",style: TextStyle(
                            color: Color(0xff4C4E64),fontSize: 18,
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

              TextFieldWidget(
                  controller: upload2Controller,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Upload Agreement" ,
                  hintText: 'Upload Agreement',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.done,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              Text("Signed Agreement(Staff)",style: TextStyle(
                  color: Color(0xff4C4E64),fontSize: 16,
                  fontWeight: FontWeight.w500
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        // tristate: true,
                        value: isChecked5,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked5 = value;
                          });
                        },
                      ),
                      Text("Yes",style: TextStyle(
                          color: Color(0xff4C4E64),fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),)


                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(
                      children: [
                        Checkbox(
                          // tristate: true,
                          value: isChecked6,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked6 = value;
                            });
                          },
                        ),
                        Text(" No",style: TextStyle(
                            color: Color(0xff4C4E64),fontSize: 18,
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

              TextFieldWidget(
                  controller: upload3Controller,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Upload Agreement" ,
                  hintText: 'Upload Agreement',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.done,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              Text("Signed Agreement(Tenant)",style: TextStyle(
                  color: Color(0xff4C4E64),fontSize: 16,
                  fontWeight: FontWeight.w500
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        // tristate: true,
                        value: isChecked7,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked7 = value;
                          });
                        },
                      ),
                      Text("Yes",style: TextStyle(
                          color: Color(0xff4C4E64),fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),)


                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(
                      children: [
                        Checkbox(
                          // tristate: true,
                          value: isChecked8,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked8 = value;
                            });
                          },
                        ),
                        Text(" No",style: TextStyle(
                            color: Color(0xff4C4E64),fontSize: 18,
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
              TextFieldWidget(
                  controller: upload4Controller,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Upload Agreement" ,
                  hintText: 'Upload Agreement',
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
                    width:  MediaQuery.of(context).size.width, )

              ),








            ],
          ),
        ),
      ),

    );
  }
}

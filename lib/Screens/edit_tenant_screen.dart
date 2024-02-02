import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Widgets/button1_widget.dart';
import 'package:stayhook_main/Widgets/textfeild_widget.dart';

class EditTenantScreen extends StatefulWidget {
  final String device;
  const EditTenantScreen({super.key, required this.device});

  @override
  State<EditTenantScreen> createState() => _EditTenantScreenState();
}

class _EditTenantScreenState extends State<EditTenantScreen> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  List gender = ["male","female","other"];
  var Gender;
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
        title: Text("Edit Tenant",
            style: GoogleFonts.roboto(
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldWidget(
                  controller: nameController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Name" ,
                  hintText: 'Name',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: emailController,
                  obscureText: false,
                  inputType: TextInputType.text,
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
                child: Text("Gender",style:
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
                  controller: typeController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Type" ,
                  hintText: 'Couple',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: countryController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Country" ,
                  hintText: 'Country',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: stateController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "State" ,
                  hintText: 'State',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: cityController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "City" ,
                  hintText: 'City',
                  cursorColor: Color(0xff2972FF),
                  inputAction: TextInputAction.next,
                  Maxline: 1),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                  controller: areaController,
                  obscureText: false,
                  inputType: TextInputType.text,
                  text: "Area" ,
                  hintText: 'Area',
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
              SizedBox(
                height: 10,
              ),



            ],
          ),

        ),

      ),

    );
  }
}

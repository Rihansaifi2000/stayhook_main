import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Screens/otp_screen.dart';

import '../Widgets/button1_widget.dart';
import '../Widgets/textfeild_widget.dart';

class SignUpScreen extends StatefulWidget {
  final String device;
  const SignUpScreen({super.key, required this.device});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController phoneController = TextEditingController();
  bool isActive = false;

 // get device => null;
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leadingWidth: 50,
        leading: Padding(
          padding: EdgeInsets.only(left: 20,top: 10),
          child: IconButton(
            onPressed: (){
             // Navigator.of(context).pop(true);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Color(0xff2C2939),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                'Login IN',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color(0xff121826)),
              ),
              Text(
                'Create an account to continue',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xff64748B)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: const Color(0xff2C2939),
                obscureText: false,
                controller: phoneController,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    border: InputBorder.none,
                    hintText: "Phone Number",
                    hintStyle: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                    prefixIcon: Icon(Icons.phone)
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),

              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => OTPScreen(device: '' , )
                              ),
                          (route) => false);
                },
                child: Button1Widget(
                    text: "Send OTP",
                    color: Color(0xff2C2939),
                    textColor: Colors.white,
                    width: double.infinity),
              ),
              SizedBox(
                height: 20,
              ),
              Container(

                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                      text: "By creating an account, you agree to our ",
                      style: GoogleFonts.lato(
                        color: const Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                            text: "Terms and Condition",
                            style: GoogleFonts.lato(
                              color: const Color(0xfff58220),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                /* Navigator.push(context,
                                   MaterialPageRoute(
                                       builder: (context) {
                                         return const SignInScreen();
                                       }));
                             }*/
                              }),
                      ]),
                ),
              ),
              SizedBox(
                height: 400,
              ),
              Container(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                      text: "Already have an account ? ",
                      style: GoogleFonts.lato(
                        color: const Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                            text: "Log In",
                            style: GoogleFonts.lato(
                              color: const Color(0xfff58220),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                /* Navigator.push(context,
                                   MaterialPageRoute(
                                       builder: (context) {
                                         return const SignInScreen();
                                       }));
                             }*/
                              }),
                      ]),
                ),
              ),







            ],
          ),
        ),
      ),
    );
  }
}

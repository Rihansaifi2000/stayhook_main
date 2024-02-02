import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:stayhook_main/Screens/verify_screen.dart';

import '../Widgets/button1_widget.dart';

class OTPScreen extends StatefulWidget {
  final String device;

  const OTPScreen({super.key, required this.device});

  /* final String fname;
  final String lname;
  final String password;
  final String confirmPassword;
  final String email;
  final String otp;
  final String phone;
  const OTPScreen(
      {Key? key,
        required this.fname,
        required this.lname,
        required this.password,
        required this.confirmPassword,
        required this.email,
        required this.otp,
        required this.phone})
      : super(key: key);*/

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String OTP = "";
  int secondsRemaining = 60;
  bool enableResend = false;
  Timer? timer;
  void _resendCode() {
    setState(() {
      secondsRemaining = 60;
      enableResend = false;
    });
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
          padding: EdgeInsets.only(left: 20, top: 10),
          child: IconButton(
            onPressed: () {
               Navigator.of(context).pop(true);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Color(0xff2C2939),
            ),
          ),
        ),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Verification Code',
                  style: GoogleFonts.inter(
                      color: const Color(0xff1E293B),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We have sent the code verification to',
                  style: GoogleFonts.inter(
                      color: const Color(0xff64748B),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  '+9123415666666',
                  style: GoogleFonts.inter(
                      color: const Color(0xff64748B),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 40,
                ),
                OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 70,
                    style: GoogleFonts.inter(
                        color: const Color(0xff626262),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {
                      setState(() {
                        OTP = pin.toString();
                      });
                    }),
                SizedBox(
                  height: 35,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                        text: "Didn't receive any code? ",
                        style: GoogleFonts.lato(
                          color: const Color(0xff000000),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                              text: "Resend New Code",
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
                  height: 350,
                ),
                GestureDetector(
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>
                   VerifyScreen(device: widget.device)));
                  },
                  child: Button1Widget(
                      text: "Verify",
                      color: Color(0xff2972FF),
                      textColor: Colors.white,
                      width: double.infinity),
                ),

              ],
            ),
          ),
        ),
      ]),
    );
  }
}

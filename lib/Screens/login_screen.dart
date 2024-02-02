import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayhook_main/Screens/otp_screen.dart';
import 'package:stayhook_main/Screens/signup_screen.dart';
import 'package:stayhook_main/Screens/verify_screen.dart';
import 'package:stayhook_main/Widgets/button1_widget.dart';
import 'package:stayhook_main/Widgets/textfeild_widget.dart';


class LoginScreen extends StatefulWidget {
  final String device;
  const LoginScreen({super.key, required this.device});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController phoneController = TextEditingController();


  bool isActive = false;
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(
               height: MediaQuery.of(context).size.height/8,
             ),
             Image.asset("assets/images/login_screen_image.png",width: 400,),
             SizedBox(
               height: 20,
             ),
             Text(
               'Log-in',
               textAlign: TextAlign.start,
               style: GoogleFonts.inter(
                   fontWeight: FontWeight.w500,
                   fontSize: 30,
                   color: const Color(0xff121826)),
             ),
             SizedBox(
               height: 10,
             ),
             Text(
               'Access your Duties & Cases',
               textAlign: TextAlign.start,
               style: GoogleFonts.inter(
                   fontWeight: FontWeight.w400,
                   fontSize: 18,
                   color: const Color(0xff535353)),
             ),
             SizedBox(
               height: 10,
             ),

             Container(
               alignment: Alignment.center,
               decoration: BoxDecoration(
                 color: Colors.grey.shade100,
                 borderRadius: const BorderRadius.all(Radius.circular(50)),
               ),
               child: TextField(
                 cursorColor: const Color(0xff2C2939),
                 obscureText: false,
                 controller: phoneController,
                 keyboardType: TextInputType.phone,
                 textInputAction: TextInputAction.done,
                 decoration: InputDecoration(
                   contentPadding:
                   const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                   border: InputBorder.none,
                   hintText: "Phone Number",
                   hintStyle: GoogleFonts.roboto(
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                       color: Colors.grey),
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
             ),



            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                OTPScreen(device: widget.device)));

              },
              child: Button1Widget(
                  text: "Login",
                  color: Color(0xff2972FF),
                  textColor: Colors.white,
                  width: double.infinity),
            ),
             SizedBox(
               height: 80,
             ),
             Container(
               alignment: Alignment.center,
               child: Text.rich(
                 TextSpan(
                     text: "Don’t have account ? ",
                     style: GoogleFonts.lato(
                       color: const Color(0xff000000),
                       fontSize: 15,
                       fontWeight: FontWeight.w500,
                     ),
                     children: [
                       TextSpan(
                           text: "Sign Up",
                           style: GoogleFonts.lato(
                             color: const Color(0xfff58220),
                             fontSize: 15,
                             fontWeight: FontWeight.w500,
                           ),
                           recognizer: TapGestureRecognizer()
                             ..onTap = () {

                             }),
                     ]),
               ),
             ),





           ],
         ),
       ),
     )

    );
  }
}

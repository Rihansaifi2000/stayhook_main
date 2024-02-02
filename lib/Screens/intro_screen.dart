import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_slider/introduction_slider.dart';
import 'package:stayhook_main/Screens/login_screen.dart';
import 'package:stayhook_main/Widgets/button1_widget.dart';

class IntroScreen extends StatefulWidget {
  final String device;
  const IntroScreen({super.key, required this.device});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntroductionSlider(
        items: [
          IntroductionSliderItem(
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Manage Expenses ",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                    color: const Color(0xffFF4444),
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Prioritise sales followup with\n"
                      "reminders on clicks.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xB3000000),
                  ),
                ),
              ),
              logo: Image.asset("assets/images/loginScreen_image.png"),
              backgroundColor: Colors.white),
          IntroductionSliderItem(
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Manage Expenses",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                    color: const Color(0xffFF4444),
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Prioritise sales followup with\n"
                      "reminders on clicks.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xB3000000),
                  ),
                ),
              ),
              logo: Image.asset("assets/images/intro_screen_2.png"),
              backgroundColor: Colors.white),
          IntroductionSliderItem(
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Manage Expenses",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                    color: const Color(0xffFF4444),
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Prioritise sales followup with\n"
                      "reminders on clicks.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xB3000000),
                  ),
                ),
              ),
              logo: Image.asset("assets/images/loginScreen_image.png"),
              backgroundColor: Colors.white),
        ],
        done: Done(
          child: Button1Widget(
              text: "Next",
              color: Colors.blue,
              textColor: Colors.white,
              width: MediaQuery.of(context).size.width / 2.5),
          home: LoginScreen(device: widget.device),
        ),
        next: Next(
            child: Button1Widget(
          color: Color(0xff038ed3),
          text: 'Next',
          textColor: Colors.white,
          width: MediaQuery.of(context).size.width / 2.5,
        )),

        dotIndicator: const DotIndicator(
          size: 6,
          selectedColor: Color(0xff038ed3),
          unselectedColor: Color(0xff7ca0c1),
        ),
        showStatusBar: true,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            Center(
              child: Text(
                "M-TOKYO",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Lottie.asset("lib/images/lottie/intropage.json"),
            ),
            Text(
              "With love from Tokyo",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "Try the real masterpieces from the master from Tokyo and make sure that we are the best.",
              style: TextStyle(
                height: 2,
                color: Colors.white60,
              ),
            ),
            const SizedBox(height: 25),
            MyBotton(
              text: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}

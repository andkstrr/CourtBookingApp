import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/welcome.png"),
                )
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Column(
                children: [
                  Text(
                    "Court Booking",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Easily and quickly book sports courts at your convenience. Choose from a variety of courts, select your preferred duration, and confirm your booking seamlessly",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ),
            const SizedBox(height: 45),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => HomePage())
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
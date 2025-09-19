import 'package:flutter/material.dart';
import 'package:court_booking_app/screens/welcome.dart';

void main() => runApp(MaterialApp(
  home: CourtBookingApp(),
));

class CourtBookingApp extends StatelessWidget {
  const CourtBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ticket App",
      home: WelcomePage()
    );
  }
}
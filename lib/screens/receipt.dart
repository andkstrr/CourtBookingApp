import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({
    super.key,
    required this.title,
    required this.type,
    required this.floor,
    required this.price,
    required this.rate,
    required this.image

  });

  final String title;
  final String type;
  final String floor;
  final int price;
  final String rate;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
    );
  }
}
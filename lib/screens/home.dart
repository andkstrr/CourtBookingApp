import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:court_booking_app/widgets/court_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> courts = const [
    {
      'title' : 'Futsal Court A',
      'type' : 'Indoor',
      'floor' : 'Air Conditioned',
      'price' : 50000,
      'rate' : '4.8',
      'image' : 'assets/images/futsal-court-a.png'
    },
    {
      'title' : 'Basketball Court B',
      'type' : 'Outdoor',
      'floor' : 'Premium Floor',
      'price' : 75000,
      'rate' : '4.7',
      'image' : 'assets/images/basketball-court-b.png'
    },
    {
      'title' : 'Badminton Court C',
      'type' : 'Indoor',
      'floor' : 'Wooden Floow',
      'price' : 45000,
      'rate' : '4.9',
      'image' : 'assets/images/badminton-court-c.png'
    },
    {
      'title' : 'Tennis Court D',
      'type' : 'Outdoor',
      'floor' : 'Hard Surface',
      'price' : 80000,
      'rate' : '4.6',
      'image' : 'assets/images/tennis-court-d.png'
    },
    {
      'title' : 'Volleyball Court E',
      'type' : 'Indoor',
      'floor' : 'Synthetic Floor',
      'price' : 60000,
      'rate' : '4.5',
      'image' : 'assets/images/volleyball-court-e.png'
    }
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sports Courts",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: widget.courts.length,
          separatorBuilder: (_, __) => const SizedBox(height: 25),
          itemBuilder: (context, index) {
            final court = widget.courts[index];
            return CourtCard(
              title: court['title'],
              type: court['type'],
              floor: court['floor'],
              price: court['price'],
              rate: court['rate'],
              image: court['image']
            );
          },
        )
      ),
    );
  }
}
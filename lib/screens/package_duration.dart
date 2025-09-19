import 'package:court_booking_app/screens/order_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageDurationPage extends StatefulWidget {
  const PackageDurationPage(
    {
      super.key, 
      required this.title, 
      required this.type, 
      required this.floor, 
      required this.price, 
      required this.rate, 
      required this.image
      }
    );

  final String title;
  final String type;
  final String floor;
  final int price;
  final String rate;
  final String image;

  @override
  State<PackageDurationPage> createState() => _PackageDurationPageState();
}

class _PackageDurationPageState extends State<PackageDurationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Package Duration",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => OrderSummaryPage(
                    title: widget.title,
                    type: widget.type,
                    floor: widget.floor,
                    price: widget.price,
                    rate: widget.rate,
                    image: widget.image
                  )
                )
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 105,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1 Hour",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Perfect for training",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600]
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Rp. ${widget.price.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          )
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "per session",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600]
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => OrderSummaryPage(
                    title: widget.title,
                    type: widget.type,
                    floor: widget.floor,
                    price: widget.price,
                    rate: widget.rate,
                    image: widget.image
                  )
                )
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 105,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2 Hours",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Best value for groups",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600]
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Rp. ${(widget.price * 2).toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          )
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "per session",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600]
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => OrderSummaryPage(
                    title: widget.title,
                    type: widget.type,
                    floor: widget.floor,
                    price: widget.price,
                    rate: widget.rate,
                    image: widget.image
                  )
                )
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 105,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 Hours",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Great for tournament",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600]
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Rp. ${(widget.price * 3).toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          )
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "per session",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600]
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
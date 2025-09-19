import 'package:court_booking_app/screens/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSummaryPage extends StatelessWidget {
  const OrderSummaryPage(
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Order Summary",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Jl. Cibalok, Blok B No. 31",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_rounded,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Date",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ]
                        ),
                        const Spacer(),
                        Text(
                          "Today, 19 Sep",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.black87),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_sharp,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Duration",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ]
                        ),
                        const Spacer(),
                        Text(
                          "2 Hours",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.black87),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.price_change_outlined,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Price per Hour",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ]
                        ),
                        const Spacer(),
                        Text(
                          "Rp. ${price.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 60),
                    Row(
                      children: [
                        Text(
                          "Subtotal (2 hours)",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Rp. ${price.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Service Fee",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Rp. 5.000",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Rp. 105.000",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: 155,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info_outlined,
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Booking policy",
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Free cancellation up to 5 hours before your booking time. Equipment rental available on- site.",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity, // tombol selebar parent
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentMethod(
                          title: title,
                          type: type,
                          floor: floor,
                          price: price,
                          rate: rate,
                          image: image,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    padding: const EdgeInsets.symmetric(vertical: 15), // hanya vertical
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // posisi center
                    children: [
                      Text(
                        "Choose Payment Method",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25)
            ],
          ),
        ),
      ),
    );
  }
}
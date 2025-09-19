import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:court_booking_app/screens/receipt.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
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
      appBar: AppBar(
        title: Text(
          "Payment Method",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose Payment",
              style: GoogleFonts.poppins(
                fontSize: 23,
                fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Select your preferred payment method",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600]
              ),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => ReceiptPage(
                      title: title,
                      type: type,
                      floor: floor,
                      price: price,
                      rate: rate,
                      image: image
                    )
                  )
                );
              },
              child: Container(
                height: 210,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 23),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.wallet_rounded,
                            color: Colors.black,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pay on Location",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "Cash payment",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600]
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Divider(),
                    const SizedBox(height: 15),
                    Text(
                      "Pay with cash when you arrive at the location",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ],    
                )
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {

              },
              child: Container(
                height: 210,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 23),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.wallet_rounded,
                            color: Colors.black,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pay via QRIS",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "Digital payment",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600]
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Divider(),
                    const SizedBox(height: 15),
                    Text(
                      "Scan QR code to pay instantly with your e-wallet",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ],    
                )
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 135,
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
                          "Your payment method can't be changed after completing the order",
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
          ],
        ),
      ),
    );
  }
}
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Remove All
              Row(
                children: [
                  Spacer(),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      "Remove All",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),

              // Products (2x)
              Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 64,
                      width: 64,
                      child: Image.asset(
                        "assets/img1.png",
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Men's Harrington Jacket",
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.black,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    "\$148",
                                    style: GoogleFonts.gabarito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "Size",
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    " - M",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "Color",
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    " - Lemon",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CupertinoButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {},
                                      color: Color(0xff8E6CEF),
                                      borderRadius: BorderRadius.circular(100),
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                        child: Image.asset("assets/minus.png"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CupertinoButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {},
                                      color: Color(0xff8E6CEF),
                                      borderRadius: BorderRadius.circular(100),
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                        child: Image.asset("assets/add.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),

              // Prices
              Row(
                children: [
                  Text(
                    "Subtotal",
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade500,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$200",
                    style: GoogleFonts.gabarito(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "Shipping Cost",
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade500,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$8.00",
                    style: GoogleFonts.gabarito(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "Tax",
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade500,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$0.00",
                    style: GoogleFonts.gabarito(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$208",
                    style: GoogleFonts.gabarito(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              // Coupon
              SizedBox(height: 30),
              Container(
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/discount.png",
                      height: 28,
                      width: 28,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Enter Coupon Code",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        color: Color(0xff8E6CEF),
                        onPressed: () {},
                        child: Image.asset("assets/arrow.png"),
                      ),
                    ),
                  ],
                ),
              ),

              // Button
            ],
          ),
        ),
      ),
    );
  }
}

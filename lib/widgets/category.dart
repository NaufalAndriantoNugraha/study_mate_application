import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  final String imageUrl;
  final String title;

  const Category({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Color.fromRGBO(244, 244, 244, 1),
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        spacing: 10,
        children: [
          Image.asset(imageUrl, width: 20, height: 20),
          Text(title, style: GoogleFonts.openSans(fontSize: 18)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subject extends StatelessWidget {
  final String subjectsName;

  const Subject({super.key, required this.subjectsName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(154, 154, 154, 1)),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        subjectsName,
        style: GoogleFonts.openSans(color: Color.fromRGBO(154, 154, 154, 1)),
      ),
    );
  }
}

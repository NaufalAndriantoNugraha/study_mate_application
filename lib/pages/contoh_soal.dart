import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContohSoal extends StatelessWidget {
  const ContohSoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 245, 1),
      appBar: AppBar(
        elevation: 0,
        shadowColor: Color.fromRGBO(25, 52, 152, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 30,
            shadows: [],
          ),
        ),
        title: Text('Kembali', style: GoogleFonts.alata(color: Colors.white)),
        backgroundColor: Color.fromRGBO(25, 52, 152, 1),
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 150),
          child: Image.asset('assets/contoh_soal_header.png'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Image.asset(
              'assets/contoh_soal.png',
              width: 650,
              height: 650,
            ),
          ),
        ],
      ),
    );
  }
}

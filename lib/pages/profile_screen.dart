import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate_application/pages/home_screen.dart';
import 'package:study_mate_application/widgets/navigation_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Text(''),
        title: Text('My Account'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(243, 243, 245, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 40,
              children: [
                Image.asset('assets/kathrina_irene.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kathrina Irene',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text('KathrinaIrene@gmail.com'),
                    Text('088123146555'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: MediaQuery.sizeOf(context).width,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(left: 30, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Data Pribadi',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nama Lengkap',
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Kathrina Irene',
                    style: GoogleFonts.openSans(fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Tempat Tanggal Lahir',
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Jakarta, 26 Juli 2006',
                    style: GoogleFonts.openSans(fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Jenis Kelamin',
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text('Perempuan', style: GoogleFonts.openSans(fontSize: 18)),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: MediaQuery.sizeOf(context).width,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(left: 30, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Informasi Tambahan',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Alamat',
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Jl. Jendral Sudirman',
                  style: GoogleFonts.openSans(fontSize: 18),
                ),
                SizedBox(height: 5),
                Text(
                  'Sekolah',
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'SMAN 27 JAKARTA',
                  style: GoogleFonts.openSans(fontSize: 18),
                ),
                SizedBox(height: 5),
                Text(
                  'Jenis Kelamin',
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text('Perempuan', style: GoogleFonts.openSans(fontSize: 18)),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationItem(
                imageUrl: 'assets/home.png',
                isOn: false,
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
              NavigationItem(
                imageUrl: 'assets/university.png',
                isOn: false,
                onClick: () {},
              ),
              NavigationItem(
                imageUrl: 'assets/account.png',
                isOn: true,
                onClick: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

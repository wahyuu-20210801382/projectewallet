import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KirimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kirim Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat datang di Kirim Page!',
              style: GoogleFonts.varelaRound(fontSize: 20),
            ),
            // Tambahkan elemen atau logika lain sesuai kebutuhan Anda
          ],
        ),
      ),
    );
  }
}

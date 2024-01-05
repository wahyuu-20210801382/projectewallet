import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabunganPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabungan Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat datang di Tabungan Page!',
              style: TextStyle(fontSize: 20),
            ),
            // Tambahkan elemen atau logika lain sesuai kebutuhan Anda
          ],
        ),
      ),
    );
  }
}

class TabunganButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TabunganPage()),
        );
      },
      child: Column(
        children: [
          Icon(Icons.currency_bitcoin, color: Colors.white, size: 30),
          SizedBox(height: 8),
          Text(
            'TABUNGAN',
            style: GoogleFonts.varelaRound(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: TabunganButton(),
      ),
    ),
  ));
}

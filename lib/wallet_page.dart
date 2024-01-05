import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaksi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat datang di Transaksi!',
              style: TextStyle(fontSize: 20),
            ),
            // Tambahkan elemen atau logika lain sesuai kebutuhan Anda
          ],
        ),
      ),
    );
  }
}

class KirimButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WalletPage()),
        );
      },
      child: Column(
        children: [
          Icon(Icons.send, color: Colors.white, size: 30),
          SizedBox(height: 8),
          Text(
            'KIRIM',
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
        child: KirimButton(),
      ),
    ),
  ));
}

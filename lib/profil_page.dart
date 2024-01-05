import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(''), // Ganti dengan gambar profil Anda
            ),
            SizedBox(height: 16),
            Text(
              'Nama Pengguna',
              style: GoogleFonts.varelaRound(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Email:',
              style: GoogleFonts.varelaRound(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text('user@gmail.com',
                style: GoogleFonts.varelaRound(fontSize: 16)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk mengedit profil
              },
              child: Text('Edit Profil'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk logout
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

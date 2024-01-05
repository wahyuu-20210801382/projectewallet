import 'package:flutter/material.dart';

class LayananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layanan Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat datang di Layanan Page!',
              style: TextStyle(fontSize: 20),
            ),
            // Tambahkan elemen lain sesuai kebutuhan Anda
          ],
        ),
      ),
    );
  }
}

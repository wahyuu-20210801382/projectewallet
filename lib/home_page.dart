import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectewallet/kirim_page.dart';
import 'package:projectewallet/layanan_page.dart';
import 'package:projectewallet/profil_page.dart';
import 'package:projectewallet/tabungan_page.dart';
import 'package:projectewallet/top_up_page.dart';
import 'package:projectewallet/wallet_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.currency_bitcoin), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
            // Navigator untuk Home Page (jika diperlukan)
              break;
            case 1:
            // Navigator untuk Wallet Page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WalletPage()),
              );
              break;
            case 2:
            // Navigator untuk Profil Page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilPage()),
              );
              break;
          }
        },
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'Hai, Wahyu!',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Selamat Datang Di E-Wallet',
                            style: GoogleFonts.varelaRound(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Pencarian',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'DAPATKAN CASHBACK SEBESAR 50%',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 25),
                  Positioned(
                    top: 100,
                    left: 100,
                    child: Image.network(
                      'https://pbs.twimg.com/profile_banners/16573941/1703360624/1500x500',
                      width: 350,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TopUpPage()),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(Icons.add_box_outlined, color: Colors.white, size: 30),
                            SizedBox(height: 8),
                            Text(
                              'TOP UP',
                              style: GoogleFonts.varelaRound(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => KirimPage()),
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
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LayananPage(),),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(Icons.subscriptions, color: Colors.white, size: 30),
                            SizedBox(height: 8),
                            Text(
                              'LAYANAN',
                              style: GoogleFonts.varelaRound(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ),

                      InkWell(
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
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'favorit list',
                            style: GoogleFonts.varelaRound(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        color: Colors.white,
                                        child: Tab(
                                          icon:
                                          Image.asset("assets/images/netflix.png"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Netflix',
                                      style: GoogleFonts.varelaRound(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Layanan Film',
                                      style: GoogleFonts.varelaRound(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


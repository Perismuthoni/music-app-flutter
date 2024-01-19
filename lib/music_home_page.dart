import 'package:flutter/material.dart';
import 'package:music_list/music_list_page.dart';
import 'package:music_list/notifications_page.dart';
import 'package:music_list/payment_page.dart';
import 'package:music_list/settings_page.dart';

class MusicHomePage extends StatefulWidget {
  const MusicHomePage({super.key});

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  int activeIndex = 0;
  List<Widget> pages = [
    MuscListPage(),
    PaymentPage(),
    NotificationsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.orange,
        width: 240,
      ),
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.black,
        leadingWidth: 250,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "Muthoni Tunes",
            style: TextStyle(
              color: Color.fromARGB(255, 238, 156, 33),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: pages[activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel), label: "Payment"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        currentIndex: activeIndex,
      ),
    );
  }
}

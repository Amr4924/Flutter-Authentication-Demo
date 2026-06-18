import 'package:basic_mobile_app/navbar_pages/home.dart';
import 'package:basic_mobile_app/navbar_pages/profile.dart';
import 'package:basic_mobile_app/navbar_pages/setting.dart';
import 'package:flutter/material.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  int selectIndex = 0;
  List<Widget> pages = [Home(), Profile(), Setting()];
  void onIteamTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
          });
        },
        backgroundColor: Colors.purpleAccent,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
          BottomNavigationBarItem(label: "Setting", icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}

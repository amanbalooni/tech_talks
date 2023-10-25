import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_talks/screens/home_page.dart';

import '../screens/list_page.dart';
import '../screens/profile_page.dart';
import '../screens/topic_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  List pages = [
    HomePage(),
    ListPage(),
    TopicPage(),
    ProfilePage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(label:"Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:"List", icon: Icon(Icons.list)),
          BottomNavigationBarItem(label:"Topic", icon: Icon(Icons.topic)),
          BottomNavigationBarItem(label:"Profile", icon: Icon(Icons.person)),

        ],
      )
    );
  }
}

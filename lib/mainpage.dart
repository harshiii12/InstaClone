import 'package:flutter/material.dart';
import 'package:missionse/pages/Homepage.dart';
import 'package:missionse/pages/SearchPage.dart';
import 'package:missionse/pages/AddPost.dart';
import 'package:missionse/pages/Feeds.dart';
import 'package:missionse/pages/Profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
class MainPage extends StatefulWidget {
  late UserCredential userCredential;
  MainPage({Key? key, required this.userCredential}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  final screens = [
    const HomePage(),
    const SearchPage(),
    const AddPost(),
    const Feeds(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _index==4 ? Profile(userCredential: widget.userCredential,) : screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Create'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Interactions'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedFontSize: 11,
        showSelectedLabels: false,
        currentIndex: _index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}

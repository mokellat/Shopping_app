import 'package:flutter/material.dart';
import 'package:shop_app/pages/categories_page.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:shop_app/pages/profile_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int cIndex = 0;
  List pages = [HomePage(), Categories(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cIndex,
        onTap: (value) {
          setState(() {
            cIndex = value;
          });
        },
        items: const [
          // BottomNavigationBarItem(
          //   icon: Image.asset("assets/images/splash_icon-remove.png",
          //       height: 70, width: 70),
          //   label: 'Home',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],
        // onTap: _onItemTapped,
      ),
      body: pages[cIndex],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app/pages/profile_wl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double cHeight = 0;
  @override
  Widget build(BuildContext context) {
    cHeight = MediaQuery.of(context).size.height * 0.30;
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(children: [
        ProfileWl(),
      ]),
    );
  }
}

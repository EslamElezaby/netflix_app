import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      appBar: AppBar(
        backgroundColor: Color(0xff333333),
        centerTitle: true,
        elevation: 0.0,
        title: Container(
          height: 40,
          child: Image.asset('assets/netflix_logo/netflixLogo.png'),
        ),
        leading: Icon(Icons.menu),
        actions: [
          Container(
            height: 40,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'assets/netflix_logo/neflixPP.jpg',
            ),
          ),
        ],
      ),
    );
  }
}

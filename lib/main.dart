import 'package:flutter/material.dart';
import 'package:netflix_app_ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  void _onItemTap(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  final List<Widget> screens = [
    HomeScreen(),
    Center(
      child: Text('Search Screen'),
    ),
    Center(
      child: Text('Coming Soon Screen'),
    ),
    Center(
      child: Text('Downloads Screen'),
    ),
    Center(
      child: Text('Menu Screen'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black38,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        elevation: 0.0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tv,
            ),
            label: 'Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.download_done_outlined,
            ),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Menu',
          ),
        ],
      ),
      body: screens.elementAt(_selectedIndex),
    );
  }
}

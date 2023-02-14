import 'package:flutter/material.dart';
import 'package:untitled2/screens/search_screen.dart';

import 'screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex=0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),

];
  void _onItemTapped(int index)
  {
   setState(() {
     _currentIndex=index;
   });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    body: _widgetOptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.red[800],

      unselectedItemColor: Colors.grey,
      currentIndex: _currentIndex,
      elevation: 20,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'MainPage'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
      ],

      ),
    );
  }
}

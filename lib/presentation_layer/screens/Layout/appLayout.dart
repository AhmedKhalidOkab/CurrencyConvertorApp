import 'package:currencyapp/presentation_layer/screens/calaculate/screens/CaculateScreen.dart';
import 'package:currencyapp/presentation_layer/screens/home/screens/homeScreen.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CaculateScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.change_circle_outlined),
            label: 'Calculator',
            // backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}

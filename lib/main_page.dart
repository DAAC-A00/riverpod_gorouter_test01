// main_page.dart

import 'package:flutter/material.dart';

import 'counter_screen.dart';
import 'detail_page.dart';
import 'home_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final bottomTabList = <Widget>[
      const HomeScreen(),
      const DetailPage(),
      const CounterScreen(),
    ];

    return Scaffold(
      body: bottomTabList[_selectedTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: (index) {
          setState(() {
            _selectedTabIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', // 첫 번째 탭의 라벨을 'Home'으로 변경합니다.
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'Detail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.countertops),
            label: 'Counter',
          ),
        ],
      ),
    );
  }
}

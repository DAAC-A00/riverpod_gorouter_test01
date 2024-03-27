// main_screen.dart

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'detail_screen.dart';
import 'counter_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTabIndex = 0;

  final List<Widget> _tabScreens = const [
    HomeScreen(),
    DetailScreen(),
    CounterScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        // IndexedStack을 사용하여 각 탭의 상태를 유지합니다.
        index: _selectedTabIndex,
        children: _tabScreens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: (index) {
          setState(() {
            _selectedTabIndex = index;
            // GoRouter의 사용 없이 탭 상태만 변경합니다.
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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

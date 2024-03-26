// main_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'counter_screen.dart';
import 'detail_page.dart';
import 'home_screen.dart'; // HomeScreen을 import합니다.

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const HomeScreen(), // 첫 번째 탭에 HomeScreen을 추가합니다.
      const DetailPage(),
      const CounterScreen(),
    ]; // 탭에 따른 화면을 여기에 추가합니다.

    return Scaffold(
      body: tabs[_selectedTabIndex], // 선택된 탭 인덱스에 따라 화면을 표시합니다.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: (index) {
          setState(() {
            _selectedTabIndex = index;
          });
        },
        items: const [
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

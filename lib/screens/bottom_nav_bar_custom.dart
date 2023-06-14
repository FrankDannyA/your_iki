import 'package:flutter/material.dart';
import 'package:your_iki/screens/profile_screen.dart';
import 'package:your_iki/screens/task_group_screen.dart';
import 'package:your_iki/screens/task_list_screen.dart';

class BottomNavBarCustom extends StatefulWidget {
  const BottomNavBarCustom({Key? key}) : super(key: key);

  @override
  _BottomNavBarCustomState createState() => _BottomNavBarCustomState();
}

class _BottomNavBarCustomState extends State<BottomNavBarCustom> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    const TaskListScreen(),
    const TaskGroupScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Задачи",
            icon: Icon(Icons.table_rows_rounded),
          ),
          BottomNavigationBarItem(
            label: "ИКИ",
            icon: Icon(Icons.table_chart_rounded),
          ),
          BottomNavigationBarItem(
            label: "Профиль",
            icon: Icon(Icons.psychology),
          )
        ],
      ),
    );
  }
}

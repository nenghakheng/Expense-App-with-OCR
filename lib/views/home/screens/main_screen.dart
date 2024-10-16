import 'dart:math';

import 'package:expense_app_with_ocr/views/home/screens/home_screen.dart';
import 'package:expense_app_with_ocr/views/stat/screens/stat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  late Color selectedItem = Colors.blue;
  Color unselectedItem = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: buildBottomNavigationBar(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildFloatingActionButton(),
      body: index == 0 ? const HomeScreen() : const StatScreen(),
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 3,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.home,
            color: index == 0 ? selectedItem : unselectedItem,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.graph_square_fill,
            color: index == 1 ? selectedItem : unselectedItem,
          ),
          label: 'Stats',
        )
      ],
    );
  }

  Widget buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () async {
        print('home screen action');
      },
      shape: const CircleBorder(),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
              ],
              transform: const GradientRotation(pi / 4),
            )),
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}

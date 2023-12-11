import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/view/search_screeen.dart';

import 'home_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final RxInt _selectedIndex = 0.obs;

  final List tabItems = [
    HomeScreen(),
    const SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: tabItems[_selectedIndex.value],
        ),
      ),
      bottomNavigationBar: Obx(
        () {
          return FlashyTabBar(
            height: 55,
            animationCurve: Curves.linear,
            selectedIndex: _selectedIndex.value,
            iconSize: 28,
            showElevation: true,
            onItemSelected: (index) {
              _selectedIndex.value = index;
            },
            animationDuration: const Duration(milliseconds: 800),
            items: [
              FlashyTabBarItem(
                icon: const Icon(Icons.home),
                title: const Text('Home'),
              ),
              FlashyTabBarItem(
                icon: const Icon(Icons.search),
                title: const Text('Search'),
              ),
              FlashyTabBarItem(
                icon: const Icon(Icons.favorite),
                title: const Text('Favorite'),
              ),
              FlashyTabBarItem(
                icon: const Icon(Icons.person),
                title: const Text('Profile'),
              ),
            ],
          );
        },
      ),
    );
  }
}

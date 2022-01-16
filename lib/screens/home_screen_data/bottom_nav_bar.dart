import 'package:flutter/material.dart';

import 'selected_index_screen.dart';

BottomNavigationBar bottomNavBar({required void Function(int)? onTap,}) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      // type: BottomNavigationBarType.shifting,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onTap,
      currentIndex: selectedIndex,
      iconSize: 26,
      selectedItemColor: const Color(0xFFA7BBDB),
      unselectedItemColor: const Color(0xFFD3D8E0),
    );
  }

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:store_app/helpers/icon_provider.dart';
import 'package:store_app/views/electronics_page.dart';
import 'package:store_app/views/home_page.dart';
import 'package:store_app/views/jewlary_page.dart';
import 'package:store_app/views/mens_clothes_page.dart';
import 'package:store_app/views/women_clothes_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // ignore: non_constant_identifier_names
  List Screens = const [
    HomePage(),
    MensClothesPage(),
    ElectronicsPage(),
    WomenClothesPage(),
    JewlaryPage(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        color: const Color.fromARGB(255, 215, 176, 255),
        backgroundColor: Colors.transparent,
        items: [
          CustomIconProvider.getHomePageIcon(),
          CustomIconProvider.getMaleClothesIcon(),
          CustomIconProvider.getElectronicsIcon(),
          CustomIconProvider.getWamenClothesIcon(),
          CustomIconProvider.getJewlaryIcon(),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Screens[_selectedIndex],
    );
  }
}

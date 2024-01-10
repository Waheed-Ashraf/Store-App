import 'package:flutter/widgets.dart';

class CustomIconProvider {
  static Image getElectronicsIcon() {
    return Image.asset(
      'assets/icons/cpu.png',
      width: 24,
      height: 24,
    );
  }

  static Image getHomePageIcon() {
    return Image.asset(
      'assets/icons/homepage.png',
      width: 24,
      height: 24,
    );
  }

  static Image getJewlaryIcon() {
    return Image.asset(
      'assets/icons/jewelry.png',
      width: 24,
      height: 24,
    );
  }

  static Image getMaleClothesIcon() {
    return Image.asset(
      'assets/icons/male-clothes.png',
      width: 24,
      height: 24,
    );
  }

  static Image getWamenClothesIcon() {
    return Image.asset(
      'assets/icons/woman-clothes.png',
      width: 24,
      height: 24,
    );
  }
}

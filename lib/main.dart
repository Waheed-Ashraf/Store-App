import 'package:flutter/material.dart';
import 'package:store_app/services/get_all_product_service.dart';
import 'package:store_app/views/home_page.dart';
import 'package:store_app/views/splash_screen.dart';
import 'package:store_app/views/update_product_page.dart';
import 'package:store_app/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        'HomePage': (context) => const HomePage(),
        'UpdateProductPage': (context) => UpdateProductPage(),
      },
      home: SplashScreen(),
    );
  }
}

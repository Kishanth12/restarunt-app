import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restarunt_app/pages/cart_page.dart';
import 'pages/menu_page.dart';
import 'pages/intro_page.dart';
import 'package:restarunt_app/models/shop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),

    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const IntroPage(),
      routes: {
        '/introPage': (context) => const IntroPage(),
        '/menuPage': (context) => const MenuPage(),
        '/CartPage':(context) => const CartPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lalafo_flutter/src/data/model/shop.dart';
import 'package:lalafo_flutter/src/app/navbar_app.dart';

void main() {
  runApp(
    // Wrap your MaterialApp with the Provider
    ChangeNotifierProvider(
      create: (_) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

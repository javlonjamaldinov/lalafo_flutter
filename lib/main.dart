import 'package:flutter/material.dart';
import 'package:lalafo_flutter/app/navbar_app.dart';

import 'package:lalafo_flutter/ui/page/home_page.dart';

void main() {
  runApp(const MyApp());
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

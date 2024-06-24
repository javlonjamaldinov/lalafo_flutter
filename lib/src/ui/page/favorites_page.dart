import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgwhiteColor,
      appBar: AppBar(title: Text("favorites"),),
    );
  }
}

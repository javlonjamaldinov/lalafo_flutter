import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class CreatPage extends StatelessWidget {
  const CreatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgwhiteColor,
      appBar: AppBar(title: Text("Creat"),),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 45),
        child: Container(
          height: 45,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(10),
          child: const Center(
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}

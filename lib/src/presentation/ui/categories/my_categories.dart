import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/categories/categories_data.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class MyCategories extends StatelessWidget {
  const MyCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.bgwhiteColor,
        border: Border.all(color: AppColors.lolgreyColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            AppText.selectCategory,
            style: TextStyle(fontSize: 16),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CategoriesData()),
              );
            },
            child: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
              size: 27,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/local/my_text.dart';
import 'package:lalafo_flutter/src/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/ui/theme/my_category_color.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';

class CategoriesData extends StatelessWidget {
  const CategoriesData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgwhiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: AppColors.bgwhiteColor,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            AppText.mycategory,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              size: 35,
              color: AppColors.greyColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Container(
            height: 70,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: colors[index % colors.length],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Image.asset(
                  categoryImg[index],
                  height: 40,
                  width: 40,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    category[index],
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.blakColor,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.greyColor,
                  size: 15,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

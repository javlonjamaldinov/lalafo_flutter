import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/components/my_back_buttom.dart';
import 'package:lalafo_flutter/src/components/my_textfield.dart';
import 'package:lalafo_flutter/src/app/product_app.dart';
import 'package:lalafo_flutter/src/data/model/shop.dart';
import 'package:lalafo_flutter/src/data/local/my_text.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';
import 'package:provider/provider.dart';

// Виджет SearchApp
class SearchApp extends StatelessWidget {
  const SearchApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const MyBackButton(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.05),
                  child: const MyTextfield(),
                ),
              ),
            ],
          ),
          SizedBox(height: screenSize.height * 0.02),
          Container(
            height: screenSize.height * 0.13,
            width: double.infinity,
            color: AppColors.accentColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenSize.width * 0.04,
                      bottom: screenSize.height * 0.03),
                  child: const Text(
                    'разместите вакансию',
                    style: TextStyle(
                      color: AppColors.blakColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenSize.width * 0.01,
                      right: screenSize.width * 0.01),
                  child: Image.asset(
                    'assets/images/R.jpg',
                    height: screenSize.height * 0.12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenSize.height * 0.04),
          Padding(
            padding: EdgeInsets.only(right: screenSize.width * 0.2),
            child: RichText(
              text: const TextSpan(
                text: "Найдено в категории '",
                style: TextStyle(
                  color: AppColors.blakColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "официант",
                    style: TextStyle(
                      color: AppColors.blakColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: "'",
                    style: TextStyle(
                      color: AppColors.blakColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.02),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: tabText.map((text) {
                return GestureDetector(
                  onTap: () {
                    // Обработка нажатия на контейнер
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.02),
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.04,
                        vertical: screenSize.height * 0.01),
                    decoration: ShapeDecoration(
                      color: AppColors.whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              text,
                              style: const TextStyle(
                                color: AppColors.greyColor,
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: AppColors.greyColor,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: screenSize.height * 0.01),
          Expanded(
            child: Consumer<Shop>(
              builder: (context, shop, child) {
                return const ProductApp();
              },
            ),
          ),
        ],
      ),
    );
  }
}

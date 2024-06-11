import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lalafo_flutter/components/my_back_buttom.dart';
import 'package:lalafo_flutter/components/my_textfield.dart';
import 'package:lalafo_flutter/ui/theme/my_color.dart';

class SearchApp extends StatelessWidget {
  const SearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            children: [
              MyBackButton(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 45,
                  ),
                  child: MyTextfield(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 110,
            width: double.infinity,
            color: AppColors.accentColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 30),
                  child: Text(
                    'разместите воканцию',
                    style: TextStyle(
                      color: AppColors.blakColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: Image.asset(
                    'assets/images/R.jpg',
                    height: 120, // Установите нужную высоту изображения
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

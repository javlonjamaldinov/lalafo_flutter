import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class MyTextStyles {
  static TextStyle wallet1 = const TextStyle(
    fontSize: 13,
    color: AppColors.blgreyColor,
    fontWeight: FontWeight.w400,
  );
  static TextStyle wallet2 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.blakColor,
  );
  static TextStyle wallet3 = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.blgreyColor,
  );
  static TextStyle wallet4 = const TextStyle(
    color: AppColors.blakColor,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static TextStyle wallet5 = const TextStyle(
    color: AppColors.blakColor,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
  static TextStyle wallet6 = const TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle content = const TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle homestl(BuildContext context) => TextStyle(
        color: AppColors.blakColor,
        fontSize: MediaQuery.of(context).size.width * 0.04,
        fontWeight: FontWeight.bold,
      );

  static TextStyle profile(Size screenSize) => TextStyle(
        fontSize: screenSize.width * 0.036,
        color: AppColors.blakColor,
        fontWeight: FontWeight.w500,
      );
  static TextStyle eprofile(Size screenSize) => TextStyle(
        fontSize: screenSize.width * 0.034,
        color: AppColors.blakColor,
        fontWeight: FontWeight.w300,
      );
  static TextStyle searsh = const TextStyle(
    color: AppColors.blakColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle searsh1 = const TextStyle(
    color: AppColors.blakColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle searsh2 = const TextStyle(
    color: AppColors.blakColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle searsh3 = const TextStyle(
    color: AppColors.blakColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle searshrk = const TextStyle(
    color: AppColors.greyColor,
  );
  static TextStyle mainsearch = const TextStyle(
    fontSize: 17,
    color: AppColors.greenColor,
    fontWeight: FontWeight.w800,
  );
  static TextStyle settings = const TextStyle(
    color: AppColors.blakColor,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
  static TextStyle searshText = TextStyle(
    color: AppColors.green,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle mycategories = const TextStyle(
    color: AppColors.blakColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle country = const TextStyle(
    color: AppColors.blakColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle searshstl =const TextStyle(color: AppColors.lolgreyColor);
}

import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/ui/page/replenish.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';

class RowWithIconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconPaddingLeft;
  final double? iconPaddingTop;
  final double? iconPaddingBottom;
  final double textFontSize;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonPaddingRight;
  final VoidCallback? onTap;

  const RowWithIconAndText({
    required this.icon,
    required this.text,
    required this.iconPaddingLeft,
    this.iconPaddingTop,
    this.iconPaddingBottom,
    required this.textFontSize,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.buttonPaddingRight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: iconPaddingLeft,
            top: iconPaddingTop ?? 0,
            bottom: iconPaddingBottom ?? 0,
          ),
          child: CircleAvatar(
            backgroundColor: AppColors.white,
            radius: 18,
            child: Icon(
              icon,
              size: 18,
              color: AppColors.blgreyColor,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Padding(
          padding: EdgeInsets.only(
            left: iconPaddingLeft,
            top: iconPaddingTop ?? 0,
            bottom: iconPaddingBottom ?? 0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textFontSize,
              color: AppColors.blgreyColor,
            ),
          ),
        ),
        const Spacer(),
        if (onTap != null)
          GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.only(
                top: iconPaddingTop ?? 0,
                bottom: iconPaddingBottom ?? 0,
                right: buttonPaddingRight,
              ),
              child: Container(
                height: buttonHeight,
                width: buttonWidth,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                AppText.replenish,
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

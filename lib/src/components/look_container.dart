import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class DuaContainer extends StatelessWidget {
  final String text;
  final Color textColor;
  final VoidCallback onTap;
  final String imageUrl;

  const DuaContainer({
    Key? key,
    required this.text,
    required this.textColor,
    required this.onTap,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double containerWidth = screenSize.width * 0.5;
    final double containerHeight = screenSize.width * 0.29;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.whiteColor,
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

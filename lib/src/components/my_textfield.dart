import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/presentation/ui/page/filter.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [

          Expanded(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 14.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.whiteColor),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  hintText: "Я ищу...",
                  hintStyle: const TextStyle(color: AppColors.lolgreyColor),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          const SizedBox(width: 11),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Filter()),
              );
            },
            child: Text(
              AppText.filter,
              style: MyTextStyles.mainsearch,
            ),
          ),
        ],
      ),
    );
  }
}

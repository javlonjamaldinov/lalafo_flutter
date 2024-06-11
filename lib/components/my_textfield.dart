import 'package:flutter/material.dart';
import 'package:lalafo_flutter/ui/theme/my_color.dart';

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
                  contentPadding: const EdgeInsets.symmetric(
                      vertical:
                          14.0), 
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
          const Text(
            'Фильтр',
            style: TextStyle(
              fontSize: 17,
              color: AppColors.greenColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

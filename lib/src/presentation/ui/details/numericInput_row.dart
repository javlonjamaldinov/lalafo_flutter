import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/map/world_map.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class NumericInputRow extends StatelessWidget {
  const NumericInputRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.lolgreyColor,
                  ),
                  color: AppColors.whitegrColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'от',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8.0),
                    ),
                    style: MyTextStyles.wallet3,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.lolgreyColor,
                  ),
                  color: AppColors.whitegrColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'до',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8.0),
                    ),
                    style: MyTextStyles.wallet3,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Container(
        height: 45,
        width: 350,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.lolgreyColor,
          ),
          color: AppColors.whitegrColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WorldMap()),
            );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    AppText.location,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.lolgreyColor,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

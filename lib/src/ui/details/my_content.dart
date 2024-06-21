import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/local/my_text.dart';
import 'package:lalafo_flutter/src/ui/details/Rowmy_withIcon_and_text.dart';
import 'package:lalafo_flutter/src/ui/page/replenish.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';


class MyContent extends StatelessWidget {
  const MyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    // Constants for padding and sizes
    const double iconPaddingLeft = 12;
    const double iconPaddingTop = 15;
    const double iconPaddingBottom = 15;
    const double textFontSize = 16;
    const double buttonWidth = 100;
    const double buttonHeight = 30; // Declaring buttonHeight here
    final double dividerHorizontalPadding = screenSize.width * 0.0882;
    final double buttonPaddingRight = screenSize.width * 0.035;

    return Center(
      child: Container(
        height: 130,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.whiteColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowWithIconAndText(
              icon: Icons.more_horiz,
              text: contText[0],
              iconPaddingLeft: iconPaddingLeft,
              iconPaddingTop: iconPaddingTop,
              textFontSize: textFontSize,
              buttonWidth: buttonWidth,
              buttonHeight: buttonHeight,
              buttonPaddingRight: buttonPaddingRight,
            ),
            const Divider(height: 1, color: AppColors.white),
            RowWithIconAndText(
              icon: Icons.account_balance_wallet_rounded,
              text: contText[1],
              iconPaddingLeft: iconPaddingLeft,
              iconPaddingBottom: iconPaddingBottom,
              textFontSize: textFontSize,
              buttonWidth: buttonWidth,
              buttonHeight: buttonHeight,
              buttonPaddingRight: buttonPaddingRight,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Replenish()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/app/product_app.dart';
import 'package:lalafo_flutter/src/components/my_textfield.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/my_avatar.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text_styles.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';
import 'package:lalafo_flutter/src/app/work_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgwhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenSize.height * 0.05),
              child: const MyTextfield(),
            ),
            SizedBox(height: screenSize.height * 0.02),
            SizedBox(
              height: screenSize.height *
                  0.12, // Fixed height for the horizontal ListView
              child: const MyAvatar(),
            ),
            SizedBox(height: screenSize.height * 0.01),
            Padding(
              padding: EdgeInsets.only(left: screenSize.width * 0.05),
              child: Text(
                AppText.job,
                style: MyTextStyles.homestl(context),
              ),
            ),
            SizedBox(height: screenSize.height * 0.005),
            const WorkApp(), // No need to wrap with another Column
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

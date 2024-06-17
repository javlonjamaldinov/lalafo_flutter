import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/components/my_textfield.dart';
import 'package:lalafo_flutter/src/ui/details/my_avatar.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';
import 'package:lalafo_flutter/src/app/work_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
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
              "Летняя работа",
              style: TextStyle(
                color: AppColors.blakColor,
                fontSize: screenSize.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.005),
          const Expanded(
            child: WorkApp(), // Use Expanded to take remaining space
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

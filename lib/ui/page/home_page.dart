import 'package:flutter/material.dart';
import 'package:lalafo_flutter/components/my_textfield.dart';
import 'package:lalafo_flutter/ui/details/my_avatar.dart';
import 'package:lalafo_flutter/ui/theme/my_color.dart';
import 'package:lalafo_flutter/app/work_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: MyTextfield(),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 100, // Fixed height for the horizontal ListView
            child: MyAvatar(),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              "Летняя работа",
              style: TextStyle(
                color: AppColors.blakColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: WorkApp(), // Use Expanded to take remaining space
          ),
        ],
      ),
    );
  }
}

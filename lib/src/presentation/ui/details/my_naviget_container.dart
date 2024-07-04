import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text_styles.dart';

class MyNavigetContainer extends StatelessWidget {
  const MyNavigetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(25),
        ),
        child:  Center(
          child: Text(
             AppText.replenish,
             style: MyTextStyles.content,
          ),
        ),
      ),
    );
  }
}

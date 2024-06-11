import 'package:flutter/material.dart';
import 'package:lalafo_flutter/ui/details/my_text.dart';
import 'package:lalafo_flutter/ui/theme/my_color.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // Fixed height for the horizontal ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          List<Color> customColors = [
            const Color.fromARGB(255, 158, 147, 160),
            Colors.blue,
            const Color.fromARGB(255, 246, 170, 57),
            const Color.fromARGB(255, 175, 64, 195),
            const Color.fromARGB(255, 231, 56, 115),
            const Color.fromARGB(255, 107, 216, 111),
            const Color.fromARGB(255, 59, 134, 255),
            const Color.fromARGB(255, 29, 233, 73),
            const Color.fromARGB(255, 37, 231, 176),
            const Color.fromARGB(255, 71, 30, 233),
            const Color.fromARGB(255, 231, 37, 202),
            const Color.fromARGB(255, 21, 181, 117),
          ];
          Color backgroundColor = customColors[index % customColors.length];
          return Container(
            margin: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: backgroundColor,
                  child: ClipOval(
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        imageUrl[index],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  avatar[index],
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blakColor,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

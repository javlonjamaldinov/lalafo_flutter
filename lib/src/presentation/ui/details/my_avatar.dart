import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/local/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double avatarRadius = screenSize.width * 0.07;
    final double imageSize = avatarRadius * 0.8;

    return SizedBox(
      height: screenSize.height * 1, // Adapt height based on screen size
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
            margin: EdgeInsets.all(screenSize.width * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: avatarRadius,
                  backgroundColor: backgroundColor,
                  child: ClipOval(
                    child: SizedBox(
                      width: imageSize,
                      height: imageSize,
                      child: Image.asset(
                        imageUrl[index],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.00 ),
                Text(
                  avatar[index],
                  style: TextStyle(
                    fontSize: screenSize.width * 0.03,
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

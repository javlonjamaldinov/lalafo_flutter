import 'package:flutter/material.dart';
import 'package:lalafo_flutter/app/search_app.dart';
import 'package:lalafo_flutter/components/look_container.dart';
import 'package:lalafo_flutter/ui/theme/my_color.dart';

class WorkApp extends StatelessWidget {
  const WorkApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double itemHeight = (screenSize.height - kToolbarHeight - 26) / 5;
    final double itemWidth = screenSize.width / 3;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 50,
          childAspectRatio: itemWidth / itemHeight,
        ),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          DuaContainer duaContainer;
          switch (index) {
            case 0:
              duaContainer = DuaContainer(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchApp(),
                    ),
                  );
                },
                text: 'Официант',
                textColor: AppColors.textColor,
                imageUrl: 'assets/images/R.jpg',
              );
              break;
            case 1:
              duaContainer = DuaContainer(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchApp(),
                    ),
                  );
                },
                text: "Промоутер",
                textColor: AppColors.textColor,
                imageUrl: 'assets/images/S.jpg',
              );
              break;
            case 2:
              duaContainer = DuaContainer(
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchApp(),
                    ),
                  );
                },
                text: "Бармен",
                textColor: AppColors.textColor,
                imageUrl: 'assets/images/P.jpg',
              );
              break;
            case 3:
              duaContainer = DuaContainer(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchApp(),
                    ),
                  );
                },
                text: "Продовец-консу \n льтант",
                textColor: AppColors.textColor,
                imageUrl: 'assets/images/E.jpg',
              );
              break;
            case 4:
              duaContainer = DuaContainer(
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchApp(),
                    ),
                  );
                },
                text: "Няня",
                textColor: AppColors.textColor,
                imageUrl: 'assets/images/H.jpg',
              );
              break;
            case 5:
              duaContainer = DuaContainer(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchApp(),
                    ),
                  );
                },
                text: "Рвзнарабочий",
                textColor: AppColors.textColor,
                imageUrl: 'assets/images/Hj.jpg',
              );
              break;
            default:
              duaContainer = DuaContainer(
                onTap: () {},
                text: 'Text $index',
                textColor: AppColors.textColor,
                imageUrl: '', // Provide a default image URL here
              );
          }
          return SizedBox(
            height: itemHeight,
            width: itemWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 1,
              ),
              child: duaContainer,
            ),
          );
        },
      ),
    );
  }
}

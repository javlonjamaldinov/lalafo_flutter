import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/app/product_app.dart';
import 'package:lalafo_flutter/src/app/search_app.dart';
import 'package:lalafo_flutter/src/components/look_container.dart';
import 'package:lalafo_flutter/src/components/tab_item.dart';
import 'package:lalafo_flutter/src/presentation/ui/details/text/my_text.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class WorkApp extends StatelessWidget {
  const WorkApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double itemHeight = (screenSize.height - kToolbarHeight - 26) / 5;
    final double itemWidth = screenSize.width / 3;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SizedBox(
            height: 180,
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 50,
                childAspectRatio: itemWidth / itemHeight,
              ),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                DuaContainer duaContainer;
                switch (index) {
                  case 0:
                    duaContainer = DuaContainer(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchApp(),
                          ),
                        );
                      },
                      text: AppText.waiter,
                      textColor: AppColors.textColor,
                      imageUrl: 'assets/images/waiter3.jpg',
                    );
                    break;
                  case 1:
                    duaContainer = DuaContainer(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchApp(),
                          ),
                        );
                      },
                      text: AppText.promoter,
                      textColor: AppColors.textColor,
                      imageUrl: 'assets/images/R.jpg',
                    );
                    break;
                  case 2:
                    duaContainer = DuaContainer(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchApp(),
                          ),
                        );
                      },
                      text: AppText.bartender,
                      textColor: AppColors.textColor,
                      imageUrl: 'assets/images/P.jpg',
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
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: duaContainer,
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 10), // Add spacing
        SizedBox(
          height: screenSize.height * 0.1, // Define height for TabBarDemo
          child: const TabBarDemo(),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 120),
          child: ProductApp(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/components/my_switch_container.dart';
import 'package:lalafo_flutter/src/data/model/food.dart';
import 'package:lalafo_flutter/src/data/model/shop.dart';
import 'package:lalafo_flutter/src/ui/theme/my_color.dart';
import 'package:provider/provider.dart';

class ProductApp extends StatelessWidget {
  const ProductApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double itemHeight = (screenSize.height - kToolbarHeight - 26) / 5;
    final double itemWidth = screenSize.width / 3;

    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Consumer<Shop>(
        builder: (context, shop, _) => GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 40,
            childAspectRatio: itemWidth / itemHeight,
          ),
          itemCount: shop.foodMenu.length,
          itemBuilder: (BuildContext context, int index) {
            final Food food = shop.foodMenu[index];
            return Column(
              children: [
                SizedBox(
                  height: itemHeight,
                  width: itemWidth,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: MySwitchContainet(
                      onTap: () {
                        shop.addToCart(food, 1);
                      },
                      text: food.name,
                      textColor: AppColors.textColor,
                      imageUrl: food.imagePath,
                    ),
                  ),
                ),
                const SizedBox(height: 10), // Пространство между контейнерами
              ],
            );
          },
        ),
      ),
    );
  }
}

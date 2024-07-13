import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/model/food.dart';
import 'package:lalafo_flutter/src/data/model/shop.dart'; // Import the Shop class
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';
import 'package:provider/provider.dart';
class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double itemHeight = (screenSize.height - kToolbarHeight - 26) / 3.8;
    final double itemWidth = screenSize.width / 2;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<Shop>(
        builder: (context, shop, _) => ListView.builder(
          shrinkWrap: true, // Add this line
          physics: const NeverScrollableScrollPhysics(), // Add this line
          itemCount: (shop.foodMenu.length / 2).ceil(),
          itemBuilder: (BuildContext context, int index) {
            final int firstIndex = index * 2;
            final int secondIndex = firstIndex + 1;
            return Row(
              children: <Widget>[
                Expanded(
                  child: _buildFoodCard(
                      shop.foodMenu[firstIndex], itemHeight, itemWidth, shop),
                ),
                const SizedBox(width: 8.0), // Spacing between items
                if (secondIndex < shop.foodMenu.length)
                  Expanded(
                    child: _buildFoodCard(
                        shop.foodMenu[secondIndex], itemHeight, itemWidth, shop),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildFoodCard(
      Food food, double itemHeight, double itemWidth, Shop shop) {
    return SizedBox(
      width: itemWidth,
      child: Card(
        color: Colors.white,
        child: Container(
          constraints: BoxConstraints(minHeight: itemHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: itemWidth,
                height: 230,
                child: Image.asset(
                  food.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Цена: ${food.price}',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      food.announcement,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(food.avatarImagePath),
                          radius: 16,
                        ),
                        const SizedBox(width: 40),
                        const Icon(Icons.email, color: AppColors.lolgreyColor),
                        const SizedBox(width: 5),
                        IconButton(
                          icon: food.isFavorite
                              ? const Icon(Icons.favorite, color: Colors.red)
                              : const Icon(Icons.favorite_border,
                                  color: AppColors.lolgreyColor),
                          onPressed: () {
                            shop.handleFavoriteToggle(food);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
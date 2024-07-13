import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/data/model/shop.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<Shop>(context);

    final Size screenSize = MediaQuery.of(context).size;
    final double itemWidth = screenSize.width / 2;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        title: const Text(
          "Favorites",
        ),
        backgroundColor: Colors.white.withOpacity(0.8),
      ),
      body: shop.favorites.isEmpty
          ? const Center(
              child: Text(
                'No Favorites Added',
                style: TextStyle(fontSize: 20),
              ),
            )
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: itemWidth / 300,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: shop.favorites.length,
              itemBuilder: (context, index) {
                final food = shop.favorites[index];
                return GestureDetector(
                  onTap: () {
                    // Handle item tap if needed
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(10.0),
                            ),
                            child: Image.asset(
                              food.imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                            ),
                            color: Colors.white.withOpacity(0.8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                food.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Цена: ${food.price}\n${food.announcement}',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(food.avatarImagePath),
                                    radius: 16,
                                  ),
                                  const SizedBox(width: 30),
                                  IconButton(
                                    icon: const Icon(Icons.email,
                                        color: AppColors.lolgreyColor),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(width: 5),
                                  IconButton(
                                    icon: const Icon(Icons.favorite,
                                        color: Colors.red),
                                    onPressed: () {
                                      shop.removeFromFavorites(food);
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
                );
              },
            ),
    );
  }
}

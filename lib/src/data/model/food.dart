class Food {
  String name;
  String price;
  String imagePath;
  String announcement;
  String avatarImagePath; // Новое поле для аватара
  bool isFavorite;

  Food({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.announcement,
    required this.avatarImagePath, // Инициализация нового поля
    this.isFavorite = false,
  });


}

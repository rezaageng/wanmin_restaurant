enum Rarity {
  oneStar,
  twoStars,
  threeStars,
  fourStars,
  fiveStars,
}

class FoodModel {
  final String id;
  final List<String> categories;
  final String title;
  final String imgUrl;
  final String effect;
  final List<String> ingredients;
  final Rarity rarity;
  final bool isSpecial;
  final bool isExlusive;

  const FoodModel({
    required this.id,
    required this.categories,
    required this.title,
    required this.imgUrl,
    required this.effect,
    required this.ingredients,
    required this.rarity,
    required this.isSpecial,
    required this.isExlusive,
  });
}

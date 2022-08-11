import '../models/food_models.dart';

const List<FoodModel> foodDummy = [
  FoodModel(
    id: 'f1',
    categories: ['c1', 'c5'],
    title: '"Pile \'Em Up"',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/e/e3/Item_%22Pile_%27Em_Up%22.png/revision/latest?cb=20210415145821',
    effect: 'Increases all party members\' CRIT Rate by 15% for 300s.',
    ingredients: ['3 Raw Meat', '3 Potato', '1 Small Lamp Grass', '1 Cheese'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f2',
    categories: ['c1', 'c5'],
    title: 'Adventurer\'s Breakfast Sandwich',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/c/c4/Item_Adventurer%27s_Breakfast_Sandwich.png/revision/latest?cb=20210416224615',
    effect: 'Increases all party members\' ATK by 194 for 300s.',
    ingredients: ['4 Bird Egg', '3 Flour', '1 Ham'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f3',
    categories: ['c1', 'c6'],
    title: 'Calla Lily Seafood Soup',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/4/4e/Item_Calla_Lily_Seafood_Soup.png/revision/latest?cb=20210416221719',
    effect: 'Increases all party members\' DEF by 200 for 300s.',
    ingredients: ['4 Crab', '1 Calla Lily', '2 Mint'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f4',
    categories: ['c1', 'c7'],
    title: 'Mondstadt Grilled Fish',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/c/c9/Item_Mondstadt_Grilled_Fish.png/revision/latest?cb=20210416223406',
    effect: 'Revives a character and restores 100 HP.',
    ingredients: ['1 Fish', '1 Pepper'],
    rarity: Rarity.oneStar,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f5',
    categories: ['c1', 'c7'],
    title: 'Sticky Honey Roast',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/8/85/Item_Sticky_Honey_Roast.png/revision/latest?cb=20210416222832',
    effect:
        'Decreases all party member\'s climbing and sprinting Stamina consumption by 20% for 900s.',
    ingredients: ['3 Raw Meat', '2 Carrot', '2 Sugar'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f6',
    categories: ['c1', 'c7'],
    title: 'Sweet Madame',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/1/12/Item_Sweet_Madame.png/revision/latest?cb=20210415134415',
    effect:
        'Restores 22% of Max HP and an additional 1,200 HP to the selected character.',
    ingredients: ['2 Fowl', '2 Sweet Flower'],
    rarity: Rarity.twoStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f7',
    categories: ['c2', 'c5'],
    title: 'Adeptus\' Temptation',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/5/5e/Item_Adeptus%27_Temptation.png/revision/latest?cb=20210415133724',
    effect:
        'Increases all party members\' ATK by 316 and CRIT Rate by 10% for 300s.',
    ingredients: ['4 Ham', '3 Crab', '3 Shrimp Meat', '3 Matsutake'],
    rarity: Rarity.fiveStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f8',
    categories: ['c2', 'c5'],
    title: 'Almond Tofu',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/5/5f/Item_Almond_Tofu.png/revision/latest?cb=20210216225709',
    effect:
        'A dessert made out of almond. It has a silky-smooth texture with a long-lasting aroma of almond. It\'s named tofu only because of its tofu-like shape.',
    ingredients: ['3 Milk', '1 Sugar', '1 Almond'],
    rarity: Rarity.twoStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f9',
    categories: ['c2', 'c6'],
    title: 'Golden Crab',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/a/a3/Item_Golden_Crab.png/revision/latest?cb=20210415145849',
    effect:
        'Increases all party members\' DEF by 261 and healing effects by 8% for 300s.',
    ingredients: ['5 Bird Egg', '5 Flour', '4 Crab', '2 Salt'],
    rarity: Rarity.fourStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f10',
    categories: ['c2', 'c8'],
    title: 'Zhongyuan Chop Suey',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/8/8c/Item_Zhongyuan_Chop_Suey.png/revision/latest?cb=20210416223953',
    effect:
        'Decreases all party members\' climbing and sprinting Stamina consumption by 20% for 900s.',
    ingredients: ['3 Raw Meat', '3 Fish', '3 Flour', '2 Salt'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f11',
    categories: ['c3', 'c7'],
    title: 'Dango Milk',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/8/83/Item_Dango_Milk.png/revision/latest?cb=20210904020630',
    effect:
        'Restores 26% of Max HP to the selected character and regenerates 570 HP every 5s for 30s.',
    ingredients: ['1 Dango', '1 Milk'],
    rarity: Rarity.twoStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f12',
    categories: ['c3', 'c8'],
    title: 'Omelette Rice',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/e/e7/Item_Omelette_Rice.png/revision/latest?cb=20210901042546',
    effect:
        'Decreases Stamina depleted by climbing and sprinting for all party members by 20% for 900s.',
    ingredients: ['4 Bird Egg', '3 Rice', '2 Tomato', '1 Sugar'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f13',
    categories: ['c3', 'c7'],
    title: 'Onigiri',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/5/5f/Item_Onigiri.png/revision/latest?cb=20210723020415',
    effect:
        'Restores 20% of Max HP to the selected character and regenerates 390 HP every 5s for 30s.',
    ingredients: ['2 Fish', '1 Rice', '2 Sea Grass'],
    rarity: Rarity.twoStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f14',
    categories: ['c3', 'c7'],
    title: 'Sakura Mochi',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/0/05/Item_Sakura_Mochi.png/revision/latest?cb=20210723020811',
    effect: 'Revives a character and restores 1,200 HP.',
    ingredients: ['4 Rice', '2 Sugar', '1 Sakura Bloom'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f15',
    categories: ['c3', 'c7'],
    title: 'Tuna Sushi',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/6/68/Item_Tuna_Sushi.png/revision/latest?cb=20210723023501',
    effect: 'Revives a character and restores 1,200 HP.',
    ingredients: ['3 Fish', '3 Rice', '2 Tomato', '1 Sugar'],
    rarity: Rarity.twoStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f16',
    categories: ['c2', 'c7'],
    title: 'Ghostly March',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/4/45/Item_Ghostly_March.png/revision/latest?cb=20210209204841',
    effect:
        'Revives a character and restores 15% of Max HP, then restores an additional 550 HP.',
    ingredients: ['2 Matsutake', '2 Snapdragon', '2 Salt'],
    rarity: Rarity.twoStars,
    isSpecial: true,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f17',
    categories: ['c3', 'c8'],
    title: 'Rainbow Aster',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/c/cd/Item_Rainbow_Aster.png/revision/latest?cb=20220330022419',
    effect:
        'Decreases all party members\' gliding and sprinting Stamina consumption by 20% for 900s.',
    ingredients: ['3 Milk', '2 Lavender Melon', '2 Calla Lily', '1 Mint'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: true,
  ),
  FoodModel(
    id: 'f18',
    categories: ['c4'],
    title: 'Frosting Essential Oil',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/4/46/Item_Frosting_Essential_Oil.png/revision/latest?cb=20210109221111',
    effect: 'Increases all party members\' Cryo DMG by 25% for 300s',
    ingredients: ['1 Lizard Tail', '1 Mist Flower Corolla', '100 Mora'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: false,
  ),
  FoodModel(
    id: 'f19',
    categories: ['c4'],
    title: 'Gushing Essential Oil',
    imgUrl:
        'https://static.wikia.nocookie.net/gensin-impact/images/d/d9/Item_Gushing_Essential_Oil.png/revision/latest?cb=20210109221048',
    effect: 'Increases all party members\' Anemo DMG by 25% for 300s.',
    ingredients: ['1 Lizard Tail', '1 Dendelion Seed', '100 Mora'],
    rarity: Rarity.threeStars,
    isSpecial: false,
    isExlusive: false,
  ),
];

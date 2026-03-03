import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: 'Creamy Pasta',
    imagePath: 'assets/images/pasta.jpg',
    ingredients: [
      '200g pasta',
      '1 cup cream',
      '2 cloves garlic',
      'Parmesan cheese',
    ],
    instructions:
        'Boil pasta. Saute garlic. Add cream. Mix pasta. Top with cheese.',
  ),
  Recipe(
    name: 'Fresh Garden Salad',
    imagePath: 'assets/images/salad.jpg',
    ingredients: ['Lettuce', 'Tomatoes', 'Cucumber', 'Olive oil'],
    instructions: 'Chop vegetables. Toss with olive oil. Serve fresh.',
  ),
];

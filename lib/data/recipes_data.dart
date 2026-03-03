import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: "Creamy Pasta",
    imagePath: "assets/images/pasta.jpg",
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
    name: "Fresh Garden Salad",
    imagePath: "assets/images/salad.jpg",
    ingredients: ['Lettuce', 'Tomatoes', 'Cucumber', 'Olive oil'],
    instructions: 'Chop vegetables. Toss with olive oil. Serve fresh.',
  ),
  Recipe(
    name: "Cheese Pizza",
    imagePath: "assets/images/pizza.jpg",
    ingredients: ['Pizza dough', 'Tomato sauce', 'Mozzarella cheese'],
    instructions: 'Spread sauce. Add cheese. Bake at 200°C for 15 minutes.',
  ),
  Recipe(
    name: "Chocolate Cake",
    imagePath: "assets/images/cake.jpg",
    ingredients: ['Flour', 'Sugar', 'Cocoa powder', 'Eggs'],
    instructions: 'Mix ingredients. Bake at 180°C for 30 minutes.',
  ),
  Recipe(
    name: "Burger",
    imagePath: "assets/images/burger.jpg",
    ingredients: ['Burger bun', 'Patty', 'Lettuce', 'Tomato'],
    instructions: 'Cook patty. Assemble ingredients inside bun.',
  ),
];

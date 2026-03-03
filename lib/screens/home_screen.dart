import 'package:flutter/material.dart';
import '../data/recipes_data.dart';
import '../models/recipe.dart';
import 'details_screens.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void openFavorites() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FavoritesScreen()),
    ).then((_) {
      setState(() {}); // refresh when returning
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe Book"),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: openFavorites,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: sampleRecipes.length,
        itemBuilder: (context, index) {
          final recipe = sampleRecipes[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Image.asset(
                recipe.imagePath,
                width: 60,
                fit: BoxFit.cover,
              ),
              title: Text(recipe.name),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipe),
                  ),
                ).then((_) {
                  setState(() {}); // refresh after toggle
                });
              },
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../data/recipes_data.dart';
import '../models/recipe.dart';
import 'details_screens.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Recipe> favoriteRecipes = sampleRecipes
        .where((r) => r.isFavorite)
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text("My Favourites")),
      body: favoriteRecipes.isEmpty
          ? const Center(child: Text("No favourites added yet."))
          : ListView.builder(
              itemCount: favoriteRecipes.length,
              itemBuilder: (context, index) {
                final recipe = favoriteRecipes[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
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
                          builder: (_) => DetailsScreen(recipe: recipe),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}

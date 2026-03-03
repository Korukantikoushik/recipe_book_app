import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailsScreen extends StatefulWidget {
  final Recipe recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  void toggleFavorite() {
    setState(() {
      widget.recipe.isFavorite = !widget.recipe.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    final recipe = widget.recipe;

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
        actions: [
          IconButton(
            icon: Icon(
              recipe.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: toggleFavorite,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              recipe.imagePath,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),

            const Text(
              "Ingredients",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            ...recipe.ingredients.map(
              (ingredient) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text("• $ingredient"),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Instructions",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Text(recipe.instructions),
          ],
        ),
      ),
    );
  }
}

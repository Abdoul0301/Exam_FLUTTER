import 'package:flutter/material.dart';
import 'package:isi/RecipeScreen.dart';
import 'package:isi/homepage.dart';
import 'package:isi/recipe.dart';
import 'package:isi/recipeListScreen.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'festival des Delices',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage()

    );
  }
}










// ignore: file_names
import 'package:flutter/material.dart';
import 'package:meal/dummy_data.dart';
import 'package:meal/widgets/meal_item.dart';

class CategoryMealScreen extends StatefulWidget {
  const CategoryMealScreen({Key? key}) : super(key: key);
  // ignore: constant_identifier_names
  static const CategoryMealRoute = "category_meal";
  @override
  State<CategoryMealScreen> createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg["title"];
    final categorymeals = DUMMY_MEALS.where(((element) {
      return element.categories.contains(categoryId);
    })).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
            itemCount: categorymeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(imageUrl: categorymeals[index].imageUrl, affordability: categorymeals[index].affordability, complexity: categorymeals[index].complexity, duration: categorymeals[index].duration, title: categorymeals[index].title, id: categorymeals[index].id,);
            }));
  }
}

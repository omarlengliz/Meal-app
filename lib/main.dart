import 'package:flutter/material.dart';
import 'package:meal/screens/Category_Screen.dart';
import 'package:meal/screens/Category_meal_screen.dart';
import 'package:meal/screens/filters_screen.dart';
import 'package:meal/screens/meal_details_screen.dart';
import 'package:meal/screens/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          canvasColor: Colors.white,
          textTheme: const TextTheme(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 50, 50, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 50, 50, 1)),
              headline2: TextStyle(
                fontSize: 25,
              ),
              headline1: TextStyle(
                  fontSize: 24,
                  fontFamily: "RobotoCondensed",
                  fontWeight: FontWeight.bold),
              headline4: TextStyle(
                color: Color(0xff848591),
              ))),
      //home: const MyHomePage(),
      routes: {
        "/": (context) => const TabScreen(),
        CategoryMealScreen.CategoryMealRoute: (context) =>
            const CategoryMealScreen(),
            MealDetailsScreen.routeName :(context)=>  MealDetailsScreen(),
            FilterScreen.RouteName : (context) => const FilterScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Meal app"),
        ),
        body: const CategoriesScreen());
  }
}

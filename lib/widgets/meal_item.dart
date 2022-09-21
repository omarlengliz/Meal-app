import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/screens/meal_details_screen.dart';

class MealItem extends StatelessWidget {

  final String imageUrl;
  final String id;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

   const MealItem(
      {required this.imageUrl,
      required this.title,
      required this.duration,
      required this.complexity,
      required this.affordability, required this.id});

      String get ComplexityText
      {
          switch(complexity)
          {
            case Complexity.Simple : return "Simple" ;
            case Complexity.Hard : return "Hard" ;
            case Complexity.Challenging : return "Challenging" ;
            default : return "Unknown";

          }
      }
      String get AffordabilityText
      {
          switch(affordability)
          {
            case Affordability.Pricey : return "Pricey" ;
            case Affordability.Luxurious : return "Luxurious" ;
            case Affordability.Affordable : return "Affordable" ;
            default : return "Unknown";

          }
      }
        void selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MealDetailsScreen.routeName,arguments:  id);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () =>selectMeal(context),
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 4,
            margin: const EdgeInsets.all(18),
            child: Column(children: [
              Stack(children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(imageUrl))
              ]),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12,),
                    const Divider(height: 0.1, color: Colors.black),
                    const SizedBox(height: 12,),
                    Row(
                      
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                        Row(children: [
                          const Icon(Icons.alarm),
                          const SizedBox(width: 6,),

                          Text("$duration min")
                        ],),

                        Row(children: [
                          const Icon(Icons.work),
                          const SizedBox(width: 6,),
                          
                          Text("$ComplexityText ")
                        ],),
                        Row(children: [
                          const Icon(Icons.attach_money),
                          const SizedBox(width: 6,),

                          Text("$AffordabilityText ")
                        ],),
                      
                     
                    ]),
                  ],
                ),
              )
            ])));
  }
}

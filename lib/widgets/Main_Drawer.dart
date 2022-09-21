import 'package:flutter/material.dart';
import 'package:meal/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({ Key? key }) : super(key: key);
Widget buildListTile (String title, IconData icon,VoidCallback tapHandler){
return ListTile (
  leading: const Icon(Icons. restaurant, size: 26),
  title: Text ( 
       title , style: const TextStyle (
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight . bold,)
      ),

  onTap: tapHandler,
);
}
    @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            color: Colors.pink,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: const Text("cooking",style: TextStyle(
              fontSize: 36,
              color: Colors.white

            ),textAlign: TextAlign.center,),
          ),
          const SizedBox(height: 28,),
          buildListTile("Meal", Icons.restaurant,(){
                                     Navigator.pushReplacementNamed(context, "/");

          }),
          buildListTile("Filters", Icons.settings,(){
                         Navigator.pushReplacementNamed(context, FilterScreen.RouteName);

          }),
        ],
      ),
      
    );
  }
}
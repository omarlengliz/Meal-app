import 'package:flutter/material.dart';
import 'package:meal/screens/Category_Screen.dart';
import 'package:meal/screens/fav_screen.dart';

import '../widgets/Main_Drawer.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, dynamic>> pages = [
    {'page':  CategoriesScreen(), 'title': 'Categories'},
    {'page':  FavScreen(), 'title': 'Your Favorites'}
  ];
  int _selectedPageIndex = 0;
  void _selectedIndex(int value) {
    setState(() {
      _selectedPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(title:  Text(pages[_selectedPageIndex]["title"].toString())),
      body: pages[_selectedPageIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedIndex,
        
        backgroundColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(
              
              icon: Icon(Icons.category,
          color: Colors.grey,), label: "Category" ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite"),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const RouteName="/Filters";
  const FilterScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your filters" )),
      
    );
  }
}
import 'package:dogs_app_rays/controllers/doggie_provider.dart';
import 'package:dogs_app_rays/screens/dog_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DoggieProvider(
      child: BuggieBoiApp(),
    ),
  );
}

class BuggieBoiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: DogScreen(),
    );
  }
}

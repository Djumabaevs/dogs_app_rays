import 'dart:developer' as dev;
import 'package:dogs_app_rays/controllers/doggie_provider.dart';
import 'package:dogs_app_rays/models/dog.dart';
import 'package:dogs_app_rays/models/forever_home.dart';
import 'package:dogs_app_rays/screens/dog_details.dart';
import 'package:dogs_app_rays/screens/dog_tile.dart';
import 'package:flutter/material.dart';

class DogScreen extends StatefulWidget {
  @override
  _DogScreenState createState() => _DogScreenState();
}

class _DogScreenState extends State<DogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Who\'s a good boy?'),
      ),
      body: Column(children: [
        Expanded(child: _buildForeverHome()),
        SafeArea(child: _buildDogPicker()),
      ]),
    );
  }

  Widget _buildForeverHome() {
    final dog = DoggieProvider.of(context).home.dog;
    return AnimatedSwitcher(
      switchInCurve: Curves.easeInOut,
      switchOutCurve: Curves.easeInOut,
      duration: Duration(milliseconds: 100),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            child: child,
            scale: animation,
          ),
        );
      },
      child: DogDetails(key: ValueKey(dog), dog: dog),
    );
  }

  Widget _buildDogPicker() {
    final controller = DoggieProvider.of(context);
    final dogs = controller.dogs;

    return Row(
      children: <Widget>[
        for (Dog dog in dogs)
          Expanded(
            child: DogTile(
              dog: dog,
              selected: controller.home.dog == dog,
              onTapped: () {
                setState(() {
                  controller.home = ForeverHome(dog: dog);
                });
                dev.log("Some long message");
              },
            ),
          )
      ],
    );
  }
}

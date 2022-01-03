import 'package:dogs_app_rays/controllers/dog_controller.dart';
import 'package:flutter/cupertino.dart';

class DoggieProvider extends InheritedWidget {
  final _controller = DogController();

  DoggieProvider({Key key, @required Widget child})
      : super(key: key, child: child);

  static DogController of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<DoggieProvider>()
        ._controller;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}

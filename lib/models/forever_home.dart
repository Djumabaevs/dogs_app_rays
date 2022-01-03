import 'package:dogs_app_rays/models/dog.dart';
import 'package:meta/meta.dart';

class ForeverHome {
  final Dog dog;
  int pets = 0;

  ForeverHome({
    @required this.dog,
    int pets = 0,
  }) : assert(dog != null);
}

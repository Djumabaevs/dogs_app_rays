import 'package:dogs_app_rays/models/dog.dart';
import 'package:dogs_app_rays/models/forever_home.dart';

class DogController {
  final dogs = [
    Dog(
        name: 'Rooney',
        assetPath: 'assets/images/dog1.jpeg',
        age: 3,
        breed: 'Shih Tsu',
        credit: 'Photo by Nikolay Tchaouchev on Unsplash'),
    Dog(
      name: 'Oliver',
      assetPath: 'assets/images/dog2.jpeg',
      age: 8,
      breed: 'Golden Retriever',
      credit: 'Photo by Benjamin Ilchmann on Unsplash',
    ),
    Dog(
      name: 'Amy',
      assetPath: 'assets/images/dog3.jpeg',
      age: 4,
      breed: 'Miniature Schnauzer',
      credit: 'Photo by Sebastian Coman Travel on Unsplash',
    ),
  ];

  ForeverHome home;

  DogController() {
    home = ForeverHome(
      dog: dogs.first,
      pets: 0,
    );
  }
}

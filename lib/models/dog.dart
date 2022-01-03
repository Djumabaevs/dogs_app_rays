import 'package:meta/meta.dart';

class Dog {
  final String name;
  final String assetPath;
  final int age;
  final String breed;
  final bool goodBoi;
  final String credit;

  const Dog({
    @required this.name,
    @required this.assetPath,
    @required this.age,
    @required this.breed,
    this.credit,
    this.goodBoi = true,
  })  : assert(name != null),
        assert(assetPath != null),
        assert(age != null),
        assert(goodBoi == true, 'All dogs are good boys!');

  factory Dog.fromJson(Map json) {
    final name = json['name'];
    final assetPath = json['assetPath'];
    final age = json['age'];
    final breed = json['breed'];
    final goodBoi = json['goodBoi'];
    final credit = json['credit'];

    return Dog(
      name: name,
      assetPath: assetPath,
      age: age,
      breed: breed,
      goodBoi: goodBoi,
      credit: credit,
    );
  }
}

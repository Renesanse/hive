import 'package:hive/hive.dart';

part 'main.g.dart';

class PropertyNotifier<T> {
  final T value;

  PropertyNotifier(this.value);
}

@HiveType(typeId: 1)
class Person {
  @HiveField(0)
  final PropertyNotifier<String> name;

  Person(this.name);

  @HiveField(1)
  int age;

  @HiveField(2)
  List<String> friends;

  @override
  String toString() {
    return '$name: $age';
  }
}

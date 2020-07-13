import 'package:hive/hive.dart';

part 'main.g.dart';

@HiveType(typeId: 1)
class Person {
  @HiveField(0)
  final String _name;

  Person(String name) : _name = name;
}

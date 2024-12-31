import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class EquatablePackage extends StatefulWidget {
  const EquatablePackage({super.key});

  @override
  State<EquatablePackage> createState() => _EquatablePackageState();
}

class _EquatablePackageState extends State<EquatablePackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        final person1 = Person(name: "Basit", age: 24);
        final person2 = Person(name: "Basit", age: 24);
        print(person1 == person2);
      }),
    );
  }
}

class Person extends Equatable {
  final String name;
  final int age;
  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}

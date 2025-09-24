import 'package:flutter/material.dart';

class Person{
  final int? id;
  final String? fullNames;
  final String? surName;
  final String? knownAs;
  final DateTime? dateOfBirth;
  final DateTime? dateOfDeath;
  final int? ageAtDeath;
  final int? age;
  final String? placeOdBirth;
  final String? placeOdDeath;

  Person({
    this.id,
    this.fullNames,
    this.surName,
    this.knownAs,
    this.dateOfBirth,
    this.dateOfDeath,
    this.ageAtDeath,
    this.age,
    this.placeOdBirth,
    this.placeOdDeath
  });

  factory Person.fromJson(Map<String, dynamic> json){
    return Person(
      id: json['id'],
      fullNames: json['fullNames'],
      surName: json['surname'],
      knownAs: json['knownAs'],
      dateOfBirth: json['dateOfBirth'],
      dateOfDeath: json['dateOfDeath'],
      ageAtDeath: json['ageAtDeath'],
      age: json['age'],
      placeOdBirth: json['placeOfBirth'],
      placeOdDeath: json['placeOfDeath']
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'fullNames': fullNames,
      'surname': surName,
      'knownAs': knownAs,
      'dateOfBirth': dateOfBirth,
      'dateOfDeath': dateOfDeath,
      'ageAtDeath': ageAtDeath,
      'age': age,
      'placeOfBirth': placeOdBirth,
      'placeOfDeath': placeOdDeath
    };
  }
}
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:core';

import 'package:age_calculator/age_calculator.dart';

class KidModel {

  String? kidName;

  String? kidBirth;

  String? weeks;

  String? gender;

  DateDuration? age;


  changeName(String value) => kidName = value;

  changeBirth(String value) => kidBirth = value;

  changeWeeks(String value) => weeks = value;

  changeGender(String value) => gender = value;

  KidModel({
    this.kidName,
    this.kidBirth,
    this.weeks,
    this.gender,
  });

  



  KidModel copyWith({
    String? kidName,
    String? kidBirth,
    String? weeks,
    String? gender,
  }) {
    return KidModel(
      kidName: kidName ?? this.kidName,
      kidBirth: kidBirth ?? this.kidBirth,
      weeks: weeks ?? this.weeks,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kidName': kidName,
      'kidBirth': kidBirth,
      'weeks': weeks,
      'gender': gender,
    };
  }

  factory KidModel.fromMap(Map<String, dynamic> map) {
    return KidModel(
      kidName: map['kidName'] != null ? map['kidName'] as String : null,
      kidBirth: map['kidBirth'] != null ? map['kidBirth'] as String : null,
      weeks: map['weeks'] != null ? map['weeks'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory KidModel.fromJson(String source) => KidModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'KidModel(kidName: $kidName, kidBirth: $kidBirth, weeks: $weeks, gender: $gender)';
  }

  @override
  bool operator ==(covariant KidModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.kidName == kidName &&
      other.kidBirth == kidBirth &&
      other.weeks == weeks &&
      other.gender == gender;
  }

  @override
  int get hashCode {
    return kidName.hashCode ^
      kidBirth.hashCode ^
      weeks.hashCode ^
      gender.hashCode;
  }
}

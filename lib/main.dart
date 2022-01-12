//import 'package:flutter/material.dart';
class Student {
  final String _name = 'A Student';
  String get name => _name;
  late final School school;
}

class School {
  final String _name = 'L\'cole';
  String get name => _name;
  late final Student student;
}

void main(List<String> args) {
  int? x;
  x = null;
  // output is null
  print(x);
  List<String?> theListThatCanHoldNullValue = ['first', 'second', null];
  print(theListThatCanHoldNullValue.length); // 3
  print(theListThatCanHoldNullValue[2]);
  //int? a = null;
  //int b = a;
  // a value of type int? cannot ne assigned to a variable of 'type' int
  //print(b);
  String? _aTextThatCouldBeNullButNot() => 'Not Null';
  String? notNull = _aTextThatCouldBeNullButNot();
  print(notNull);
  final aStudent = Student();
  final aSchool = School();
  aStudent.school = aSchool;
  aSchool.student = aStudent;
  print('A student gets a school ' + aStudent.school.name);
  print('A school gets a student ' + aSchool.student.name);
}

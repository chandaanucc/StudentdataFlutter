import 'package:exampleproject/db/models/data_model.dart';
import 'package:flutter/material.dart';

ValueNotifier <List<StudentModel>> studentlistNotifier =ValueNotifier([]);

void addStudent(StudentModel value) {
  studentlistNotifier.value.add(value);
  // ignore: avoid_print
  print(value.toString());
}

import 'package:hive/hive.dart';

 ({int typeId}) HiveType = (typeId : 1);
class StudentModel extends HiveObject {

  @HiveField(0)
  late final String ? name;
  @HiveField(1)
  late final String ? subject;
  @HiveField(2)
  late final String ? dob;
  @HiveField(3)
  late final String ? phone;

  StudentModel({required this.name, required this.subject, required this.dob, required this.phone});

}
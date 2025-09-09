import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Task{
  String id;
  String name;
  String description;
  bool isCompleted;

  Task({
    String? id, 
    required this.name, 
    required this.description, 
    required this.isCompleted
  }) : id = id ?? uuid.v4();
}
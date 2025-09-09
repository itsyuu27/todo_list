import 'package:todo_list/model/task.dart';

class TaskList{
  String listName;
  
  List<Task> _tasks = [];

  TaskList({required this.listName, List<Task>? initialTask}): _tasks = initialTask ?? [];

  List<Task> get tasks => _tasks;

  void addNewTask(String name, String description, bool isCompleted){
    _tasks.add(Task(
      name: name, 
      description: description, 
      isCompleted: isCompleted
    ));
  }

  void removeTaskById(String id){
    _tasks.removeWhere((task) => task.id == id);
  }
}
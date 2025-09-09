import 'package:flutter/material.dart';
import 'package:todo_list/model/task_list.dart';

class TaskListPage extends StatefulWidget {
  final TaskList taskList;
  const TaskListPage({super.key, required this.taskList});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF2B2C4E),
            Color(0xFF0F0B2A),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(widget.taskList.listName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ListView.builder(
              itemCount: widget.taskList.tasks.length,
              itemBuilder: (context, index){
                final task = widget.taskList.tasks[index];

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 25, 19, 66),
                  elevation: 0,
                  child: ListTile(
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        
                      },
                    ),
                    title: Text(
                      task.name,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
          },
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
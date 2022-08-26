import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/tasks_store.dart';
import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  final String title;
  const TasksPage({Key? key, this.title = 'TasksPage'}) : super(key: key);
  @override
  TasksPageState createState() => TasksPageState();
}
// ## VERDE CLARO
//   ## R: 101, G: 187, B: 88
class TasksPageState extends State<TasksPage> {
  final TasksStore store = Modular.get();
// ## LARANJA MEIO ESCURO
//   ## R: 239, G: 121, B: 91
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 239, 121, 91),
      ),
      body: Container(
        color: const Color.fromARGB(255, 239, 121, 91),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: LayoutBuilder(builder: (_, constraintss){
                return const SingleChildScrollView(

                );
              }),
            )
          ],
        ),
      )
    );
  }
}
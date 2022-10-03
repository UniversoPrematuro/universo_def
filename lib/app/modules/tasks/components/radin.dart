import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../models/task_model.dart';
import '../tasks_store.dart';

enum Options { sim, nao, parcial }

// class Radin extends StatefulWidget {
//   const Radin({super.key});

//   @override
//   State<Radin> createState() => _RadinState();
// }

// class _RadinState extends State<Radin> {
//   Options? op;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [

//       ],
//     );
//   }
// }

class Radin extends StatefulWidget {
  Radin({super.key, this.task});
  String? task;
  String? uid;

  @override
  State<Radin> createState() => _RadinState();
}

class _RadinState extends State<Radin> {
  Options? op;
  String? group;
  String? task;
  final TasksStore tStore = Modular.get();

  @override
  // void initState() {
  //   if (widget.task!.length == 10){
  //     group = widget.task!.substring(0,5);
  //     task = widget.task!.substring(5);
  //   } else {
  //     group = widget.task!.substring(0,4);
  //     task = widget.task!.substring(4);
  //   }
  //   super.initState();
  //   tStore.getTasksFromFirebase(widget.uid!, group!);
  // }

  @override
  Widget build(BuildContext context) {
    // List<Task> tsk;
    // Task fst = Task();
    // bool x = false;
  
  
  

    return Container(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: Theme.of(context).accentColor, width: 3.0)),
      child: Column(
        children: <Widget>[
          const Text('Responder ao final de dois dias sobre a execução das tarefas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          RadioListTile(
              groupValue: op,
              value: Options.sim,
              title: const Text("Sim"),
              onChanged: (Options? value) {
                setState(() {
                  op = value;
                  tStore.answer = value.toString();
                });
                tStore.uploadTaskToFirebase(widget.uid, widget.task, "SIM");
              }),
          RadioListTile(
              groupValue: op,
              value: Options.nao,
              title: const Text("Nao"),
              onChanged: (Options? value) {
                setState(() {
                  op = value;
                  tStore.answer = value.toString();
                });
                tStore.uploadTaskToFirebase(widget.uid, widget.task, "NAO");
              }),
          RadioListTile(
              groupValue: op,
              value: Options.parcial,
              title: const Text("Parcial"),
              onChanged: (Options? value) {
                setState(() {
                  op = value;
                  tStore.answer = op.toString();
                });
                tStore.uploadTaskToFirebase(widget.uid, widget.task, 'PARCIAL');
                
              }),
        ],
      ),
    );
  }
}



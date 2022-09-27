// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_comparison
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import 'package:collection/collection.dart';
import 'package:collection/collection.dart';

// import '../../models/task_model.dart';
import '../../models/task_model.dart';
import '../tasks_store.dart';

// enum SingingCharacter { sim, nao, parcial }
class Radin extends StatefulWidget {
  @override
  _RadinState createState() => _RadinState();
}

class _RadinState extends State<Radin> {
  final TasksStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(
        children: [
          const Text("Sim",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromARGB(255, 101, 187, 88))),
          Observer(builder: (_) {
            return Radio(
              value: "Sim",
              toggleable: true,
              groupValue: store.escolhaU,
              onChanged: (String? escolha) {
                store.escolhaU = escolha;
              },
              // groupValue: '',
            );
          }),
          const Text("Não",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color.fromARGB(255, 255, 193, 143))),
          Observer(builder: (_) {
            return Radio(
              value: "nao",
              toggleable: true,
              groupValue: store.escolhaU,
              onChanged: (String? escolha) {
                store.escolhaU = escolha!;
              },
              // groupValue: '',
            );
          }),
          const Text("Parcial",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color.fromARGB(255, 255, 193, 143))),
          Observer(builder: (_) {
            return Radio(
              value: "parcial",
              toggleable: true,
              groupValue: store.escolhaU,
              onChanged: (String? escolha) {
                store.escolhaU = escolha!;
              },
              // groupValue: '',
            );
          })
        ],
      )
    ]);
  }
}




// class Radin extends StatefulWidget {
//   String? task;
//   Radin({
//     Key? key,
//     this.task,
//   }) : super(key: key);

//   @override
//   _RadinState createState() => _RadinState();
// }

// class _RadinState extends State<Radin> {
//   SingingCharacter? _character;
//   String? group;
//   String? task;
//   final FirebaseFirestore db = FirebaseFirestore.instance;
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   final TasksStore store = Modular.get();

  



//   @override
//   void initState() {
//     if(widget.task!.length == 10){
//       group = widget.task!.substring(0,5);
//       task = widget.task!.substring(5);
//     }else {
//       group = widget.task!.substring(0,4);
//       task = widget.task!.substring(4);
//     }
//     super.initState();
//   }



//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<List<Task>>(
//       stream: store.outTask,
//       builder: (context, snapshot) {

//         List<Task> tsk;
//           Task fst = Task();
//           bool x = false;

//           if(snapshot.hasData&&snapshot.data!.isNotEmpty){

//             tsk = snapshot.data!;
//             tsk.sort((a,b)=>int.parse(a.task!.substring(4))
//                 .compareTo(int.parse(b.task!.substring(4))));

//             fst = tsk.firstWhereOrNull((item)=>item.status=="I")!;

//               if(fst.task==task){
//                 x = true;
//               } else x = false;


//             switch(tsk.firstWhere((item)=>item.task==task)
//                 .status){
//               case 'P':
//                 store.character = SingingCharacter.parcial;
//                 break;
//               case 'S':
//                 store.character = SingingCharacter.sim;
//                 break;
//               case 'N':
//                 store.character = SingingCharacter.nao;
//                 break;
//             }

//             return Container(
//               padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30.0),
//                   border: Border.all(
//                       color: Theme.of(context).accentColor,
//                       width: 3.0
//                   )
//               ),
//               child: Column(
//                 children: [
//                   Text(
//                       'Responder ao final de dois dias sobre a execução das tarefas',
//                       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,)
//                   ),
//                   RadioListTile(
//                     groupValue: store.character,
//                     value: SingingCharacter.sim,
//                     onChanged: x? 
//                     (SingingCharacter? value) async { 
//                       await store.uploadTaskToFirebase();
//                       fst.status = 'S';
//                       store.character = value;
//                       // store.getTasksFromFirebase(store.uid, group!);
 
//                       }:null,
//                     title: Text('Sim',style: TextStyle(color: Colors.black),)
//                   ),
//                   RadioListTile(
//                     groupValue: store.character,
//                     value: SingingCharacter.nao,
//                     onChanged: x? 
//                     (SingingCharacter? value) async { 
//                       await store.uploadTaskToFirebase();
//                       fst.status = 'N';
//                       store.character = value;
 
//                       }:null,
//                     title: Text('Não',style: TextStyle(color: Colors.black),)
//                   ),
//                   RadioListTile(
//                     groupValue: store.character,
//                     value: SingingCharacter.parcial,
//                     onChanged: x? 
//                     (SingingCharacter? value) async { 
//                       await store.uploadTaskToFirebase();
//                       fst.status = 'P';
//                       store.character = value;
 
//                       }:null,
//                     title: Text('Parcial',style: TextStyle(color: Colors.black),)
//                   ),
//                 ],
//               )
//             );


        
//       } else return CircularProgressIndicator();
//   } 
  
//   );
//   }
// }

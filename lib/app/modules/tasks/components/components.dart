import 'package:flutter/material.dart';



// import '../../models/task_model.dart';

Widget regText(String title, String text){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Colors.black,
            
          ),
          textAlign: TextAlign.justify,
        )
      ],
    );
}

// import 'package:flutter/material.dart';

Widget speechPerson() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(height: 50.0,color: Colors.red,),
          SizedBox(
            width: 100.0,
            child: Image.asset("images1/Personagemai.png"),
          ),
        ],
      ),
      Expanded(
        child: Container(
          //margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 20.0),
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images1/ballon9.png')
            ),
          ),
          child: const Text(
            "Vamos para a próxima etapa, um bom trabalho para as próximas tarefas",
            style: TextStyle(
                fontSize: 16
            ),
          ),
        ),
      )
    ],
  );
}

// ignore_for_file: public_member_api_docs, sort_constructors_first


// enum SingingCharacter { sim, nao, parcial }

// class Radin extends StatefulWidget {
//   final String? task;
//   final String? UID;
//   const Radin({
//     Key? key,
//     this.task,
//     this.UID,
//   }) : super(key: key);

//   @override
//   _RadinState createState() => _RadinState();
// }

// class _RadinState extends State<Radin> {
//   // SingingCharacter? _character;
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
//       stream: store.taskController.stream,
//       builder: (context, snapshot) {

//         late List<Task> tsk;
//           Task? fst = Task();
//           bool x = false;

//           if(snapshot.hasData&&snapshot.data!.isNotEmpty){

//             tsk = snapshot.data!;
//             tsk.sort((a,b)=>int.parse(a.task!.substring(4))
//                 .compareTo(int.parse(b.task!.substring(4))));

//             fst = tsk.firstWhereOrNull((item)=>item.status=="I");

//               if(fst!.task==task){
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
//                       fst!.status = 'S';
//                       store.character = value;
//                       store.uploadTaskToFirebase();
//                       // store.getTasksFromFirebase(store.uid!, group!);
 
//                       }:null,
//                     title: Text('Sim',style: TextStyle(color: Colors.black),)
//                   ),
//                   RadioListTile(
//                     groupValue: store.character,
//                     value: SingingCharacter.nao,
//                     onChanged: x? 
//                     (SingingCharacter? value) async { 
//                       fst!.status = 'N';
//                       store.character = value;
//                       store.uploadTaskToFirebase();
 
//                       }:null,
//                     title: Text('Não',style: TextStyle(color: Colors.black),)
//                   ),
//                   RadioListTile(
//                     groupValue: store.character,
//                     value: SingingCharacter.parcial,
//                     onChanged: x? 
//                     (SingingCharacter? value) async { 
//                       fst!.status = 'P';
//                       store.character = value;
//                       store.uploadTaskToFirebase();
 
//                       }:null,
//                     title: Text('Parcial',style: TextStyle(color: Colors.black),)
//                   ),
//                 ],
//               )
//             );


        
//       } else{
//         Radin();
//         store.getTasksFromFirebase(store.uid!, store.group);
//         return Container();
//       }
//   } 
  
//   );
//   }
// }


Widget textCTRST ({String? stg1,String? stg2,String? stg3}) {
  return RichText(
    textAlign: TextAlign.justify,
    text: TextSpan(
      text: stg1,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black,

      ),
      children: <TextSpan>[
        TextSpan(text: stg2, style: const TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: stg3),
      ],
    ),
  );
}
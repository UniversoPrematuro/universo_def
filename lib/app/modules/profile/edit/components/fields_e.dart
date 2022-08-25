import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../edit_store.dart';

class KidCard extends StatefulWidget {
  KidCard({Key? key}) : super(key: key);

  @override
  State<KidCard> createState() => _KidCardState();
}

class _KidCardState extends State<KidCard> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.height * .4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 8,
            spreadRadius: 1.5,
            color: Colors.black.withOpacity(.3))],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
        child: Column(children: [
          NameInputFb2(controllerKidName: store.controllerKidName),
          // const SizedBox(height: 8),
          BirthInputFb2(controllerKidBirth: store.controllerKidBirth),
          // const SizedBox(height: 8),
          WeekInputFb2(controllerWeeks: store.controllerWeeks)
        ]),
      ),
    );
  }
}


class NameInputFb2 extends StatelessWidget {

  
      
  final EditStore store = Modular.get();


  final TextEditingController controllerKidName;
   NameInputFb2({Key? key,required this.controllerKidName}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 35, 85, 24);
    const secondaryColor = Color.fromARGB(255, 101, 206, 88);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color.fromARGB(255, 232, 0, 0);
   
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white.withOpacity(.9)),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
            child: TextField(
              
              controller: store.controllerKidName,
              onChanged: (value) {
                //Do something wi
              },
              keyboardType: TextInputType.name,
              style: const TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                
                label: const Text("Nome"),
                labelStyle: const TextStyle(color: primaryColor),
                // prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: accentColor,
                hintText: 'Jane Doe',
                hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: secondaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
               errorBorder:const OutlineInputBorder(
                  borderSide: BorderSide(color: errorColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ) ,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
        ],
    );
  }
}

class BirthInputFb2 extends StatelessWidget {

  var maskDate = MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  final EditStore store = Modular.get();


  final TextEditingController controllerKidBirth;
   BirthInputFb2({Key? key,required this.controllerKidBirth}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 35, 85, 24);
    const secondaryColor = Color.fromARGB(255, 101, 206, 88);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color.fromARGB(255, 232, 0, 0);
   
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white.withOpacity(.9)),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
            child: TextField(
              inputFormatters: [maskDate],
              controller: store.controllerKidBirth,
              onChanged: (value) {
                //Do something wi
              },
              keyboardType: TextInputType.datetime,
              style: const TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                label: const Text("Aniversário"),
                labelStyle: const TextStyle(color: primaryColor),
                // prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: accentColor,
                hintText: '##/##/####',
                hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: secondaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
               errorBorder:const OutlineInputBorder(
                  borderSide: BorderSide(color: errorColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ) ,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
        ],
    );
  }
}

class WeekInputFb2 extends StatelessWidget {
  final EditStore store = Modular.get();


  final TextEditingController controllerWeeks;
   WeekInputFb2({Key? key,required this.controllerWeeks}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 35, 85, 24);
    const secondaryColor = Color.fromARGB(255, 101, 206, 88);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color.fromARGB(255, 232, 0, 0);

      var maskGage = MaskTextInputFormatter(
      mask: 'Semanas: ##, Dias: ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
   
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Semanas",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white.withOpacity(.9)),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
            child: TextField(
              inputFormatters: [maskGage],
              controller: store.controllerWeeks,
              onChanged: (value) {
                //Do something wi
              },
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                label: const Text("Semanas e dias"),
                labelStyle: const TextStyle(color: primaryColor),
                // prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: accentColor,
                hintText: 'Semanas: ##, Dias: #',
                hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: secondaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
               errorBorder:const OutlineInputBorder(
                  borderSide: BorderSide(color: errorColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ) ,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
        ],
    );
  }
}
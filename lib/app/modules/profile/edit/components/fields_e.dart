// ignore_for_file: prefer_const_constructors_in_immutables, unused_local_variable, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:universo_def/app/modules/profile/edit/components/test.dart';

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
      width: MediaQuery.of(context).size.width * .90,
      height: MediaQuery.of(context).size.height * .5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 8,
              spreadRadius: 1.5,
              color: Colors.black.withOpacity(.3))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
        child: Column(children: [

          const SizedBox(height: 45),
          Observer(
            builder: (_){
            
             return nameField(
              controller: store.controllerKidName,
              //  onChanged: store.changeKidName,
              // errorText: store.validateKidName(),
              labelText: 'Nome da criança'
            
            );}
          ),

          const SizedBox(height: 25),

          Observer(
            // Function()? errorText,
            builder: (_) {
              return birthField(
                controller: store.controllerKidBirth,
                onChanged: store.changeKidBirth,
                // errorText:  store.validateKidBirth,
                labelText: 'Nascimento',
              );
            }
            
            ),
          
          const SizedBox(height:25),

          Observer(
            builder: (_){
              return weekField(
                controller: store.controllerWeeks,
                onChanged: store.changeKidWeek,
                labelText: 'Idade gestacional',
                // errorText: store.validateKidWeek()
                // errorText: 
              );
            }
          ),

          
          
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Masculino",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromARGB(255, 101, 187, 88))),
                   Observer(
                    builder: (_) {
                      return Radio(
                        value: "masculino",
                        toggleable: true,
                        groupValue: store.escolhaUser,
                        onChanged: (String? escolha){
                          store.escolhaUser = escolha;
                        }
                      );
                    }
                   ),
        
                const Text("Feminino",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 193, 143))),

                   Observer(
                    builder: (_) {
                      return Radio(
                        value: "feminino",
                          toggleable: true,
                          groupValue: store.escolhaUser,
                          onChanged: (String? escolha) {
                            store.escolhaUser = escolha!;
                          }
                      );
                    }
                   )
              ],
            ),
          )

          
        ]),
      ),
    );
  }
}


class MomCard extends StatefulWidget {
  const MomCard({super.key});

  @override
  State<MomCard> createState() => _MomCardState();
}

class _MomCardState extends State<MomCard> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .90,
      height: MediaQuery.of(context).size.height * .45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 8,
              spreadRadius: 1.5,
              color: Colors.black.withOpacity(.3))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
        child: Column(children: [
          CepInputFb2(controller: store.controllerCEP),
          // const SizedBox(height: 8),
          // const SizedBox(height: 8),
          PhoneInputFb2(controller: store.controllerPhone),

          

          
        ]),
      ),
    );
  }
}

Widget nameField({String? labelText, Function(String)? onChanged,  errorText, controller}){
  final EditStore store = Modular.get();
    const primaryColor = Color.fromARGB(255, 35, 85, 24);
    const secondaryColor = Color.fromARGB(255, 101, 206, 88);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color.fromARGB(255, 232, 0, 0);
  return TextField(
    onChanged: null,
    controller: controller,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      errorText: errorText == null ? null : store.validateKidName(),
      labelText: labelText,
      filled: true,
      fillColor: accentColor,
      hintText: 'Insira o nome da criança',
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
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
    ),
  );
}

Widget birthField({String? labelText, Function(String)? onChanged,  errorText, controller}){

  var maskDate = MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  final EditStore store = Modular.get();
    const primaryColor = Color.fromARGB(255, 35, 85, 24);
    const secondaryColor = Color.fromARGB(255, 101, 206, 88);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color.fromARGB(255, 232, 0, 0);
  return TextField(
    onChanged: null,
    controller: controller,
    inputFormatters: [maskDate],
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      
      errorText: errorText == null ? null : store.validateKidBirth(),
      labelText: labelText,
      filled: true,
      fillColor: accentColor,
      hintText: 'Data de nascimento',
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
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
    ),
  );
}

Widget weekField({String? labelText, Function(String)? onChanged,  errorText, controller}){

  var maskGage = MaskTextInputFormatter(
        mask: 'Semanas: ##, Dias: #',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
  final EditStore store = Modular.get();
    const primaryColor = Color.fromARGB(255, 35, 85, 24);
    const secondaryColor = Color.fromARGB(255, 101, 206, 88);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color.fromARGB(255, 232, 0, 0);
  return TextField(
    onChanged: null,
    controller: controller,
    inputFormatters: [maskGage],
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      
      errorText: errorText,
      labelText: labelText,
      filled: true,
      fillColor: accentColor,
      hintText: 'Data de nascimento',
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
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
    ),
  );
}




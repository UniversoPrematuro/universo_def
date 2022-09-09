// ignore_for_file: prefer_const_constructors_in_immutables, unused_local_variable, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
          NameInputFb2(controller: store.controllerKidName),
          // const SizedBox(height: 8),
          BirthInputFb2(controller: store.controllerKidBirth),
          // const SizedBox(height: 8),
          WeekInputFb2(controller: store.controllerWeeks),

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


class NameInputFb2 extends StatelessWidget {
  final EditStore store = Modular.get();

  final TextEditingController controller;
  NameInputFb2({Key? key, required this.controller}) : super(key: key);

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
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
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
class CepInputFb2 extends StatelessWidget {
  final EditStore store = Modular.get();

  final TextEditingController controller;
  CepInputFb2({Key? key, required this.controller}) : super(key: key);

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
          "Insria seu cep",
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
            controller: store.controllerCEP,
            maxLength: 8,
            onChanged: (value) {
              // value = store.controllerStreet.text;
            },
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration(
              label: const Text("CEP"),
              labelStyle: const TextStyle(color: primaryColor),
              // prefixIcon: Icon(Icons.email),
              filled: true,
              fillColor: accentColor,
              hintText: 'Ex: 12345678',
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
          ),
        ),
      ],
    );
  }
}

class PhoneInputFb2 extends StatelessWidget {
  var maskPhone = MaskTextInputFormatter(
      mask: '+55 (##) - ##### - ####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  final EditStore store = Modular.get();

  final TextEditingController controller;
  PhoneInputFb2({Key? key, required this.controller}) : super(key: key);

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
          "Celular",
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
            inputFormatters: [maskPhone],
            controller: store.controllerPhone,
            onChanged: (value) {
              //Do something wi
            },
            keyboardType: TextInputType.phone,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration(
              label: const Text("Celular"),
              labelStyle: const TextStyle(color: primaryColor),
              // prefixIcon: Icon(Icons.email),
              filled: true,
              fillColor: accentColor,
              hintText: '## - ##### ####',
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

  final TextEditingController controller;
  BirthInputFb2({Key? key, required this.controller}) : super(key: key);

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
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
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

  final TextEditingController controller;
  WeekInputFb2({Key? key, required this.controller}) : super(key: key);

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
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
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
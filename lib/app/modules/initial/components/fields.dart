// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class EmailInputFieldFb3 extends StatelessWidget {
  final TextEditingController controllerEmail;
  const EmailInputFieldFb3({Key? key, required this.controllerEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: controllerEmail,
        onChanged: (value) {
          //Do something wi
        },
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(fontSize: 14, color: Colors.black),
        decoration: InputDecoration(
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.email, color: Colors.green,),
          filled: true,
          hintText: 'Insira seu e-mail',
          hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}

class NameInputFieldFb3 extends StatelessWidget {
  final TextEditingController controllerNameMom;
  final onChanged;
  final errorText;
  const NameInputFieldFb3(
      {Key? key,
      required this.controllerNameMom,
      required this.onChanged,
      this.errorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: controllerNameMom,
        onChanged: (value) {
          //Do something wi
        },
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(fontSize: 14, color: Colors.black),
        decoration: InputDecoration(
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.person, color: Colors.green,),
          filled: true,
          hintText: 'Insira seu nome',
          hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 211, 0, 0), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}

class PasswordInput extends StatefulWidget {
  final String hintText;
  final TextEditingController controllerPass;

  const PasswordInput(
      {required this.controllerPass, required this.hintText, Key? key})
      : super(key: key);

  @override
  State<PasswordInput> createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  bool pwdVisibility = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controllerPass,
      obscureText: !pwdVisibility,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        suffixIcon: InkWell(
          onTap: () => setState(
            () => pwdVisibility = !pwdVisibility,
          ),
          child: Icon(
            pwdVisibility
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: Colors.grey.shade400,
            size: 18,
          ),
        ),
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return 'Required';
        }
        return null;
      },
    );
  }
}

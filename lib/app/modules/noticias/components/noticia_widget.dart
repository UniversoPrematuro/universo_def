// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

class noticiaContent extends StatelessWidget {

  String figure;
  Widget descript;

  noticiaContent(this.figure,this.descript, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      width: 250.0,
      //height: 250.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: const Color.fromARGB(255, 101, 188, 89),
              width: 3.0,
          )
      ),
      child: Column(
        children: <Widget>[
          Image.asset(figure, fit: BoxFit.scaleDown),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: descript,
          )
        ],
      ),
    );
  }
}

class textContent extends StatelessWidget {

  String title;
  String description;
  textContent(this.title,this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(text: title, style: const TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: description)
        ]
      ),
    );
  }
}

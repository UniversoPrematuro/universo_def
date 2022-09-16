import 'package:flutter/material.dart';

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
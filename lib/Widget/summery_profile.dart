import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SizedBox summery_profile() {
  return SizedBox(
    child: Row(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(Icons.person),
        ),
        SizedBox(
          width: 10,
        ),
        Text('Name',style: TextStyle(
            fontSize: 20
        ),)
      ],
    ),
  );
}
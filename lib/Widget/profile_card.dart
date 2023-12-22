import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String First='';
String Last='';
getData()async{
  SharedPreferences sp= await SharedPreferences.getInstance();
  First=sp.getString('First').toString();
  Last=sp.getString('Last').toString();
}


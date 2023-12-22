import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shered extends StatefulWidget {
  const Shered({super.key});

  @override
  State<Shered> createState() => _SheredState();
}

class _SheredState extends State<Shered> {
  String name='None';
  String key_name='UserName';
  TextEditingController nameController= TextEditingController();

 void getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

     name= prefs.getString(key_name)??'None';
   setState(() {

   });
  }
  addName(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key_name, value);
    nameController.clear();
    getName();

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getName();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print(nameController.text);
          addName(nameController.text);
        },
        child: Icon(Icons.add),),
      body: Column(
        children: [
          Center(child: Text(name.toString()),),
         TextFormField(
           controller: nameController,
         ),

        ],
      ),
    );
  }
}

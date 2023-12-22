

import 'package:flutter/material.dart';

import '../Page/home_page.dart';

class SplassScreen extends StatefulWidget {
  const SplassScreen({super.key});

  @override
  State<SplassScreen> createState() => _SplassScreenState();
}

class _SplassScreenState extends State<SplassScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: Text('G D S',style: TextStyle(
                color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 145),
              child: Container(
                height: 50,
                width: 200,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                   color: Colors.white,
                    border: Border.all(color: Colors.blueAccent)
                ),
                child: InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
                    },
                    child: Center(child: Text('Get Started'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

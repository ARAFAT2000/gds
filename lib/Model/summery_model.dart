import 'package:flutter/material.dart';


import '../View/view_graph.dart';
import '../Widget/summery_profile.dart';


class SummeryModel extends StatefulWidget {
  const SummeryModel({super.key});

  @override
  State<SummeryModel> createState() => _SummeryModelState();
}

class _SummeryModelState extends State<SummeryModel> {

  List<Subject> subject=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Padding(
             padding: const EdgeInsets.only(left: 50,top: 15,right: 15),
             child: Column(
               children: [
                 summery_profile(),
                 SizedBox(
                   height: 100,
                 ),
                 Text('Circle'),
                 Text('Circle'),
                 Text('Circle'),
                 Text('Circle'),
                 SizedBox(
                   height: 220,
                 ),
                 
                 SizedBox(
                     child: ElevatedButton(onPressed: (){},
                         child: Text('Start Again')))

               ],
             ),
           )
        ],
      ),
    );
  }


}

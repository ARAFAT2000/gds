import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Widget/profile_card.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String first='';
  String last='';
  getData()async{
    SharedPreferences sp= await SharedPreferences.getInstance();
  setState(() {
    first=sp.getString('First').toString();
    last=sp.getString('Last').toString();
  });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
          SizedBox(
          child: const Card(
          child: ListTile(
          leading: CircleAvatar(
          backgroundColor: Colors.deepPurple,
            radius: 40,
            child: Icon(Icons.person),
          ),

        subtitle: Text('first'),
      ),
    ),
    ),
              SizedBox(height: 15,),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                  Row(
                    children: [
                          Expanded(
                            flex:2,
                              child:  TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Title',
                                    border: OutlineInputBorder()
                                ),
                              ),
                          ),
                      SizedBox(width: 10,),
                      Expanded(
                        flex:1,
                        child:  TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Subject',
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    ],
                  ),
                      SizedBox(height:10,),
                      TextFormField(
                      maxLines: 4,
                        decoration: InputDecoration(
                            hintText: 'Description',
                            border: OutlineInputBorder()
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
             Padding(
               padding: const EdgeInsets.only(left: 13,right: 13),
               child: SizedBox(
                 width: double.infinity,
                 child: ElevatedButton(
                     onPressed: (){},
                     child: Text('Submit')),
               ),
             ),

              SizedBox(
                height: 10,
              ),
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: GridView.builder(
                   itemCount: 5,
                   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                       maxCrossAxisExtent: 170,
                       mainAxisSpacing: 5,
                       crossAxisSpacing: 5,
                     mainAxisExtent: 120
                   ),
                   itemBuilder: (context,index){
                     return Container(
                      
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         color: Colors.deepPurple,
                         borderRadius: BorderRadius.circular(10)
                       ),
                       child: Center(child: Text('2')),
                     );
                   },

                     ),
               ),
             )
            ],
          )),
    );
  }


}

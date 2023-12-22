import 'package:flutter/material.dart';
import 'package:gds/Page/form_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model2/model2.dart';
import '../style/hello.dart';
import '../style/texform_decoration.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  TextEditingController firstNameController= TextEditingController();
  TextEditingController lastNameController= TextEditingController();

  GlobalKey<FormState>_globalKey= GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello !', style: HelloTextStyle(),),
              SizedBox(
                height: 15,
              ),
           SizedBox(
             child: Form(
               key: _globalKey,
               child: Column(
               children: [
                 SizedBox(
                   child: TextFormField(
                       validator: (value) {
                         if (value == null || value.isEmpty) {
                           return 'Please enter first name';
                         }
                         return null;
                       },
                     controller: firstNameController,
                       decoration: TextFieldInputDecoration('First Name')
                   ),
                 ),
                 SizedBox(
                   height: 15,
                 ),
                 SizedBox(
                   child: TextFormField(
                       validator: (value) {
                         if (value == null || value.isEmpty) {
                           return 'Please enter last name';
                         }
                         return null;
                       },
                     controller: lastNameController,
                       decoration: TextFieldInputDecoration('Last Name')
                   ),
                 ),
               ],
                          ),
             ),),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.deepPurple,
                    border: Border.all(color: Colors.blueAccent)
                ),

                child: TextButton(
                    onPressed: ()async{
                 SharedPreferences sp= await SharedPreferences.getInstance();
                   sp.setString('First', firstNameController.text);
                   sp.setString('Last', firstNameController.text);
                   Navigator.pushAndRemoveUntil(context,
                       MaterialPageRoute(builder: (context)=>FormPage()), (route) => true);
                    },
                    child: Text('Next',style: NextTextStyle(),)),
              )
            ],
          ),
        ),
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:gds/test/shere_preferance.dart';

import 'Model/summery_model.dart';
import 'Page/form_page.dart';
import 'Screen/splass_screen.dart';
import 'Page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: SplassScreen(),
    );
  }
}



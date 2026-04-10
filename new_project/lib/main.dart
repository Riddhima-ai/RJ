import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:new_project/home_page.dart';
=======
import 'package:new_project/add_task.dart';
>>>>>>> 42f1e9e9db5a2254bf3614da614cd50436bd556b

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage() ,
      debugShowCheckedModeBanner: false,
    );
  }
}
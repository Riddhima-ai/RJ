import 'package:flutter/material.dart';
class AddTask extends StatelessWidget{
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Add task',style: TextStyle(
          color: Colors.white
        ),)
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment:.center,

        )
      )
   );
  }
}
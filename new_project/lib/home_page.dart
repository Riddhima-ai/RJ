import 'package:flutter/material.dart';

import 'package:new_project/facilities/names.dart';
import 'package:new_project/review.dart';
import 'dep.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        backgroundColor:  Colors.deepPurple[300],
        title: Text("Home Page", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white

        ),),
      ),
      
      body: Column(
        children: [
          const SizedBox(height: 10,),
          BuildCard(context, "Department",const Color.fromARGB(255, 138, 99, 205), DepartmentListPage()),
          BuildCard(context, "Facilities",const Color.fromARGB(255, 138, 99, 205), Facilites()),
          BuildCard(context, "Reviews", const Color.fromARGB(255, 138, 99, 205),ReviewPage() ),
        ],
      )
    );
  }
}


Widget BuildCard(
  BuildContext context,String title, Color color, Widget Page
){
  return Container(
          height: 155,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => Page));
              },
              child: Card(
                
                color: color,
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
              
                    children: [
                      
                      Text(title,style:
                      TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      
}
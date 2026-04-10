import 'package:flutter/material.dart';
import 'package:new_project/facilities/facilityInfo.dart';
class  Facilites extends StatelessWidget{
  const Facilites({super.key});

  @override
  Widget build(BuildContext context) {
        final List<Map<String, dynamic>> campusPlaces = [
      {
        "name": "Academic Blocks",
        "type": "academic",
        "facilities": ["Classrooms", "Labs", "WiFi"]
      },
      {
        "name": "Central Library",
        "type": "library",
        "facilities": ["Study Area", "Books", "WiFi"]
      },
      {
        "name": "Student Plaza (KC)",
        "type": "food",
        "facilities": ["Cafes", "Shops"]
      },
      {
        "name": "Hostel Blocks",
        "type": "hostel",
        "facilities": ["Mess", "WiFi"]
      },
      {
        "name": "Football Ground",
        "type": "sports",
        "facilities": ["Field", "Seating"]
      }
    ];
   return Scaffold(
    backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text('Facilites',style: TextStyle(
          color: Colors.white
        ),)
      ),
      
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: campusPlaces.length,
                itemBuilder: (context,index){
                   final place = campusPlaces[index];

            return GestureDetector(
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.location_on, color: Colors.black),
                  title: Text(
                    place["name"],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Facilityinfo(
        name: place["name"],
        type: place["type"],
        facilities: List<String>.from(place["facilities"]),
      ),
    ),
  );
},
            );
                }),
            )
          ],

        )
      )
   );
  }
}
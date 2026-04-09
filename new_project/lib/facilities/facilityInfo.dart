import 'package:flutter/material.dart';

class Facilityinfo extends StatelessWidget {
  final String name;
  final String type;
  final List<String> facilities;

  const Facilityinfo({
    super.key,
    required this.name,
    required this.type,
    required this.facilities,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 📍 Name
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // 🏷 Type
            Text(
              "Type: $type",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            // 🧾 Facilities
            const Text(
              "Facilities:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            ...facilities.map((f) => Text("• $f")).toList(),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

/// MODEL CLASS
class Department {
  final String name;
  final String hod;
  final String description;
  final String contact;

  Department({
    required this.name,
    required this.hod,
    required this.description,
    required this.contact,
  });
}

/// PAGE 1: DEPARTMENT LIST
class DepartmentListPage extends StatelessWidget {
  DepartmentListPage({super.key});

  final List<Department> departments = [
    Department(
      name: "School of Electronics",
      hod: "Dr. Rajesh Kumar",
      description:
          "Focuses on circuits, communication systems, VLSI, and embedded systems.",
      contact: "rajesh@college.edu | +91 9876543210",
    ),
    Department(
      name: "School of Computer Science",
      hod: "Dr. Ananya Sharma",
      description:
          "Covers programming, AI, data science, and software development.",
      contact: "ananya@college.edu | +91 9123456780",
    ),
    Department(
      name: "School of Electrical Engineering",
      hod: "Dr. Vivek Mehta",
      description:
          "Deals with power systems, machines, and electrical technologies.",
      contact: "vivek@college.edu | +91 9988776655",
    ),
    Department(
      name: "School of Mechanical",
      hod: "Dr. Arjun Patel",
      description: "Focuses on machines, thermodynamics, and manufacturing.",
      contact: "arjun@college.edu | +91 9871234567",
    ),
    Department(
      name: "School of Chemical Engineering",
      hod: "Dr. Neha Verma",
      description:
          "Covers chemical processes, reactions, and industrial applications.",
      contact: "neha@college.edu | +91 9012345678",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50], // light lavender background
      appBar: AppBar(
        title: const Text("Departments"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[300], // lavender AppBar
      ),
      body: ListView.builder(
        itemCount: departments.length,
        itemBuilder: (context, index) {
          final dept = departments[index];

          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            color: Colors.deepPurple[100], // lavender cards
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: const Icon(
                Icons.school,
                size: 30,
                color: Colors.deepPurple,
              ),
              title: Text(
                dept.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              subtitle: Text(
                "HOD: ${dept.hod}",
                style: const TextStyle(color: Colors.black87),
              ),
              trailing: const Icon(
                Icons.arrow_forward,
                color: Colors.deepPurple,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DepartmentDetailPage(department: dept),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

/// PAGE 2: DETAIL PAGE
class DepartmentDetailPage extends StatelessWidget {
  final Department department;

  const DepartmentDetailPage({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: Text(department.name),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 5,
          color: Colors.deepPurple[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// HOD
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 28,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "HOD: ${department.hod}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// DESCRIPTION
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.description,
                      size: 28,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        department.description,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// CONTACT
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.phone, size: 28, color: Colors.deepPurple),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Contact: ${department.contact}",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

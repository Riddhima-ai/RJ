import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  List<Map<String, String>> reviews = [];

  void _showAddReviewDialog() {
    TextEditingController nameController = TextEditingController();
    TextEditingController subjectController = TextEditingController();
    TextEditingController reviewController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Add Review"),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: "Professor Name"),
                ),
                TextField(
                  controller: subjectController,
                  decoration: const InputDecoration(labelText: "Subject"),
                ),
                TextField(
                  controller: reviewController,
                  decoration: const InputDecoration(labelText: "Review"),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  reviews.add({
                    "name": nameController.text,
                    "subject": subjectController.text,
                    "review": reviewController.text,
                  });
                });
                Navigator.pop(context);
              },
              child: const Text("Add"),
            ),
          ],
        );
      },
    );
  }

  Widget _buildReviewCard(Map<String, String> review) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 4,
      child: ListTile(
        title: Text(review["name"] ?? ""),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Subject: ${review["subject"]}"),
            const SizedBox(height: 5),
            Text(review["review"] ?? ""),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Professor Reviews"),
      ),
      body: reviews.isEmpty
          ? const Center(child: Text("No reviews yet"))
          : ListView(
              children: reviews.map((r) => _buildReviewCard(r)).toList(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddReviewDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
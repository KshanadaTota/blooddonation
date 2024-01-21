import 'package:flutter/material.dart';

class DonorSubmittedList extends StatelessWidget {
  final List<Map<String, String>> donors;

  DonorSubmittedList({required this.donors, required List<Map<String, String>> recipients});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor Submitted List'),
      ),
      body: ListView.builder(
        itemCount: donors.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(donors[index]['fullName'] ?? ''),
            subtitle: Text('Blood Type: ${donors[index]['bloodType'] ?? ''}'),
          );
        },
      ),
    );
  }
}
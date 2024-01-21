import 'package:flutter/material.dart';

class RecipientSubmittedList extends StatelessWidget {
  final List<Map<String, String>> recipients;

  RecipientSubmittedList({required this.recipients});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipient Submitted List'),
      ),
      body: ListView.builder(
        itemCount: recipients.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipients[index]['fullName'] ?? ''),
            subtitle: Text('Blood Type: ${recipients[index]['bloodType'] ?? ''}'),
          );
        },
      ),
    );
  }
}
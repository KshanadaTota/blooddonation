
import 'package:blood_donation/recipient_form.dart';
//import 'package:blood_donation/recipient_submitted_list.dart';
import 'package:blood_donation/donor_submitted_list.dart';
import 'package:flutter/material.dart';

class RecipientScreen extends StatefulWidget {
  @override
  _RecipientScreenState createState() => _RecipientScreenState();
}

class _RecipientScreenState extends State<RecipientScreen> {
  List<Map<String, String>> recipients = [];
  
  List<Map<String, String>>? get donors => null;
  
  get navigateToDonorSubmittedList => null;

  void addRecipient(String fullName, String bloodType, String contactNumber) {
    setState(() {
      recipients.add({
        'fullName': fullName,
        'bloodType': bloodType,
        'contactNumber': contactNumber,
      });
    });
  }
  void navigateToRecipientSubmittedList() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DonorSubmittedList(recipients: recipients, donors: [],),
      ),
    );
  }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipient Screen'),
      ),
      body: Column(
        children: [
          RecipientForm(onSubmit: addRecipient),
          
          
        ],
      ),
    );
  }
}
    
  


import 'package:blood_donation/donor_form.dart';
import 'package:blood_donation/donor_submitted_list.dart';
import 'package:flutter/material.dart';

class DonorScreen extends StatefulWidget {
  @override
  _DonorScreenState createState() => _DonorScreenState();
}

class _DonorScreenState extends State<DonorScreen> {
  List<Map<String, String>> donors = [];

  void addDonor(String fullName, String bloodType, String contactNumber) {
    setState(() {
      donors.add({
        'fullName': fullName,
        'bloodType': bloodType,
        'contactNumber': contactNumber,
      });
    });
  }
  List<Map<String, String>> getDonors() {
    return donors;
  }

  void navigateToDonorSubmittedList() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DonorSubmittedList(donors: getDonors(), recipients: [],),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor Screen'),
      ),
      body: Column(
        children: [
          
          DonorForm(onSubmit: addDonor),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: navigateToDonorSubmittedList,
            child: Text('View Donor Submitted List'),
          ),
        ],
      ),
    );
  }
}
      
  


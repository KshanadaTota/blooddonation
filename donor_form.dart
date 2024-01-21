import 'package:flutter/material.dart';

class DonorForm extends StatelessWidget {
  final Function(String, String, String) onSubmit;

  DonorForm({required this.onSubmit});
  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController bloodTypeController = TextEditingController();
    
    TextEditingController contactNumberController = TextEditingController();
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: fullNameController,
            decoration: InputDecoration(labelText: 'Full Name'),
          ),
          SizedBox(height: 16),
          TextField(
            controller: bloodTypeController,
            decoration: InputDecoration(labelText: 'Blood Type'),
          ),
          
          SizedBox(height: 16),
          TextField(
            controller: contactNumberController,
            decoration: InputDecoration(labelText: 'Contact Number'),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 16),

          ElevatedButton(
            onPressed: () {
              String fullName = fullNameController.text;
              String bloodType = bloodTypeController.text;
              
              String contactNumber = contactNumberController.text;

              if (fullName.isNotEmpty && bloodType.isNotEmpty &&  contactNumber.isNotEmpty) {
                onSubmit(fullName, bloodType, contactNumber);
              }
              
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
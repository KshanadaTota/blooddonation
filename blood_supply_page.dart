import 'package:flutter/material.dart';

class Donor {
  final String name;
  final String donationDetails;

  Donor(this.name, this.donationDetails);
}

class DonorListPage extends StatelessWidget {
  final List<Donor> donorList = [
    Donor("John Doe", "Donated \ 1000 on January 21, 2024"),
    Donor("Jane Smith", "Donated \ 5000 on January 20, 2024"),
    Donor("KumKum", "Donated \ 2000 on January 21, 2024"),
    Donor("Manisha", "Donated \ free on January 21, 2024"),
    Donor("Kshanada", "Donated \ free on January 21, 2024"),
    // Add more donor entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: donorList.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              child: ListTile(
                title: Text(
                  donorList[index].name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  donorList[index].donationDetails,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

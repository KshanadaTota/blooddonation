import 'package:flutter/material.dart';

class BloodContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Content'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade400, Colors.blue.shade700],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Understanding Blood Components',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              BloodComponentItem(
                'Red Blood Cells',
                'Carry oxygen from the lungs to the rest of the body.',
              ),
              BloodComponentItem(
                'White Blood Cells',
                'Help the body fight infections and foreign substances.',
              ),
              BloodComponentItem(
                'Platelets',
                'Assist in blood clotting to prevent excessive bleeding.',
              ),
              BloodComponentItem(
                'Plasma',
                'Carries nutrients, hormones, and proteins throughout the body.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BloodComponentItem extends StatelessWidget {
  final String title;
  final String description;

  BloodComponentItem(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
            ),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
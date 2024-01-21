import 'package:flutter/material.dart';

class BloodGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Group Information'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green.shade400, Colors.green.shade700],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Understanding Blood Groups',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              BloodGroupItem(
                'A Positive (A+)',
                'Personality: Ambitious and organized. Leadership qualities. Cooperative and adaptable.',
              ),
              BloodGroupItem(
                'B Positive (B+)',
                'Personality: Creative and flexible. Independent and goal-oriented. Strong-willed.',
              ),
              BloodGroupItem(
                'AB Positive (AB+)',
                'Personality: Charismatic and sociable. Versatile and diplomatic. Empathetic and understanding.',
              ),
              BloodGroupItem(
                'O Positive (O+)',
                'Personality: Outgoing and practical. Energetic and optimistic. Strong sense of duty.',
              ),
              BloodGroupItem(
                'A Negative (A-)',
                'Personality: Reserved and analytical. Responsible and patient. Loyal and cautious.',
              ),
              BloodGroupItem(
                'B Negative (B-)',
                'Personality: Imaginative and practical. Ambitious and strong-willed. Independent and self-reliant.',
              ),
              BloodGroupItem(
                'AB Negative (AB-)',
                'Personality: Artistic and empathetic. Open-minded and adaptable. Sensitive and understanding.',
              ),
              BloodGroupItem(
                'O Negative (O-)',
                'Personality: Confident and optimistic. Social and outgoing. Good at handling stress.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BloodGroupItem extends StatelessWidget {
  final String title;
  final String description;

  BloodGroupItem(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade700,
            ),
          ),
          SizedBox(height: 3),
          Text(
            description,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
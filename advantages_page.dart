

import 'package:flutter/material.dart';

class AdvantagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Donation Advantages'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red.shade600, Colors.red.shade900],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Advantages of Blood Donation',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              AdvantagesItem(
                'Saves Lives',
                'Blood donation helps save the lives of those in need, especially in emergencies, surgeries, and medical treatments.',
              ),
              AdvantagesItem(
                'Health Benefits',
                'Regular blood donation reduces the risk of various health conditions, including cardiovascular diseases.',
              ),
              AdvantagesItem(
                'Community Impact',
                'Donating blood contributes to the well-being of the community and creates a positive impact on society.',
              ),
              AdvantagesItem(
                'Quick Recovery',
                'The human body replenishes blood quickly, and donors often experience a sense of well-being and vitality after donation.',
              ),
              AdvantagesItem(
                'Free Health Check',
                'Blood donors often receive a free health check, including blood pressure, pulse, and hemoglobin levels.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdvantagesItem extends StatelessWidget {
  final String title;
  final String description;

  AdvantagesItem(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red.shade900,
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
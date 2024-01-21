
import 'package:blood_donation/advantages_page.dart';
import 'package:blood_donation/blood_content_page.dart';
import 'package:blood_donation/blood_group_page.dart';
import 'package:blood_donation/blood_supply_page.dart';
import 'package:blood_donation/donor_form.dart';
import 'package:blood_donation/donor_screen.dart';
//import 'package:blood_donation/recipient_form.dart';

import 'package:blood_donation/recipient_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood donation App',
      theme: ThemeData(
        primarySwatch:Colors.yellow,
        
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      initialRoute: '/',
      routes:  {
       '/':(context) => MyHomePage(),
       '/donor':(context) => DonorScreen(),
       '/recipient':(context) => RecipientScreen(),
       //'/recipientform':(context) => RecipientForm(onSubmit: addRecipient()),
       '/donorform':(context) => DonorForm(onSubmit:addDonor() ),
       '/advantages':(context) => AdvantagesPage(),
       '/bloodContent':(context) => BloodContentPage(),
       '/bloodGroups':(context) => BloodGroupPage(),
       '/bloodSupply':(context) => DonorListPage(),

      },
      
    );
  }
  
  addDonor() {}
  
  addRecipient() {}
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Blood Donation App',
        textAlign: TextAlign.center,),)
      
      ),
      body: Container(
        //mainAxisAlignment:MainAxisAlignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/blood.png',
              height:120,
              width:120,
            ),
            SizedBox(
              height: 20
            ),
            Text(
              'Welcome to Blood Donation App',
              style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/donor');
              },
              child: Text('I Want to Donate Blood'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/recipient');
              },
              child: Text('I Need Blood'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/advantages');
              },
              child: Text('Advantages of Blood Donation'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bloodContent');
              },
              child: Text('Blood Content Information'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bloodGroups');
              },
              child: Text('Blood Group Information'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bloodSupply');
              },
              child: Text('Donor List Page'),
            ),
          ],
        ),
      ),
    );
  }
}


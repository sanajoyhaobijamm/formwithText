import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Text(
                'Application Form',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('personal Detail'),
                    Text('Document'),
                    Text('Preview Form'),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.person),
                    Text('Name'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.email),
                    Text('email'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.lock),
                    Text('password'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.phone),
                    Text('PhoneNo'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_sharp),
                    Text('Address'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.cast_for_education),
                    Text('Qualification'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_month),
                    Text('Date of Birth'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

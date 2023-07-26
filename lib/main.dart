import 'package:flutter/material.dart';
import 'package:insurance_app/screens/admin/homepage.dart';
import 'package:insurance_app/screens/customer/report.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
        home: const CustomerReport());
  }
}

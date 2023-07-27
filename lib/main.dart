import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:insurance_app/screens/customer/detail.dart';
import 'package:insurance_app/screens/customer/report.dart';
import 'firebase_options.dart';
import 'package:insurance_app/screens/admin/homepage.dart';
import 'package:insurance_app/screens/consultant/homepage.dart';
import 'package:insurance_app/screens/consultant/reward.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        home: const Reward());
  }
}

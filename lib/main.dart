import 'package:awesome_doctor_ui/screen/home_screen.dart';
import 'package:awesome_doctor_ui/size_config.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: Builder(
        builder: (context) {
          SizeConfig.initSize(context);
          return const HomeScreen();
        },
      ),
    );
  }
}

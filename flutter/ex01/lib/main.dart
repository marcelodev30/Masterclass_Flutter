import 'package:ex01/core/app_colors.dart';
import 'package:flutter/material.dart';

//import 'page/exercicio1.dart';
import 'page/mockups01.dart';
//import 'page/home.dart';
//import 'page/mockups02.dart';

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
      title: 'Masterclass Flutterando',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.midnightBlue),
        useMaterial3: true,
      ),
      home: const Mockups01(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app1/constants/app_theme.dart';
import 'package:flutter_app1/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Room Booking App',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
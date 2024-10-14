import 'package:expense_app_with_ocr/views/home/screens/main_screen.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            surface: Colors.grey.shade100,
            onSurface: Colors.black,
            primary: const Color(0xFF00B4D8),
            secondary: const Color(0xFF0077B6),
            tertiary: const Color(0xFF03045E),
            outline: Colors.grey),
      ),
      home: const MainScreen(),
    );
  }
}

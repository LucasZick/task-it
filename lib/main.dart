import 'package:flutter/material.dart';

import 'pages/home_page/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task It',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
      ),
      home: const HomePage(title: 'Task It'),
    );
  }
}

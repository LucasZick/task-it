import 'package:flutter/material.dart';
import 'package:task_it/pages/home_page/app_bar.dart';

import 'body.dart';
import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: const HomeAppBar(),
      body: HomeBody(),
    );
  }
}

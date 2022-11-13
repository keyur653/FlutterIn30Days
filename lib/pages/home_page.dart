import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Keyur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Center(
        child: Container(
          child: Text("WELCOME TO $days DAYS OF FLUTTER BY $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

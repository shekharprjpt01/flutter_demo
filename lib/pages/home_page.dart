import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int age = 30;
    return Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Container(
        child: Center(
            child: Text("My Name is Shekhar Prajapati And My Age is $age")),
      ),
      drawer: Drawer(),
    );
  }
}

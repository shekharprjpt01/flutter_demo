import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: ListView(
      children: [
        DrawerHeader(
            child: UserAccountsDrawerHeader(
          accountEmail: Text("Shekhar@gmail.com"),
          accountName: Text("Shekhar Prajapati"),
        )),
      ],
    ));
  }
}

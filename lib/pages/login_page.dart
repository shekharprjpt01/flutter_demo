import 'package:flutter/material.dart';
import 'package:flutter_demo_catelog/pages/home_page.dart';
import 'package:flutter_demo_catelog/utils/routs.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'username', labelText: 'Enter User Name'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'password', labelText: 'Enter Password'),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        child: Text('Login'),
                        style: TextButton.styleFrom(minimumSize: Size(145, 40)),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}

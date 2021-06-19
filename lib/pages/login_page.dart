import 'package:flutter/material.dart';
import 'package:flutter_demo_catelog/pages/home_page.dart';
import 'package:flutter_demo_catelog/utils/routs.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushNamed(context, MyRoutes.homeRoute);

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  "Welcome $name",
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
                              hintText: 'username',
                              labelText: 'Enter User Name'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "username cannot be empty";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'password',
                              labelText: 'Enter Password'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "password cannot be empty";
                            }
                            if (value.length < 6) {
                              return "password should be atlist 6";
                            }
                            return null;
                          },
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () => moveToHome(context),
                          child: Material(
                            borderRadius:
                                BorderRadius.circular(changebutton ? 50 : 8),
                            color: Colors.deepPurple,
                            child: AnimatedContainer(
                              width: changebutton ? 50 : 150,
                              height: 50,
                              alignment: Alignment.center,
                              child: changebutton
                                  ? Icon(Icons.done, color: Colors.white)
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                              // decoration: BoxDecoration(
                              //   color: Colors.deepPurple,
                              //
                              // ),
                              duration: Duration(seconds: 2),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

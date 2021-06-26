import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_am_unicorn/util/Myroute.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool change = false;
  final _formkey = GlobalKey<FormState>();

  MovetoHome(BuildContext context) async {

    if(_formkey.currentState.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroute.Homeroute);
      setState(() {
        change = false;
      });
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome $name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Username can not be empty";
                          } else if (value.length < 6) {
                            return "username lenght should be 6";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter the Password",
                              labelText: "Password"),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password can not be empty";
                            } else if (value.length < 6) {
                              return "Password lenght should be 6";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(change ? 20 : 5),
                        child: InkWell(
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            // decoration: BoxDecoration(
                            //   color: Colors.deepPurple,
                            //   // shape: change?BoxShape.circle:BoxShape.rectangle,
                            //
                            // ),
                            height: 40,
                            width: change ? 50 : 130,
                            alignment: Alignment.center,
                            child: change
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                          onTap: () => MovetoHome(context),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:maheshwari_app/home_page.dart';
import 'package:maheshwari_app/register_page.dart';

import 'helper.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final form_key = GlobalKey<FormState>();
  bool is_loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(48, 71, 94, 1),
      ),
      body: is_loading
          ? Center(
              child: CircularProgressIndicator(
              color: Colors.blue,
            ))
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Form(
                  key: form_key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Hey Friends",
                        style: TextStyle(
                            color: Color.fromRGBO(18, 18, 18, 1),
                            fontSize: 55,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Login to find out your Perfect Match",
                          style: TextStyle(
                              color: Color.fromRGBO(18, 18, 18, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        "images/logo.png",
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: text_input_decoration.copyWith(
                            labelText: "Email Address",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color.fromRGBO(48, 71, 94, 1),
                            )),
                        onChanged: (val) {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        obscureText: true,
                        decoration: text_input_decoration.copyWith(
                            labelText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color.fromRGBO(48, 71, 94, 1),
                            )),
                        onChanged: (val) {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(48, 71, 94, 1),
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          onPressed: () {
                            next_screen_replace(context, home_page());
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(TextSpan(
                          style: TextStyle(
                              color: Color.fromRGBO(48, 71, 94, 1),
                              fontWeight: FontWeight.w600),
                          text: "Still Don't have an account ? ",
                          children: <TextSpan>[
                            TextSpan(
                                text: "Register Now",
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    next_screen_replace(
                                        context, register_page());
                                  })
                          ]))
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

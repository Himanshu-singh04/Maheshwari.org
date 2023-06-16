import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:maheshwari_app/home_page.dart';

import 'helper.dart';

import 'login_page.dart';

class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  final form_key = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String full_name = "";
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
                      Text("Create new account to explore more!!!",
                          style: TextStyle(
                              color: Color.fromRGBO(18, 18, 18, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        "images/logo.png",
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: 20,
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
                          onChanged: (val) {}),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          cursorColor: Colors.black,
                          style: TextStyle(color: Colors.black),
                          decoration: text_input_decoration.copyWith(
                              labelText: "Enter full name",
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color.fromRGBO(48, 71, 94, 1),
                              )),
                          onChanged: (val) {}),
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
                            "Register Now",
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
                              color: Color.fromRGBO(18, 18, 18, 1),
                              fontWeight: FontWeight.w600),
                          text: "You have an account!! Come ",
                          children: <TextSpan>[
                            TextSpan(
                                text: "Sign In",
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    next_screen_replace(context, login_page());
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

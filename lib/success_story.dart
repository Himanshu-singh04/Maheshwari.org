import 'package:flutter/material.dart';
import 'package:maheshwari_app/home_page.dart';

import 'helper.dart';

class InputPage extends StatelessWidget {
  final TextEditingController input1Controller = TextEditingController();
  final TextEditingController input2Controller = TextEditingController();
  final TextEditingController input3Controller = TextEditingController();
  final TextEditingController input4Controller = TextEditingController();
  final TextEditingController input5Controller = TextEditingController();
  final TextEditingController input6Controller = TextEditingController();
  final TextEditingController input7Controller = TextEditingController();
  final TextEditingController input8Controller = TextEditingController();
  final TextEditingController input9Controller = TextEditingController();
  final TextEditingController input10Controller = TextEditingController();

  void submitInputs() {
    // Perform action with the submitted inputs
    // Access the input values using the respective TextEditingController objects
    print(input1Controller.text);
    print(input2Controller.text);
    print(input3Controller.text);
    print(input4Controller.text);
    print(input5Controller.text);
    print(input6Controller.text);
    print(input7Controller.text);
    print(input8Controller.text);
    print(input9Controller.text);
    print(input10Controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(48, 71, 94, 1),
        title: Text('Success Story'),
      ),
      body: Container(
        color: Color.fromRGBO(245, 245, 245, 1),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Your Name",
                      prefixIcon: Icon(
                        Icons.person_3_sharp,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Patner's Name",
                      prefixIcon: Icon(
                        Icons.person_2_sharp,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Your Profile Id",
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Patner's Profile Id",
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Your Email Id",
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Patner's Email Id",
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Your Facebook Id",
                      prefixIcon: Icon(
                        Icons.facebook,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Patner's Facebook Id",
                      prefixIcon: Icon(
                        Icons.facebook,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Your Wedding Date",
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Your Engagement Date",
                      prefixIcon: Icon(
                        Icons.calendar_month_outlined,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: text_input_decoration.copyWith(
                      labelText: "Mobile Number",
                      prefixIcon: Icon(
                        Icons.mobile_screen_share,
                        color: Color.fromRGBO(48, 71, 94, 1),
                      )),
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: text_input_decoration.copyWith(
                    labelText: "Share how you met each other on our site",
                  ),
                  onChanged: (val) {},
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(48, 71, 94, 1)),
                  onPressed: () {
                    next_screen_replace(context, home_page());
                  },
                  child: Text('Submit Success Story'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

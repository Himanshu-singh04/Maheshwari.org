import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:maheshwari_app/login_page.dart';
import 'package:maheshwari_app/next_page.dart';
import 'package:maheshwari_app/register_page.dart';
import 'package:maheshwari_app/success_story.dart';

import 'helper.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

bool iconbool = false;
String val1 = 'Popular';
String val2 = 'Most_Viewed';
String val3 = 'A to Z';
IconData icon_light = Icons.wb_sunny;
IconData icon_dark = Icons.nights_stay;
List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Popular"), value: "Popular"),
    DropdownMenuItem(child: Text("Latest"), value: "Latest"),
  ];
  return menuItems;
}

String drop_value = "Popular";
ThemeData lighttheme = ThemeData.light();
ThemeData darktheme = ThemeData.dark();
int current_index = 0;
// final screens = [home_page(), course_page()];

class _home_pageState extends State<home_page> {
  PageController pageController = PageController();
  // void ontapped(int index) {
  //   setState(() {
  //     current_index = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darktheme,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          shadowColor: Color.fromRGBO(48, 71, 94, 1),
          backgroundColor: Color.fromRGBO(48, 71, 94, 1),
          leading: Image.asset(
            'images/logo.png',
            fit: BoxFit.fitWidth,
          ),
          leadingWidth: 250,
        ),
        endDrawer: Container(
          color: Colors.black,
          child: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Column(children: [
                    Image.asset("images/logo.png"),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Maheshwari.org presents to you..",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text('Success Stories'),
                  onTap: () {
                    next_screen_replace(context, home_page());
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.book,
                  ),
                  title: const Text('Share Your Success Story'),
                  onTap: () {
                    next_screen(context, InputPage());
                  },
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.search,
                  ),
                  title: const Text('Search'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.person_add),
                  title: const Text('Follow Us'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.person,
                  ),
                  title: const Text('Privacy Policy'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.briefcase,
                  ),
                  title: const Text('Creators Access'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.feedback,
                  ),
                  title: const Text('Send Feedback'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.arrow_back),
                  title: Text("logout"),

                  onTap: () async {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("logout"),
                            content: Text("are you sure you want to logout ??"),
                            actions: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                  )),
                              IconButton(
                                  onPressed: () {
                                    next_screen_replace(context, login_page());
                                  },
                                  icon: Icon(
                                    Icons.done,
                                    color: Colors.green,
                                  ))
                            ],
                          );
                        });
                  },
                  // ListTile(
                  //   leading: Icon(
                  //     Icons.arrow_back,
                  //   ),
                  //   title: const Text('LogOut'),
                  //   onTap: () {
                  //     authservice.sign_out();
                  //     next_screen(context, login_page());
                  //   },
                  // ),
                )
              ],
            ),
          ),
        ),
        body: Container(
          color: Color.fromRGBO(245, 245, 245, 1),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 70,
                  color: Color.fromRGBO(48, 71, 94, 1),
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(240, 84, 84, 1)),
                          onPressed: () {
                            next_screen_replace(
                              context,
                              register_page(),
                            );
                          },
                          child: Text(
                            "Register Free",
                            style: TextStyle(
                                color: Color.fromRGBO(18, 18, 18, 1),
                                fontWeight: FontWeight.w600),
                          )),
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(240, 84, 84, 1)),
                          onPressed: () {
                            next_screen_replace(context, login_page());
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Color.fromRGBO(18, 18, 18, 1),
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  color: Color.fromRGBO(48, 71, 94, 1),
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(240, 84, 84, 1)),
                          onPressed: () {},
                          child: Text(
                            "Back",
                            style: TextStyle(
                                color: Color.fromRGBO(18, 18, 18, 1),
                                fontWeight: FontWeight.w600),
                          )),
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(240, 84, 84, 1)),
                          onPressed: () {
                            next_screen_replace(context, home_page_1());
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                                color: Color.fromRGBO(18, 18, 18, 1),
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  height: 800,
                  child: ListWheelScrollViewX(
                      physics: FixedExtentScrollPhysics(),
                      itemExtent: 350,
                      scrollDirection: Axis.horizontal,
                      children: [
                        ExpandedCard_1(),
                        ExpandedCard_2(),
                        ExpandedCard_3(),
                        ExpandedCard_4(),
                        ExpandedCard_5(),
                        ExpandedCard_6(),
                        ExpandedCard_7(),
                        ExpandedCard_8(),
                        ExpandedCard_9(),
                        ExpandedCard_10()
                      ]),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Row(children: [
                    Column(
                      children: [
                        ClickableText(text: 'Member Options', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Engineer Profiles', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Doctor Profiles', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Kundali Milan', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Success Stories', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(
                            text: 'Share Success Story', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(
                            text: 'Report Service Issue', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Report Misuse', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Share Feedback', onTap: () {}),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Column(
                      children: [
                        ClickableText(text: 'Service Profiles', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Business Profiles', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(
                            text: 'Remarriage Profiles', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'NRI Profiles', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Contact Us', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'About Us', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'FAQs', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Terms Of Use', onTap: () {}),
                        SizedBox(
                          height: 5,
                        ),
                        ClickableText(text: 'Privacy Policy', onTap: () {}),
                      ],
                    )
                  ]),
                  height: 200,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Disclaimer",
                        style: TextStyle(
                            color: Color.fromRGBO(18, 18, 18, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Maheshwari.org is strictly for matrimonial purpose only and is not a dating website. maheshwari.org should not be used for posting any obscene material. Any such use will result in termination of membership from the website.",
                          style: TextStyle(
                              color: Color.fromRGBO(18, 18, 18, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
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

  void drop_down(String? selected_value) {
    if (selected_value is String) {
      setState(() {
        drop_value = selected_value;
        next_screen_replace(context, home_page());
      });
    }
  }
}

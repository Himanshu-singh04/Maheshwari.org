import 'package:flutter/material.dart';

const text_input_decoration = InputDecoration(
    labelStyle: TextStyle(color: Colors.black),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(48, 71, 94, 1), width: 2)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(48, 71, 94, 1), width: 2)),
    errorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromRGBO(48, 71, 94, 1), width: 2)));

void next_screen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void next_screen_replace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

void snack_bar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: TextStyle(fontSize: 15),
    ),
    backgroundColor: color,
    action: SnackBarAction(label: "ok", onPressed: () {}),
  ));
}

class ExpandedCard_1 extends StatefulWidget {
  @override
  _ExpandedCard_1State createState() => _ExpandedCard_1State();
}

class _ExpandedCard_1State extends State<ExpandedCard_1> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 700 : 300,
        height: isExpanded ? 700 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-09-19-11-56-06_Chhavi%20Jajoo1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Chhavi Jajoo & Yash Chandak',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Chhavi Jajoo & Yash Chandak have to say - Checked each other's profile and our parents proceeded further

Date Of Marriage: November 04, 2022

Maheshwari.org team congratulates Chhavi Jajoo & Yash Chandak and wish them both a happy future.''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_2 extends StatefulWidget {
  @override
  _ExpandedCard_2State createState() => _ExpandedCard_2State();
}

class _ExpandedCard_2State extends State<ExpandedCard_2> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 700 : 300,
        height: isExpanded ? 700 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-08-12-23-20-39_Bhagyashree%20Maniar1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Bhagyashree Maniar & Shubham Laddha',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Bhagyashree Maniar & Shubham Laddha have to say - Good experience

Date Of Engagement: August 10, 2022

Maheshwari.org team congratulates Bhagyashree Maniar & Shubham Laddha and wish them both a happy future.''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_3 extends StatefulWidget {
  @override
  _ExpandedCard_3State createState() => _ExpandedCard_3State();
}

class _ExpandedCard_3State extends State<ExpandedCard_3> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 530 : 300,
        height: isExpanded ? 530 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-07-05-18-11-51_Raghav%20Jhanwar1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Raghav Jhanwar & Lucky Gagrani',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Raghav Jhanwar & Lucky Gagrani have to say - बेटे चि. राघव का संबंध सौ.का. लक्की सुपुत्री-शांतिलाल जी गगरानी मंदसौर के साथ सुनिश्चित हुआ है आप सब के सहयोग का बहुत-बहुत आभार एवं धन्यवाद

Date Of Marriage: July 11, 2022

Maheshwari.org team congratulates Raghav Jhanwar & Lucky Gagrani and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_4 extends StatefulWidget {
  @override
  _ExpandedCard_4State createState() => _ExpandedCard_4State();
}

class _ExpandedCard_4State extends State<ExpandedCard_4> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/21-09-27-17-23-38_Krishna%20Mundhada1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Krishna Mundhada & Harsha Asawa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Krishna Mundhada & Harsha Asawa have to say - It was great using this website...thanks for maheshwari.org team

Date Of Marriage: December 11, 2021

Maheshwari.org team congratulates Krishna Mundhada & Harsha Asawa and wish them both a happy future.

''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_5 extends StatefulWidget {
  @override
  _ExpandedCard_5State createState() => _ExpandedCard_5State();
}

class _ExpandedCard_5State extends State<ExpandedCard_5> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/23-06-11-20-49-13_Mohit%20Somani1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Mohit Somani & Bhagyashri Bhutada',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Mohit Somani & Bhagyashri Bhutada have to say - Thank you.

Date Of Engagement: June 10, 2023

Maheshwari.org team congratulates Mohit Somani & Bhagyashri Bhutada and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_6 extends StatefulWidget {
  @override
  _ExpandedCard_6State createState() => _ExpandedCard_6State();
}

class _ExpandedCard_6State extends State<ExpandedCard_6> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/23-03-29-16-23-47_Nikita%20Bhansali1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Nikita Bhansali & Videet Boob',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Nikita Bhansali & Videet Boob have to say - We meet in Jun 2022 and found each other compatible . Our thoughts and vibes match and we decided to go forward which converted us as couple I. E Husband n wife. Thanks to maheshwari.org.

Date Of Marriage: January 27, 2023

Maheshwari.org team congratulates Nikita Bhansali & Videet Boob and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_7 extends StatefulWidget {
  @override
  _ExpandedCard_7State createState() => _ExpandedCard_7State();
}

class _ExpandedCard_7State extends State<ExpandedCard_7> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/23-03-23-13-48-47_Deepika%20Somani1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Deepika Somani & Pratik Lohiya',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Deepika Somani & Pratik Lohiya have to say - Thank u sooo much maheshwari.org

Date Of Marriage: February 15, 2023

Maheshwari.org team congratulates Deepika Somani & Pratik Lohiya and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_8 extends StatefulWidget {
  @override
  _ExpandedCard_8State createState() => _ExpandedCard_8State();
}

class _ExpandedCard_8State extends State<ExpandedCard_8> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/23-03-03-08-39-56_Nikita%20Rathi1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Nikita Rathi & Sidhharth Daga',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Nikita Rathi & Sidhharth Daga have to say - Our daughter is married now. So remove profile from site

Date Of Marriage: February 16, 2023

Maheshwari.org team congratulates Nikita Rathi & Sidhharth Daga and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_9 extends StatefulWidget {
  @override
  _ExpandedCard_9State createState() => _ExpandedCard_9State();
}

class _ExpandedCard_9State extends State<ExpandedCard_9> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/23-03-02-08-57-51_Shubha%20Maniyar1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Shubha Maniyar & Aashay Palod',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Shubha Maniyar & Aashay Palod have to say - मेरी सुपुत्री शुभा का संबंध गंजबासौदा निवासी संजय जी पलोड के सुपुत्र आशयजी के साथ पक्का हुआ है नारायण का असीम धन्यवाद और ग्रुप का भी 🙏 Thankyou Maheshwari.org!

Date Of Engagement: February 25, 2023

Maheshwari.org team congratulates Shubha Maniyar & Aashay Palod and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_10 extends StatefulWidget {
  @override
  _ExpandedCard_10State createState() => _ExpandedCard_10State();
}

class _ExpandedCard_10State extends State<ExpandedCard_10> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/23-01-31-15-51-27_Amit%20Gattani1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Amit Gattani & Radhika Baheti',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Amit Gattani & Radhika Baheti have to say - Thank you so much Maheshwari.org platform. It is well managed and also has a good database. I am fortunate enough to find my partner (Radhika Baheti) here. We got engaged on 30-01-2023 and planning to get married soon.

Date Of Engagement: January 30, 2023

Maheshwari.org team congratulates Amit Gattani & Radhika Baheti and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_11 extends StatefulWidget {
  @override
  _ExpandedCard_11State createState() => _ExpandedCard_11State();
}

class _ExpandedCard_11State extends State<ExpandedCard_11> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/23-01-22-21-47-10_Ashish%20Baheti1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Ashish Baheti & Shreya Rathi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Ashish Baheti & Shreya Rathi have to say - Maheshwari.org experience was very good. We were able to find partner for our son.

Date Of Engagement: January 22, 2023

Maheshwari.org team congratulates Ashish Baheti & Shreya Rathi and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_12 extends StatefulWidget {
  @override
  _ExpandedCard_12State createState() => _ExpandedCard_12State();
}

class _ExpandedCard_12State extends State<ExpandedCard_12> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 600 : 300,
        height: isExpanded ? 600 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/23-01-16-18-39-32_Sanket%20Jakhete1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Sanket Jakhete & Indu Ladda',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Sanket Jakhete & Indu Ladda have to say - Very good platform for maheshwari community.... Thanks to maheshwari.org

Date Of Engagement: January 15, 2023

Maheshwari.org team congratulates Sanket Jakhete & Indu Ladda and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_13 extends StatefulWidget {
  @override
  _ExpandedCard_13State createState() => _ExpandedCard_13State();
}

class _ExpandedCard_13State extends State<ExpandedCard_13> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 530 : 300,
        height: isExpanded ? 530 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/23-01-14-12-32-21_Atul%20Damani1.jpeg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Atul Damani & Nikita Maroo',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Atul Damani & Nikita Maroo have to say - Compared to other matchmaking websites and applications, people from Maheshwari community are definitely more on this website, plus the membership is super affordable. I am so grateful that I found my life partner here. I highly recommend this website to anyone looking for a life partner. :)

Date Of Marriage: May 03, 2023.

Maheshwari.org team congratulates Atul Damani & Nikita Maroo and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_14 extends StatefulWidget {
  @override
  _ExpandedCard_14State createState() => _ExpandedCard_14State();
}

class _ExpandedCard_14State extends State<ExpandedCard_14> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-12-31-10-55-44_Krutika%20Somani1.jpeg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Krutika Somani & Tejas Kabra',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Krutika Somani & Tejas Kabra have to say - Thank you team for finding us a perfect mach

Date Of Engagement: December 12, 2022

Maheshwari.org team congratulates Krutika Somani & Tejas Kabra and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_15 extends StatefulWidget {
  @override
  _ExpandedCard_15State createState() => _ExpandedCard_15State();
}

class _ExpandedCard_15State extends State<ExpandedCard_15> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-12-30-21-49-15_Sonali%20Jetha1.jpeg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Sonali Jetha & Varun Damani',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Sonali Jetha & Varun Damani have to say - Varun and I met through maheshwari.org and started talking on the platform. We liked each other and decided to move ahead. Thank you team for finding us a perfect mach ❤️

Date Of Marriage: December 02, 2022

Maheshwari.org team congratulates Sonali Jetha & Varun Damani and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_16 extends StatefulWidget {
  @override
  _ExpandedCard_16State createState() => _ExpandedCard_16State();
}

class _ExpandedCard_16State extends State<ExpandedCard_16> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-12-05-09-06-05_Krutika%20Asawa1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Krutika Asawa & Aniket Baheti',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Krutika Asawa & Aniket Baheti have to say - Aniket's family is pretty simple, understanding and supportive. Our families have gotten along really well. I am really happy now and we are getting engaged on 10th December 2022. Thank you !! 😄

Date Of Engagement: December 10, 2022

Maheshwari.org team congratulates Krutika Asawa & Aniket Baheti and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_17 extends StatefulWidget {
  @override
  _ExpandedCard_17State createState() => _ExpandedCard_17State();
}

class _ExpandedCard_17State extends State<ExpandedCard_17> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-12-03-18-59-17_Dhruva%20Pasari1.jpeg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Dhruva Pasari & Mahima Chandak',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Dhruva Pasari & Mahima Chandak have to say - By connecting phone

Date Of Engagement: November 25, 2022

Maheshwari.org team congratulates Dhruva Pasari & Mahima Chandak and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_18 extends StatefulWidget {
  @override
  _ExpandedCard_18State createState() => _ExpandedCard_18State();
}

class _ExpandedCard_18State extends State<ExpandedCard_18> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-12-03-07-54-52_Anubha%20Kabra1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Anubha Kabra & Dwarka Bhutda',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Anubha Kabra & Dwarka Bhutda have to say - Met each other through maheshwari org liked each other profile & parents took it further.

Date Of Marriage: November 26, 2022

Maheshwari.org team congratulates Anubha Kabra & Dwarka Bhutda and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_19 extends StatefulWidget {
  @override
  _ExpandedCard_19State createState() => _ExpandedCard_19State();
}

class _ExpandedCard_19State extends State<ExpandedCard_19> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-11-18-15-36-34_Prajakta%20Tawri1.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Prajakta Tawri & Raunak Maheshwari',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Prajakta Tawri & Raunak Maheshwari have to say - अपने समाज की यह Mahesheshwari.org बहुत ही अच्छा प्लेटफार्म है संबंध के लिए इसमें पूरी तरह व्यवहारिकता के साथ संबंध की बातें होती है बहुत ही अच्छा अनुभव रहा बहुत-बहुत धन्यवाद और बहुत-बहुत बधाई।

Date Of Engagement: November 17, 2022

Maheshwari.org team congratulates Prajakta Tawri & Raunak Maheshwari and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ExpandedCard_20 extends StatefulWidget {
  @override
  _ExpandedCard_20State createState() => _ExpandedCard_20State();
}

class _ExpandedCard_20State extends State<ExpandedCard_20> {
  bool isExpanded = false;

  void toggleCard() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCard,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: isExpanded ? 550 : 300,
        height: isExpanded ? 550 : 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 84, 84, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.maheshwari.org/userphotos/successstories/22-11-09-16-10-53_Abhishek%20Toshniwal1.jpeg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              'Abhishek Toshniwal & Aditi Bhattad',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      '''What Abhishek Toshniwal & Aditi Bhattad have to say - Met via referral & maheshwari.org

Date Of Marriage: December 03, 2022

Maheshwari.org team congratulates Abhishek Toshniwal & Aditi Bhattad and wish them both a happy future.
''',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ClickableText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  ClickableText({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
      ),
    );
  }
}

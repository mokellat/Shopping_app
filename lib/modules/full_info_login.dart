import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:shop_app/modules/text_fields.dart';

class FullInfoLogin extends StatefulWidget {
  const FullInfoLogin({Key? key, this.phonenum}) : super(key: key);
  final phonenum;
  @override
  State<FullInfoLogin> createState() => _FullInfoLoginState();
}

class _FullInfoLoginState extends State<FullInfoLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.blue[900],
        ),
        // actions: [
        //   Icon(Icons.arrow_back, color: Colors.black,),
        // ],
        title: Text(
          "Complete your sign up",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mobile Number",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          widget.phonenum,
                          style: TextStyle(
                            // color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/images/check.png",
                      width: 23,
                      height: 23,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: TextFields(text: "Create Password*"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 15.0,
                        ),
                        child: Row(
                          children: [
                            SpecialCharcters("8 Characters"),
                            SpecialCharcters("1 Special"),
                            SpecialCharcters("1 UpperCase"),
                            SpecialCharcters("1 Numeric"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: TextFields(text: "Full Name(Optional)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: TextFields(text: "Email(Optional)"),
                      ),
                      GenderButton(),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 30.0),
                        child:
                            TextFields(text: "Enter your Username(optional)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 30),
                        child: Text(
                          "I have a refferal code",
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        color: Colors.pink,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget SpecialCharcters(String text) {
  return Padding(
    padding: const EdgeInsets.only(right: 9.0),
    child: Container(
      color: Colors.blueGrey[50],
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    ),
  );
}

class GenderButton extends StatefulWidget {
  const GenderButton({Key? key}) : super(key: key);

  @override
  State<GenderButton> createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  @override
  Widget build(BuildContext context) {
    bool male_c = true;
    bool female_c = true;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), color: Colors.white),
      // color: Colors.white,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    male_c = !male_c;
                    // female_c = female_c;
                    print(male_c);
                  });
                },
                child: Container(
                  height: 50,
                  color: male_c ? Colors.white : Colors.blue[900],
                  child: Center(
                    child: Text(
                      "Male",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            VerticalDivider(
              thickness: 2,
              width: 4,
              color: Colors.grey,
            ),
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {
                  setState(() {
                    male_c = !male_c;
                    // female_c = /
                    print(male_c);
                  });
                },
                child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Female",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget GenderButton() {
  
// }

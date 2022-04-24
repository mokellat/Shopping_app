import 'package:flutter/material.dart';
import 'package:shop_app/modules/full_info_login.dart';

class PopUpLogin extends StatefulWidget {
  const PopUpLogin({Key? key}) : super(key: key);

  @override
  State<PopUpLogin> createState() => _PopUpLoginState();
}

final myController = TextEditingController();

class _PopUpLoginState extends State<PopUpLogin> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/splash_icon-remove.png",
                  height: 100,
                  width: 100,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              // vertical: 10.0,
              horizontal: 40,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  TextSpan(
                      text: "  or  ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      )),
                  TextSpan(
                    text: "Signup",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 30.0, right: 30),
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      top: 16.0,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Text(
                        "+212 |",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  labelText: "Mobile Number*",
                  // label: Text("Mobile Number"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 44.0, top: 20),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "By continuing, I agree to the ",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  TextSpan(
                    text: "Terms of Use ",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: "& ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 30.0, right: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FullInfoLogin(phonenum: myController.text,)),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                color: Colors.pink,
                child: Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 44.0, top: 8),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Having trouble logging in? ",
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                  TextSpan(
                    text: "Get Help",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

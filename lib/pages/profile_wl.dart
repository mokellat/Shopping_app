import 'package:flutter/material.dart';
import 'package:shop_app/modules/footer_content.dart';
import 'package:shop_app/modules/popup_login.dart';
import 'package:shop_app/modules/profile_items.dart';

class ProfileWl extends StatefulWidget {
  const ProfileWl({Key? key}) : super(key: key);

  @override
  State<ProfileWl> createState() => _ProfileWlState();
}

class _ProfileWlState extends State<ProfileWl> {
  @override
  double height = 200;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: height,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.blueGrey,
                    height: height * 0.6,
                  ),
                ],
              ),
              Positioned(
                top: 50,
                left: 30,
                child: Container(
                  color: Colors.white,
                  // decoration: DecoratedBox(decoration: ),
                  height: 100,
                  width: 120,
                  child: Image.asset(
                    "assets/images/man.png",
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              Positioned(
                top: 90,
                left: 170,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return PopUpLogin();
                        });
                  },
                  child: Container(
                    color: Colors.pink,
                    width: 230,
                    height: 50,
                    child: Center(
                      child: Text(
                        "LOCIN / SING UP",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          color: Colors.white,
          child: Column(children: [
            ProfileItems(
              assetname: "assets/images/box.png",
              title: "Orders",
              substitle: "Check your oreder status here",
            ),
            Divider(),
            ProfileItems(
              assetname: "assets/images/support.png",
              title: "Help Center",
              substitle: "Help regarding your questions",
            ),
            Divider(),
            ProfileItems(
              assetname: "assets/images/heart.png",
              title: "Wishlist",
              substitle: "Your recent items",
            ),
          ]),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          color: Colors.white,
          child: Column(children: [
            ProfileItems(
              assetname: "assets/images/qr-code.png",
              title: "Scan for coupon",
              // substitle: "",
            ),
            Divider(),
            ProfileItems(
              assetname: "assets/images/megaphone.png",
              title: "Refer and Earn",
              // substitle: "Help regarding your questions",
            ),
          ]),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FooterContent(text: "FAQs"),
              Divider(),
              FooterContent(text: "ABOUT US"),
              Divider(),
              FooterContent(text: "TERM OF USE"),
              Divider(),
              FooterContent(text: "PRIVACY POLICY"),
              Container(
                color: Colors.blueGrey[50],
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 110),
                  child: Text(
                    "Made by Mokellat103.0.0".toUpperCase(),
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              )
              // Divider(),
            ],
          ),
        )
      ],
    );
  }
}

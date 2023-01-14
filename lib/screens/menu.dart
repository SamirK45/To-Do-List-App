import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:to_do_list/screens/rate_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 50,
              color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'About Us',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Contact Us',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text(
                'Feedback',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Rate()));
                },
                child: Text(
                  'Rate Us',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Connect With Us ',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                GestureDetector(
                  onTap:()=>launchUrl(Uri.parse('https://www.facebook.com')),
                  child:   Image.asset(
                    'images/fb.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap:()=>launchUrl(Uri.parse('https://www.instagram.com')),
                    child:   Image.asset(
                      'images/insta.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap:()=>launchUrl(Uri.parse('https://www.twitter.com')),
                    child:   Image.asset(
                      'images/twitter.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}

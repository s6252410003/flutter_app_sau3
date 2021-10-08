import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sau3/views/login_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewAccountUI extends StatefulWidget {
  const NewAccountUI({Key? key}) : super(key: key);

  @override
  _NewAccountUIState createState() => _NewAccountUIState();
}

class _NewAccountUIState extends State<NewAccountUI> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Color(0xFF424552),
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xFF424552),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'New\nAccount',
                        style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 70,
                        ),
                        child: Text(
                          '1 ',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '\n/ 2\nSTEPS',
                            style: TextStyle(
                              fontFamily: 'Kanit',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        FontAwesomeIcons.link,
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 18,
                        fixedSize: Size(
                          60,
                          60,
                        ),
                        primary: Color(0xFF424552),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            60,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'Upload a profile picture\n(optional)',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Row(
                  children: [
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: TextField(
                  style: TextStyle(
                    color: Color(0xFFE38D00),
                  ),
                  decoration: InputDecoration(
                    // prefixIcon: Icon(
                    //   Icons.person_outline,
                    //   color: Colors.grey,
                    // ),
                    hintText: '',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Kanit',
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE38D00),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Row(
                  children: [
                    Text(
                      'USER',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: TextField(
                  style: TextStyle(
                    color: Color(0xFFE38D00),
                  ),
                  decoration: InputDecoration(
                    // prefixIcon: Icon(
                    //   Icons.lock_outline,
                    //   color: Colors.grey,
                    // ),
                    //hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Kanit',
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE38D00),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Username already in use.',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontFamily: 'Kanit',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kanit',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 18,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100.0,
                    60.0,
                  ),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not the first time here?',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUI(),
                        ),
                      );
                    },
                    child: Text(
                      '  Log in.',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

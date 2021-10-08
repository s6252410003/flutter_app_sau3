import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sau3/views/new_account_ui.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
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
                height: 86,
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
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
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
                      'Log in',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Kanit',
                    ),
                    enabledBorder: UnderlineInputBorder(
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
                  right: 50,
                ),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outlined,
                      color: Colors.white,
                    ),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Kanit',
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE38D00),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Incorrect Password.',
                style: TextStyle(
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kanit',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100,
                    60,
                  ),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50,
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
                    'First time hers? Sign up.',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewAccountUI(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up .',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

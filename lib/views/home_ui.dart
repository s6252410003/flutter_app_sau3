import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sau3/views/login_ui.dart';
import 'package:flutter_app_sau3/views/new_account_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.appStore,
                      size: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 150,
                ),
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 150,
                ),
                child: Text(
                  'your',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Text(
                  'adventure',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 110.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginUI(),
                    ),
                  );
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100,
                    60.0,
                  ),
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      60,
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
                    'You don\'t have account',
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
                      'Sign up here.',
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

import 'package:flutter/material.dart';
import 'package:lengi/global/screen_size.dart';
import 'package:lengi/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Stack(
          children: [
            Container(
              height: height(context),
              width: width(context),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: height(context) * 0.05,
                  right: width(context) * 0.05
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.menu_sharp,
                    color: Colors.lightBlue[700],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    top: height(context) * 0.05,
                    left: width(context) * 0.05
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.lightBlue[700],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  top: height(context) * 0.2,
                  left: width(context) * 0.1,
                  right: width(context) * 0.1
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[700],
                        borderRadius: BorderRadius.circular(60)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Login',
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.lightBlue[700],
                        fontSize: 24,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  top: height(context) * 0.4,
                  right: width(context) * 0.1,
                  left: width(context) * 0.1
                ),
                child: Container(
                  width: width(context),
                  height: height(context),
                  child: ListView(
                    children: [
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: Colors.lightBlue[700],
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.lightBlue[700]
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outlined,
                                color: Colors.lightBlue[700],
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.lightBlue[700]
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 60,),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.lightBlue[700]
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(vertical: 20)
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36)
                            )
                          )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return SignUpScreen();
                              })
                            );
                          },
                          child: Text(
                            'Create a new account',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

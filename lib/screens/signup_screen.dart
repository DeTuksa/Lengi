import 'package:flutter/material.dart';
import 'package:lengi/global/screen_size.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          height: height(context),
          width: width(context),
          child: Stack(
            children: [
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: height(context) * 0.15,
                      left: width(context) * 0.1,
                      right: width(context) * 0.1
                  ),
                  child: Container(
                    height: 100, width: 120,
                    child: Stack(
                      children: <Widget>[
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 8, bottom: 24
                            ),
                            child: Container(
                              height: 35, width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.lightBlue[900]
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.camera_alt, color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: height(context) * 0.25,
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
                                labelText: 'Name',
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
                                  Icons.email_outlined,
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
                        SizedBox(height: 40,),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock_outlined,
                                  color: Colors.lightBlue[700],
                                ),
                                labelText: 'Confirm Password',
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
                            'Create Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue[700]
                              ),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(vertical: 18)
                              ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(36)
                                  )
                              )
                          ),
                        ),
                        SizedBox(height: 30,),
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'By creating an account you agree to our ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600
                              ),
                              children: [
                                TextSpan(
                                  text: 'Terms ',
                                  style: TextStyle(
                                    color: Colors.lightBlueAccent[700]
                                  )
                                ),
                                TextSpan(
                                    text: 'and ',
                                  style: TextStyle(
                                    color: Colors.grey
                                  )
                                ),
                                TextSpan(
                                    text: 'Conditions ',
                                  style: TextStyle(
                                    color: Colors.lightBlueAccent[700]
                                  )
                                ),
                                TextSpan(
                                    text: 'and our Privacy Policy '
                                )
                              ]
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:trip_paver/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'homepage_screen.dart';

class Login extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  String email;
  String password;
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  String errorMessage;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .subtitle1;
    return Scaffold(
      body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Form(
            key: _formKey,
            child: Container(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                      ),
                      getImageAsset(),
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextFormField(
                            autofocus: false,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return ("Please Enter Your Email");
                              }
                              if (!RegExp(
                                  "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return ("Please Enter Valid Email");
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail, color: Color(
                                  0xff17213e),),
                              contentPadding: EdgeInsets.fromLTRB(
                                  20, 15, 20, 15),
                              hintText: "Email",
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff17213e),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            onSaved: (value) {
                              emailController.text = value;
                            },
                            textInputAction: TextInputAction.next,

                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextFormField(
                            autofocus: false,
                            controller: passwordController,
                            validator: (value) {
                              RegExp regex = new RegExp(r'^.{6,}$');
                              if (value.isEmpty) {
                                return ("Password is required to login");
                              }
                              if (!regex.hasMatch(value)) {
                                return ("Please Enter Valid Password (Min. 6 Characters)");
                              }
                            },
                            obscureText: true,
                            // keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.vpn_key, color: Color(
                                  0xff17213e),),
                              contentPadding: EdgeInsets.fromLTRB(
                                  20, 15, 20, 15),
                              hintText: "Password",
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff17213e),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            onSaved: (value) {
                              passwordController.text = value;
                            },
                            textInputAction: TextInputAction.done,

                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme
                                      .of(context)
                                      .primaryColor),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(color: Colors.white)),
                              elevation: MaterialStateProperty.all(5.0),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),

                                  )
                              )
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Text(
                              "Login",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          onPressed: () {
                            signIn(
                                emailController.text, passwordController.text);
                          },
                        ),
                      ),
                      GestureDetector(
                          child: Center(
                            child: Text(
                              "Forget Password?",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          onTap: () {})
                    ],
                  ),
                )),
          )
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10.0, left: 100.0, right: 100.0),
        child: RichText(
          text: TextSpan(
              text: "Don't have an account? ",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w300,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "SignUp.",
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      print("Signup tapped");
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                        return signup();
                      }));
                    },
                  style: TextStyle(
                    color: Color(0xff17213e),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                  ),
                )
              ]),
        ),
      ),
    );
  }

  //login function
  void signIn(String email, String password) async {
    if (_formKey.currentState.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) =>
        {
          Fluttertoast.showToast(msg: "Login Successful"),
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => homeScreen())),
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage);
        print(error.code);
      }
    }

  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(25.0),
    );
  }
}

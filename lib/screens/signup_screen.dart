import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:trip_paver/models/user_model.dart';
import 'homepage_screen.dart';
import 'login_screen.dart';

class signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return signupState();
  }
}

class signupState extends State<signup> {
  final _auth =  FirebaseAuth.instance;
  String errorMessage;
  String email1;
  String password1;

  var _formKey = GlobalKey<FormState>();

  TextEditingController nameEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController confirmPasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle1;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff17213e),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image.asset(
                      "images/logo.png",
                      width: 125.0,
                      height: 125.0,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        controller: nameEditingController,
                        validator: (value){
                          RegExp regex = new RegExp(r'^.{3,}$');
                          if(value.isEmpty){
                            return ("Name cannot be Empty");
                          }
                          if(!regex.hasMatch(value)){
                            return ("Please Enter Valid Name (Min. 3 Characters)");
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Color(0xff17213e),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Full Name",
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff17213e),
                              width: 1.0,
                            ),
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        controller: emailEditingController,
                        validator: (value){
                          if(value.isEmpty){
                            return ("Please Enter Your Email");
                          }
                          if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]").hasMatch(value)){
                            return ("Please Enter Valid Email");
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Color(0xff17213e),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Email",
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff17213e),
                              width: 1.0,
                            ),
                          ),
                        ),
                        onSaved: (value) {
                          emailEditingController.text = value;
                        },
                        textInputAction: TextInputAction.next,
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        autofocus: false,
                        controller: passwordEditingController,
                        validator: (value){
                          RegExp regex = new RegExp(r'^.{6,}$');
                          if(value.isEmpty){
                            return ("Password is required to login");
                          }
                          if(!regex.hasMatch(value)){
                            return ("Please Enter Valid Password (Min. 6 Characters)");
                          }
                        },
                        obscureText: true,
                        // keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Color(0xff17213e),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Password",
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff17213e),
                              width: 1.0,
                            ),
                          ),
                        ),
                        onSaved: (value) {
                          passwordEditingController.text = value;
                        },
                        textInputAction: TextInputAction.next,
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        autofocus: false,
                        controller: confirmPasswordEditingController,
                        validator: (value){
                          if(confirmPasswordEditingController.text !=
                              passwordEditingController.text){
                            return ("Password doesn't match");
                          }
                          return null;
                        },
                        obscureText: true,
                        // keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Color(0xff17213e),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Confirm Password",
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff17213e),
                              width: 1.0,
                            ),
                          ),
                        ),
                        onSaved: (value) {
                          confirmPasswordEditingController.text = value;
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
                              Theme.of(context).primaryColor),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(color: Colors.white)),
                          elevation: MaterialStateProperty.all(5.0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),
                      child: Padding(
                        padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                        child: Text(
                          "SignUp",
                          textScaleFactor: 1.5,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      onPressed: () {
                        signUp(emailEditingController.text, passwordEditingController.text);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
  void signUp(String email, String password) async {
    if (_formKey.currentState.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {postDetailsToFirestore()})
            .catchError((e) {
          Fluttertoast.showToast(msg: e.message);
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
  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user.email;
    userModel.uid = user.uid;
    userModel.fullName = nameEditingController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => homeScreen()),
            (route) => false);
  }
}
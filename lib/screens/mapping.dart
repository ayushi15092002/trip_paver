// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:trip_paver/models/user_model.dart';
// import 'package:trip_paver/screens/login_screen.dart';
// import 'package:trip_paver/screens/homepage_screen.dart';
//
// class MappingPage extends StatefulWidget {
//
//   @override
//   State<StatefulWidget> createState() {
//     return _MappingPageState();
//   }
// }
//
// enum AuthStatus{
//   notSignedIn,
//   signedIn
// }
//
// class _MappingPageState extends State<MappingPage> {
//   AuthStatus _authStatus = AuthStatus.notSignedIn;
//   User user = FirebaseAuth.instance.currentUser;
//   UserModel loggedInUser = UserModel();
//   @override
//   void initState() {
//     super.initState();
//     FirebaseFirestore.instance
//         .collection("users")
//         .doc(user.uid)uid
//         .get()
//         .then((value){
//       this.loggedInUser = UserModel.fromMap(value.data());
//       setState(() {
//         _authStatus = loggedInUser.uid == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
//       });
//
//     });
//   }
//   void _signedIn(){
//     setState(() {
//       _authStatus = AuthStatus.signedIn;
//     });
//   }
//   void _signedOut(){
//     setState(() {
//       _authStatus = AuthStatus.notSignedIn;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     switch(_authStatus){
//       case AuthStatus.notSignedIn : return Login{
//         // auth: widget.auth;
//         onSignedIn: _signedIn;
//       }
//       case AuthStatus.signedIn : return homeScreen{
//         // auth: widget.auth;
//         onSignedOut: _signedIn;
//       }
//     }
//     return null;
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trip_paver/models/user_model.dart';
import 'package:trip_paver/screens/login_screen.dart';

class profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _profileState();
  }
}

class _profileState extends State<profile> {
  User user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get()
        .then((value){
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {

      });

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17213e),
      appBar: AppBar(
          // title: Center(child: getImage()),
          leading: IconButton(
            icon:  Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 25),
                onPressed: () => Navigator.of(context).pop(),
              ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.wb_sunny,
                  color: Colors.white, size: 25),
                  onPressed: (){
                  },
              ),
            ],
            backgroundColor: Color(0xff17213e),
            elevation: 0.0,
            // iconTheme: IconThemeData(color: Color(0xff17213e)
        ),
      body: ListView(
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45.0,
              child: IconButton(
                icon: Icon(Icons.camera_alt,
                    color: Color(0xff17213e), size: 35),
                onPressed: (){},
              ),
            )
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text("${loggedInUser.fullName}",
                  textScaleFactor: 1.25,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                    fontSize: 17.5,
                    color: Colors.white,
                  ),
                ),
            )
          ),
          Center(
              child: Padding(
                padding: EdgeInsets.only( bottom: 10.0),
                child: Text("${loggedInUser.email}",
                  textScaleFactor: 1.0,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0, bottom: 10.0),
            child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xff28314f)),
                          textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                            elevation: MaterialStateProperty.all(5.0),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.privacy_tip_outlined,
                                color: Colors.white,
                              ),
                              Container(
                                width: 20.0,
                              ),
                              Text(
                                "Privacy",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                width: 215.0,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {

                        },
                      ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff28314f)),
                  textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                  elevation: MaterialStateProperty.all(5.0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ))),
              child: Padding(
                padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.help_outline,
                      color: Colors.white,
                    ),
                    Container(
                      width: 20.0,
                    ),
                    Text(
                      "Help & Support",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 150.0,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              onPressed: () {

              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff28314f)),
                  textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                  elevation: MaterialStateProperty.all(5.0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ))),
              child: Padding(
                padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                    ),
                    Container(
                      width: 20.0,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 212.0,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              onPressed: () {

              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff28314f)),
                  textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                  elevation: MaterialStateProperty.all(5.0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ))),
              child: Padding(
                padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.person_add_alt_outlined,
                      color: Colors.white,
                    ),
                    Container(
                      width: 20.0,
                    ),
                    Text(
                      "Invite a Friend",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 160.0,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              onPressed: () {

              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff28314f)),
                  textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                  elevation: MaterialStateProperty.all(5.0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ))),
              child: Padding(
                padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.logout_outlined,
                      color: Colors.white,
                    ),
                    Container(
                      width: 20.0,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              onPressed: () {
                logout(context);
              },
            ),
          )

        ],
      ),
    );
  }
}
Future<void> logout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.of(context, rootNavigator: true).push(
    MaterialPageRoute(builder: (context) => Login()),
  );
}

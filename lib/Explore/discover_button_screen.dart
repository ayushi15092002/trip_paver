import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_paver/Animation/animations.dart';
import 'package:trip_paver/Explore/rajasthan.dart';
import 'package:trip_paver/Explore/up.dart';
import 'package:trip_paver/models/user_model.dart';
import 'package:trip_paver/reservation_screens/hotel.dart';

import 'andaman.dart';
import 'daman.dart';
import 'delhi.dart';
import 'gujarat.dart';
import 'kerela.dart';
import 'maharastra.dart';

class discover extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _discoverState();
  }
}

class _discoverState extends State<discover> {

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
        // appBar: AppBar(
        //   title: Center(child: getImage()),
        //   // leading: IconButton(icon: Icon(Icons.menu, color: Color(0xff17213e), size: 35)),
        //   actions: <Widget>[
        //     IconButton(
        //         icon: Icon(Icons.account_circle_rounded,
        //             color: Color(0xff17213e), size: 35)),
        //   ],
        //   backgroundColor: Colors.white,
        //   iconTheme: IconThemeData(color: Color(0xff17213e)),
        // ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //        DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Color(0xff17213e),
        //         ),
        //         child: Container(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: <Widget>[
        //               Icon(Icons.account_circle_rounded,
        //               color: Colors.white, size: 60),
        //               SizedBox(
        //                 height: 20.0,
        //               ),
        //               Text("Hi, ${loggedInUser.fullName}",
        //                 textScaleFactor: 1.5,
        //                 style: TextStyle(
        //                   color: Colors.white,
        //                   fontFamily: 'Raleway',
        //                   fontWeight: FontWeight.w800,
        //                 ),
        //                 textAlign: TextAlign.center,)
        //             ],
        //           ),
        //         ),
        //       ),
        //       ListTile(
        //         title: Text('Your Journey'),
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Bookings'),
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Explore more'),
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Discover'),
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/explore_trip.jpg'),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.2),
                          ]
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FadeAnimation(1, Text("What you would like to find?", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),)),
                      SizedBox(height: 30,),
                      FadeAnimation(1.3, Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search, color: Colors.grey,),
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                              hintText: "Search for cities, places ..."
                          ),
                        ),
                      )),
                      SizedBox(height: 30,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(1, Text("Best Destination", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),)),
                    SizedBox(height: 20,),
                    FadeAnimation(1.4, Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          GestureDetector(
                            child: makeItem(image: 'images/up.jpg', title: 'Uttar Pradesh'),
                            onTap: (){
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) => UpScreen()),
                              );
                              // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => UpScreen()));
                            },
                          ),
                          GestureDetector(
                            child: makeItem(image: 'images/maharastra.jpg', title: 'Maharastra'),
                            onTap: (){
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) => MahaScreen()),
                              );
                              // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => MahaScreen()));
                            },
                          ),
                          GestureDetector(
                            child: makeItem(image: 'images/gujarat.jpeg', title: 'Gujarat'),
                            onTap: (){
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) => GujScreen()),
                              );
                              // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => GujScreen()));
                            },
                          ),
                          GestureDetector(
                            child: makeItem(image: 'images/rajasthan.jpg', title: 'Rajasthan'),
                            onTap: (){
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) => RajScreen()),
                              );
                              // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => RajScreen()));
                            },
                          ),
                          GestureDetector(
                            child: makeItem(image: 'images/kerela.jpg', title: 'Kerela'),
                            onTap: (){
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) => kerScreen()),
                              );
                              // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => kerScreen()));
                            },
                          ),
                          GestureDetector(
                            child: makeItem(image: 'images/delhi.jpg', title: 'Delhi'),
                            onTap: (){
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) => delhiScreen()),
                              );
                              // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => delhiScreen()));
                            },
                          ),

                        ],
                      ),
                    )),

                    SizedBox(height: 20,),
                    FadeAnimation(1, Text("Best Islands", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),)),
                    SizedBox(height: 20,),
                    FadeAnimation(1.4, Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          GestureDetector(
                            child: makeItem(image: 'images/andaman.jpg', title: 'Andaman & Nicobar'),
                            onTap: (){
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) => anScreen()),
                              );
                              // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => anScreen()));
                            },
                          ),
                          GestureDetector(
                            child: makeItem(image: 'images/damananddiu.jpeg', title: 'Daman & Diu'),
                            onTap: (){
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) => ddScreen()),
                              );
                              // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => ddScreen()));
                            },
                          ),
                        ],
                      ),
                    )),
                    SizedBox(height: 80,),
                  ],
                ),
              )
            ],
          ),
        ),
    );

  }
  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ]
              )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
      ),
    );
  }
}


Widget getImage() {
  AssetImage assetImage = AssetImage('images/logo.png');
  Image image = Image(image: assetImage, width: 125.0, height: 55.0);
  return Container(
    child: image,
  );
}

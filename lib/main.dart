import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trip_paver/screens/homepage_screen.dart';
import 'package:trip_paver/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trip_paver/models/user_model.dart';
import 'map_screens/blocs/application_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ApplicationBloc(),
        child: MaterialApp(
          title: 'Trippaver',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Color(0xff17213e),
          ),
          home: SplashScreen(),
        ));
  }
}

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  User user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  // @override
  // void initState() {
  //   super.initState();
  //   FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(user.uid)
  //       .get()
  //       .then((value){
  //     this.loggedInUser = UserModel.fromMap(value.data());
  //     setState(() {
  //     });
  //
  //   });
  //   new Future.delayed(
  //       const Duration(seconds: 10),
  //           () => Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => Login()),
  //         // loggedInUser.uid==null ? Login() : homeScreen()),
  //       ));
  // }

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 10),
            () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        ));
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("images/Trippaver.gif",
                gaplessPlayback: true, fit: BoxFit.fill)));
  }
}

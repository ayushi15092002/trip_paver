import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:trip_paver/Explore/discover_button_screen.dart';
import 'package:trip_paver/blog/blog_screen.dart';
import 'package:trip_paver/blog/uploadPhoto.dart';
import 'package:trip_paver/map_screens/map_screen.dart';
import 'package:trip_paver/models/user_model.dart';
import 'package:trip_paver/profile/profilepage_screen.dart';
import 'package:trip_paver/restuarant_screens/food_button_screen.dart';
import 'package:trip_paver/home_screens/home_button_screen.dart';
import 'package:trip_paver/reservation_screens/reservation_button_screen.dart';

class homeScreen extends StatefulWidget {

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

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
  int _selectedIndex = 0;

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  List<Widget> _widgetOptions = <Widget>[
    home(),
    Reservation(),
    food(),
    discover()
  ];

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          home(),
          Reservation(),
          uploadPhoto(),
          blogScreen(),
          discover(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final isFirstRouteInCurrentTab =
              !await _navigatorKeys[_selectedIndex].currentState.maybePop();

          // let system handle back button if we're on the first route
          return isFirstRouteInCurrentTab;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: getImage()),
            // leading: IconButton(icon: Icon(Icons.menu, color: Color(0xff17213e), size: 35)),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.account_circle_rounded,
                    color: Color(0xff17213e), size: 35),
                onPressed: (){
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(builder: (context) => profile()),
                  );                },
              ),
            ],
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Color(0xff17213e)),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xff17213e),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.account_circle_rounded,
                            color: Colors.white, size: 60),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("Hi, ${loggedInUser.fullName}",
                          textScaleFactor: 1.5,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Your Journey'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Bookings'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Explore more'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Discover'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Find Nearest'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              _buildOffstageNavigator(0),
              _buildOffstageNavigator(1),
              _buildOffstageNavigator(2),
              _buildOffstageNavigator(3),
              _buildOffstageNavigator(4),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xff17213e),
            unselectedItemColor: Colors.blueGrey,
            iconSize: 35,
            type: BottomNavigationBarType.fixed,
            onTap: (newIndex) => setState(() => _selectedIndex = newIndex),
            currentIndex: _selectedIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book_online),
                label: 'Reservation',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Upload',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_post_office_sharp),
                label: 'Blogs',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Explore more',
              ),
            ],
          ),
        ));
  }

}
Widget getImage() {
  AssetImage assetImage = AssetImage('images/logo.png');
  Image image = Image(image: assetImage, width: 125.0, height: 55.0);
  return Container(
    child: image,
  );
}

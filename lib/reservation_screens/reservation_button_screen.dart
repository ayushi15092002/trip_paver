import 'package:flutter/material.dart';
import 'package:trip_paver/reservation_screens/railway.dart';
import 'airway.dart';
import 'bus.dart';
import 'cab.dart';
import 'hotel.dart';

class Reservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Center(child: getImage()),
        //   // leading: IconButton(icon: const Icon(Icons.menu, color: Color(0xff17213e), size: 35)),
        //   actions: <Widget>[
        //     IconButton(
        //         icon: const Icon(Icons.account_circle_rounded,
        //             color: Color(0xff17213e), size: 35)),
        //   ],
        //   backgroundColor: Colors.white,
        //   iconTheme: IconThemeData(color: Color(0xff17213e)),
        // ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       const DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Color(0xff17213e),
        //         ),
        //         child: Text('Welcome to trippaver!'),
        //       ),
        //       ListTile(
        //         title: const Text('Your Journey'),
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Bookings'),
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Explore more'),
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Discover'),
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Container(
                padding: EdgeInsets.only(
                  top: 70.0,
                  left: 50.0,
                  right: 50.0,
                ),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Theme.of(context).primaryColor),
                            textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                            elevation: MaterialStateProperty.all(5.0),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Flights",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.airplanemode_active,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(builder: (context) => Airway()),
                          );
                          // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => Airway()));
                        },
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Theme.of(context).primaryColor),
                            textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                            elevation: MaterialStateProperty.all(5.0),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Trains",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.train,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(builder: (context) => Railway()),
                          );
                          // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => Railway()));
                        },
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Theme.of(context).primaryColor),
                            textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                            elevation: MaterialStateProperty.all(5.0),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Buses",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.directions_bus,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(builder: (context) => Bus()),
                          );
                          // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => Bus()));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Theme.of(context).primaryColor),
                            textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                            elevation: MaterialStateProperty.all(5.0),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Cabs",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.local_taxi,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(builder: (context) => Cab()),
                          );
                          // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => Cab()));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Theme.of(context).primaryColor),
                            textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                            elevation: MaterialStateProperty.all(5.0),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Hotels",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.hotel,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(builder: (context) => Hotel()),
                          );
                          // Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => Hotel()));
                        },
                      ),
                    )
                  ],
                ))));
  }
}

// Widget getElevatedButton(
//     BuildContext context, String title, IconData iconStyle, Airway next())
//   return Padding(
//     padding: EdgeInsets.all(10.0),
//     child: ElevatedButton(
//       style: ButtonStyle(
//           backgroundColor:
//               MaterialStateProperty.all(Theme.of(context).primaryColor),
//           textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
//           elevation: MaterialStateProperty.all(5.0),
//           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(25.0),
//           ))),
//       child: Padding(
//         padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700,
//                 color: Colors.white,
//               ),
//             ),
//             Icon(
//               iconStyle,
//               color: Colors.white,
//             )
//           ],
//         ),
//       ),
//       onPressed: () {
//         Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => next()));
//       },
//     ),
//   );
// }
Widget getImage() {
  AssetImage assetImage = AssetImage('images/logo.png');
  Image image = Image(image: assetImage, width: 125.0, height: 55.0);
  return Container(
    child: image,
  );
}

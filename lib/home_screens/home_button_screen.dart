import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trip_paver/home_screens/planWidget.dart';
import 'package:trip_paver/home_screens/storyWidget.dart';
import 'package:trip_paver/models/user_model.dart';
import 'package:trip_paver/screens/login_screen.dart';
import 'package:video_player/video_player.dart';

import 'HolidayPlanScreen.dart';

class home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<home> {
  int izlendi;
  List<String> planSuggestionImage = [
    "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2017/12/Dream-Vacation-Now.jpg",
    "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2017/12/Travel-Plan.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUNwwznGEXp7UMjT3RH-d7KQlzbxG0GvreVw&usqp=CAU",
    "https://blog.marketresearch.com/hs-fs/hub/209482/file-445002688-jpg/Coins_Piles.jpg",
    "https://media.nomadicmatt.com/planningsteps2.jpg",
    "https://media.nomadicmatt.com/planningsteps4.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3-Jzhv8ugt6VE_a6jdvCA97Aqzr_5Y_098A&usqp=CAU",
    "https://cdn.benzinga.com/files/imagecache/1024x768xUP/images/story/2012/lens-1209823_1280.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDf5wIufrVHIBp_1-FuKlbzj958VQy03qTQw&usqp=CAU",
    "https://media.nomadicmatt.com/planningsteps3.jpg",
    "https://media.nomadicmatt.com/planningsteps5.jpg",
    "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2017/12/Back-Packer.jpg",
    "https://img.traveltriangle.com/blog/wp-content/uploads/2017/12/Packing-Bags.jpg",
    "https://www.bajajallianz.com/content/dam/bagic/travel-insurance/individual-travel-insurance/Individual_Travel_Insurance_V3.png",
    "https://media.nomadicmatt.com/planningsteps8.jpg",
  ];
  List<String> planSuggestions = [
    "Pick your Destination",
    "Decide the duration of your trip",
    "Will you travel Solo?",
    "Research your Costs",
    "Start Saving Money",
    "Get a Travel Reward Credit Cards",
    "Switch to No-Fee ATM Cards",
    "Stay Focused and Inspired",
    "Check for Last Minute Deals",
    "Book your Flights",
    "Book your Accommodation",
    "Plan the day-wise activities and course of action",
    "Pack diligently and make all the necessary adjustments",
    "Buy Travel Insurance",
    "Enjoy your Trip!"
  ];

      @override
  void initState() {
    super.initState();
    izlendi = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Text(
                  'Create a \n'
                  'holiday plan',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 32),


              // Text(
              //   "Discover new places!",
              //   textScaleFactor: 1.5,
              //   style: TextStyle(
              //     fontFamily: 'Raleway',
              //     fontWeight: FontWeight.w800,
              //   ),
              // ),
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://www.planetware.com/wpimages/2020/01/india-in-pictures-beautiful-places-to-photograph-cola-beach-goa.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://www.planetware.com/wpimages/2020/01/india-in-pictures-beautiful-places-to-photograph-gateway-of-india-mumbai.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "http://static2.tripoto.com/media/filter/nxl/img/15546/TripDocument/1438612489_35289722.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.planetware.com/wpimages/2020/01/india-in-pictures-beautiful-places-to-photograph-train-rides.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://www.planetware.com/wpimages/2020/01/india-in-pictures-beautiful-places-to-photograph-kapaleeshwarar-temple.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Must Places Visit in India",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                height: 7.5,
              ),
              Container(
                height: 120.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //1
                    Container(
                      margin: EdgeInsets.all(6.0),
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //rann of kachh
                          image: NetworkImage(
                              'https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_317555284874580f3710bd99e.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    //2
                    Container(
                      margin: EdgeInsets.all(6.0),
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //majuli
                          image: NetworkImage(
                              'https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_449897710902580f3b81d4c08.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    //3
                    Container(
                      margin: EdgeInsets.all(6.0),
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //munnar,kerala
                          image: NetworkImage(
                              'https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_314305632996580f3d563d1f1.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    //4
                    Container(
                      margin: EdgeInsets.all(6.0),
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //ziro,arunachal pradesh
                          image: NetworkImage(
                              'https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_208588344191580f47c0c64bf.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    //5
                    Container(
                      margin: EdgeInsets.all(6.0),
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //Chand Baori, Rajasthan
                          image: NetworkImage(
                              'https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_877294169144580f48e78704a.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      // child: Container(
                      //   margin: EdgeInsets.only(top: 90.0),
                      //   height: 35.0,
                      //   width: 80.0,
                      //   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
                      // ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                "Popular In India",
                textScaleFactor: 1.5,
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w800,
                ),
              ),),
              SizedBox(
                height: 7.5,
              ),
              Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 250.0,
                      height: 100.0,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 250.0,
                              height: 120.0,
                              child: Image.network(
                                'https://www.tripsavvy.com/thmb/y1ILSMLfVLJOX8_LLembVwcaVfo=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/IMG_5039-4930cb0dedaf4349ac8e84c7bd7f7654.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            // SizedBox(
                            //   height: 8.0,
                            // ),
                            // Column(children: [
                            //   Padding(
                            //     padding: EdgeInsets.only(top: 10.0),
                            //     child: Text(
                            //       'Hampi',
                            //       textScaleFactor: 1,
                            //       style: TextStyle(
                            //         color: Color(0xff17213e),
                            //         fontFamily: 'Raleway',
                            //         fontWeight: FontWeight.w600,
                            //       ),
                            //       textAlign: TextAlign.center,
                            //     ),
                            //   ),
                            // ])
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    //1
                    Container(
                      width: 250.0,
                      height: 100.0,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 250.0,
                              height: 120.0,
                              child: Image.network(
                                'https://www.tripsavvy.com/thmb/iW0hZ24H5db0quld9ek3wmv3RY4=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/AjantaCaves-India-AnnaHaines128-06854a6c462e4961a3ec266d0aece827.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            // SizedBox(
                            //   height: 8.0,
                            // ),
                            // Column(children: [
                            //   Padding(
                            //     padding: EdgeInsets.only(top: 10.0),
                            //     child: Text(
                            //       "Ajanta and Ellora caves",
                            //       textScaleFactor: 1,
                            //       style: TextStyle(
                            //         color: Color(0xff17213e),
                            //         fontFamily: 'Raleway',
                            //         fontWeight: FontWeight.w600,
                            //       ),
                            //       textAlign: TextAlign.center,
                            //     ),
                            //   ),
                            // ])
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    //2
                    Container(
                      width: 250.0,
                      height: 100.0,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 250.0,
                              height: 120.0,
                              child: Image.network(
                                'https://www.tripsavvy.com/thmb/4wPlYOPds7vrOh12GoCN7cPLzOc=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-1046120248-5c36d18746e0fb0001cb0248.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            // SizedBox(
                            //   height: 8.0,
                            // ),
                            // Column(children: [
                            //   Padding(
                            //     padding: EdgeInsets.only(top: 10.0),
                            //     child: Text(
                            //       "Madurai",
                            //       textScaleFactor: 1,
                            //       style: TextStyle(
                            //         color: Color(0xff17213e),
                            //         fontFamily: 'Raleway',
                            //         fontWeight: FontWeight.w600,
                            //       ),
                            //       textAlign: TextAlign.center,
                            //     ),
                            //   ),
                            // ])
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    //3
                    Container(
                      width: 250.0,
                      height: 100.0,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 250.0,
                              height: 120.0,
                              child: Image.network(
                                'https://www.tripsavvy.com/thmb/HPF7bdEovOoVUWwY85OgLbxXmi0=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-1061958640-5c37d16a46e0fb0001ed167e.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            // SizedBox(
                            //   height: 8.0,
                            // ),
                            // Column(children: [
                            //   Padding(
                            //     padding: EdgeInsets.only(top: 10.0),
                            //     child: Text(
                            //       "Spiti Valley",
                            //       textScaleFactor: 1,
                            //       style: TextStyle(
                            //         color: Color(0xff17213e),
                            //         fontFamily: 'Raleway',
                            //         fontWeight: FontWeight.w600,
                            //       ),
                            //       textAlign: TextAlign.center,
                            //     ),
                            //   ),
                            // ])
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    //4
                    Container(
                      width: 250.0,
                      height: 100.0,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 250.0,
                              height: 120.0,
                              child: Image.network(
                                'https://www.tripsavvy.com/thmb/mLkOBCPk1bySXDDv9X_6tGCyHqE=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-140502868-56a3c43b3df78cf7727f0cb2.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            // SizedBox(
                            //   height: 8.0,
                            // ),
                            // Column(children: [
                            //   Padding(
                            //     padding: EdgeInsets.only(top: 10.0),
                            //     child: Text(
                            //       "Odissa",
                            //       textScaleFactor: 1,
                            //       style: TextStyle(
                            //         color: Color(0xff17213e),
                            //         fontFamily: 'Raleway',
                            //         fontWeight: FontWeight.w600,
                            //       ),
                            //       textAlign: TextAlign.center,
                            //     ),
                            //   ),
                            // ])
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Text(
                  'Plan Suggestions',
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w800,
                    ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: MediaQuery.of(context).size.height * 0.39,

                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: index == 0
                            ? const EdgeInsets.only(
                            left: 24.0,
                            bottom: 10.0,
                            right: 10.0,
                            top: 10.0)
                            : const EdgeInsets.all(10.0),
                        child: Container(
                          height: 170,
                          width: 116,
                          //color: Colors.blue,
                          child: planWidget(
                            imageURL:
                            planSuggestionImage[index],
                            text: planSuggestions[index],
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 20.0),
                child: Text(
                  'Private Plan Tour',
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HolidayPlanScreen()));
                  },
                  child: Container(
                    height: 72,
                    width: 336,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://www.berkshirechoral.org/images/made/images/uploads/Barcelona_870_580_s_c1.jpg'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'from Mumbai to',
                                      style: TextStyle(
                                          color: Color(0xff989EAF),
                                          fontSize: 12),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Goa',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          // Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Icon(
                          //       Icons.chevron_right,
                          //       color: Color(0xff989EAF),
                          //       size: 23,
                          //     ),
                          //     SizedBox(height: 4),
                          //     Icon(
                          //       Icons.chevron_right,
                          //       color: Colors.transparent,
                          //       size: 23,
                          //     ),
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
// class home extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _homeState();
//   }
// }
//
// class _homeState extends State<home> {
//
//   User user = FirebaseAuth.instance.currentUser;
//   UserModel loggedInUser = UserModel();
//   @override
//   void initState() {
//     super.initState();
//     FirebaseFirestore.instance
//         .collection("users")
//         .doc(user.uid)
//         .get()
//         .then((value){
//           this.loggedInUser = UserModel.fromMap(value.data());
//           setState(() {
//
//           });
//
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Center(child: getImage()),
//       //   // leading: IconButton(icon: const Icon(Icons.menu, color: Color(0xff17213e), size: 35)),
//       //   actions: <Widget>[
//       //     IconButton(
//       //         icon: const Icon(Icons.account_circle_rounded,
//       //             color: Color(0xff17213e), size: 35),
//       //       onPressed: (){
//       //           logout(context);
//       //       },
//       //     ),
//       //   ],
//       //   backgroundColor: Colors.white,
//       //   iconTheme: IconThemeData(color: Color(0xff17213e)),
//       // ),
//       // drawer: Drawer(
//       //   child: ListView(
//       //     padding: EdgeInsets.zero,
//       //     children: [
//       //       const DrawerHeader(
//       //         decoration: BoxDecoration(
//       //           color: Color(0xff17213e),
//       //         ),
//       //         child: Text('Welcome to trippaver!'),
//       //       ),
//       //       ListTile(
//       //         title: const Text('Your Journey'),
//       //         onTap: () {
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: const Text('Bookings'),
//       //         onTap: () {
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: const Text('Explore more'),
//       //         onTap: () {
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: const Text('Discover'),
//       //         onTap: () {
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       body: Container(
//         child: ListView(
//           padding: const EdgeInsets.all(8),
//           children: [
//             Text("${loggedInUser.fullName}",
//               textScaleFactor: 1.5,
//               style: TextStyle(
//                 fontFamily: 'Raleway',
//                 fontWeight: FontWeight.w800,
//               ),),
//             // AssetPlayerWidget(),
//             Text("Discover new places!",
//               textScaleFactor: 1.5,
//               style: TextStyle(
//                 fontFamily: 'Raleway',
//                 fontWeight: FontWeight.w800,
//               ),),
//             CarouselSlider(
//               items: [
//                 //1st Image of Slider
//                 Container(
//                   margin: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: NetworkImage("http://static2.tripoto.com/media/filter/nxl/img/15546/TripDocument/1438612489_35289722.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//
//                 //2nd Image of Slider
//                 Container(
//                   margin: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: NetworkImage("http://static2.tripoto.com/media/filter/nxl/img/15546/TripDocument/1438612489_35289722.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//
//                 //3rd Image of Slider
//                 Container(
//                   margin: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: NetworkImage("http://static2.tripoto.com/media/filter/nxl/img/15546/TripDocument/1438612489_35289722.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//
//                 //4th Image of Slider
//                 Container(
//                   margin: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: NetworkImage("http://static2.tripoto.com/media/filter/nxl/img/15546/TripDocument/1438612489_35289722.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//
//                 //5th Image of Slider
//                 Container(
//                   margin: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: NetworkImage("http://static2.tripoto.com/media/filter/nxl/img/15546/TripDocument/1438612489_35289722.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ],
//
//               //Slider Container properties
//               options: CarouselOptions(
//                 height: 180.0,
//                 enlargeCenterPage: true,
//                 autoPlay: true,
//                 aspectRatio: 16 / 9,
//                 autoPlayCurve: Curves.fastOutSlowIn,
//                 enableInfiniteScroll: true,
//                 autoPlayAnimationDuration: Duration(milliseconds: 800),
//                 viewportFraction: 0.8,
//               ),
//             ),
//             Text("Must visit places in India",
//               textScaleFactor: 1.5,
//               style: TextStyle(
//                 fontFamily: 'Raleway',
//                 fontWeight: FontWeight.w800,
//               ),),
//             Container(
//               height: 120.0,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   //1
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         //rann of kachh
//                         image: NetworkImage('https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_317555284874580f3710bd99e.jpg'),
//                         fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                   ),
//                   //2
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         //majuli
//                         image: NetworkImage('https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_449897710902580f3b81d4c08.jpeg'),
//                         fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                   ),
//                   //3
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         //munnar,kerala
//                         image: NetworkImage('https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_314305632996580f3d563d1f1.jpg'),
//                         fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                   ),
//                   //4
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         //ziro,arunachal pradesh
//                         image: NetworkImage('https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_208588344191580f47c0c64bf.jpg'),
//                         fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                   ),
//                   //5
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         //Chand Baori, Rajasthan
//                         image: NetworkImage('https://im.indiatimes.in/media/content/itimes/blog/2016/Oct/25/1477394533_877294169144580f48e78704a.jpg'),
//                         fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                     // child: Container(
//                     //   margin: EdgeInsets.only(top: 90.0),
//                     //   height: 35.0,
//                     //   width: 80.0,
//                     //   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
//                     // ),
//                   ),
//                 ],
//               ),
//             ),
//             Text("Popular in India",
//               textScaleFactor: 1.5,
//               style: TextStyle(
//                 fontFamily: 'Raleway',
//                 fontWeight: FontWeight.w800,
//               ),),
//             Container(
//               height: 150.0,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   //1
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: NetworkImage('https://www.tripsavvy.com/thmb/y1ILSMLfVLJOX8_LLembVwcaVfo=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/IMG_5039-4930cb0dedaf4349ac8e84c7bd7f7654.jpg'),
//                         // fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                     child: Container(
//                       margin: EdgeInsets.only(top: 100.0),
//                       height: 25.0,
//                       width: 60.0,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text("Hampi"),
//                       ),
//                     ),
//                   ),
//                   //2
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: NetworkImage('https://www.tripsavvy.com/thmb/iW0hZ24H5db0quld9ek3wmv3RY4=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/AjantaCaves-India-AnnaHaines128-06854a6c462e4961a3ec266d0aece827.jpg'),
//                         // fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                     child: Container(
//                       margin: EdgeInsets.only(top: 100.0),
//                       height: 25.0,
//                       width: 60.0,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text("Ajanta and Ellora caves"),
//                       ),
//                     ),
//                   ),
//                   //3
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: NetworkImage('https://www.tripsavvy.com/thmb/4wPlYOPds7vrOh12GoCN7cPLzOc=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-1046120248-5c36d18746e0fb0001cb0248.jpg'),
//                         // fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                     child: Container(
//                       margin: EdgeInsets.only(top: 100.0),
//                       height: 25.0,
//                       width: 60.0,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text("Madurai"),
//                       ),
//                     ),
//                   ),
//                   //4
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: NetworkImage('https://www.tripsavvy.com/thmb/HPF7bdEovOoVUWwY85OgLbxXmi0=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-1061958640-5c37d16a46e0fb0001ed167e.jpg'),
//                         // fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                     child: Container(
//                       margin: EdgeInsets.only(top: 100.0),
//                       height: 25.0,
//                       width: 60.0,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text("Spiti Valley"),
//                       ),
//                     ),
//                   ),
//                   //5
//                   Container(
//                     margin: EdgeInsets.all(6.0),
//                     height: 120.0,
//                     width: 120.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: NetworkImage('https://www.tripsavvy.com/thmb/mLkOBCPk1bySXDDv9X_6tGCyHqE=/537x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-140502868-56a3c43b3df78cf7727f0cb2.jpg'),
//                         //   fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.rectangle,
//                     ),
//                     child: Container(
//                       margin: EdgeInsets.only(top: 100.0),
//                       height: 25.0,
//                       width: 60.0,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text("Odissa",
//                           textScaleFactor: 1.5,
//                           style: TextStyle(
//                             fontFamily: 'Raleway',
//                             fontWeight: FontWeight.w800,
//                           ),),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
//   Future<void> logout(BuildContext context) async {
//     await FirebaseAuth.instance.signOut();
//     Navigator.of(context, rootNavigator: true).push(
//       MaterialPageRoute(builder: (context) => Login()),
//     );
//   }
// }
//
// class AssetPlayerWidget extends StatefulWidget {
//   @override
//   _assetPlayerWidgetState createState() => _assetPlayerWidgetState();
// }
//
// class _assetPlayerWidgetState extends State<AssetPlayerWidget> {
//   VideoPlayerController controller;
//
//   @override
//   void initState() {
//     controller = VideoPlayerController.asset('videos/640.mp4')
//       ..addListener(() => setState(() {}))
//       ..setLooping(true)
//       ..initialize().then((_) => controller.play());
//     controller.setVolume(1.0);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   Widget build(BuildContext context) {
//     final isMuted = controller.value.volume == 0;
//     return Column(
//       children: [
//         videoPlayerWidget(controller: controller),
//         if (controller != null && controller.value.isInitialized)
//           IconButton(
//             icon: Icon(
//               isMuted ? Icons.volume_mute : Icons.volume_up,
//               color: Color(0xff17213e),
//             ),
//             onPressed: () => controller.setVolume(isMuted ? 1 : 0),
//           )
//       ],
//     );
//   }
// }
//
// class videoPlayerWidget extends StatelessWidget {
//   final VideoPlayerController controller;
//
//   const videoPlayerWidget({
//     Key key,
//     @required this.controller,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) =>
//       controller != null && controller.value.isInitialized
//           ? Container(alignment: Alignment.topCenter, child: buildVideo())
//           : Container(
//               height: 200,
//               child: Center(child: CircularProgressIndicator()),
//             );
//
//   Widget buildVideo() => buildVideoPlayer();
//
//   Widget buildVideoPlayer() => AspectRatio(
//         aspectRatio: controller.value.aspectRatio,
//         child: VideoPlayer(controller),
//       );
// }
// Widget getImage() {
//   AssetImage assetImage = AssetImage('images/logo.png');
//   Image image = Image(image: assetImage, width: 125.0, height: 55.0);
//   return Container(
//     child: image,
//   );
// }

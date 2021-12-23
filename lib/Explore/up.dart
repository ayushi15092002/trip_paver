import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";

class UpScreen extends StatefulWidget {
  @override
  _upScreenState createState() => _upScreenState();
}

class _upScreenState extends State<UpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   // title: Text(''),// You can add title here
        //
        //   leading: new IconButton(
        //     icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
        //     onPressed: () => Navigator.of(context).pop(),
        //   ),
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        // extendBodyBehindAppBar: true,

        body: Stack(children: <Widget>[
          Container(
            child: ListView(
              children: [
                Container(
                  // width: double.infinity,
                  height: 700.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.6), BlendMode.dstATop),
                          image: NetworkImage(
                              "https://img.traveltriangle.com/blog/wp-content/uploads/2016/08/Evening-view-of-Jaswant-Thada-with-mehrangarh-as-backdrop.jpg"),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.only(top: 50.0),
                  child: Column(children: [
                    // IconButton(
                    //   icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                    //   onPressed: () => Navigator.of(context).pop(),
                    // ),
                    // SizedBox(
                    //   height: 48.0
                    // ),
                    Text(
                      "UTTAR PRADESH\n",
                      style: TextStyle(
                          color: Colors.black.withOpacity(1.0),
                          fontSize: 38.0,
                          height: 1.4,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),

                    Text(
                      "\n\nUttar Pradesh is one of the states that aesthetically defines India and its rich history that’s as ancient as the time known. This is the land wherein great sages have emerged, religions evolved and two great epic of India: Ramayana and Mahabharata have been inspired from. With each progressing century, the state has vouched for the secularity of India by giving home to various religions: Hindu, Jainism, Islamic, Buddhist and more.",
                      style: TextStyle(
                          color: Colors.black.withOpacity(1.0),
                          fontSize: 18.0,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                Text(
                  "\nAmazing places to visit\n",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Color(0xff17213e),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                    height: 180.0,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
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
                                  'https://www.transindiatravels.com/wp-content/uploads/agra-2.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Agra',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
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
                                  'https://www.transindiatravels.com/wp-content/uploads/lucknow.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Lucknow',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
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
                                  'https://www.transindiatravels.com/wp-content/uploads/varanasi-1.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Varanasi',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
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
                                  'https://www.transindiatravels.com/wp-content/uploads/allahabad-2.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Allahabad',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                      //5
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
                                  'https://www.transindiatravels.com/wp-content/uploads/mathura-1.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Mathura',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ])),
                Text(
                  "\nBeautiful Culture\n",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Color(0xff17213e),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
                CarouselSlider(
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
                  items: [
                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.holidify.com/images/cmsuploads/compressed/14188021593_f6d726f31b_b_20170829183831.jpg"),
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
                              "https://www.holidify.com/images/cmsuploads/compressed/6219671194_2b5efdc3e8_b_20170829184456.jpg"),
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
                              "https://www.holidify.com/images/cmsuploads/compressed/1459128_677213112313616_859681960_n_20170829181733.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // //4th Image of Slider
                    // Container(
                    //   margin: EdgeInsets.all(6.0),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(8.0),
                    //     image: DecorationImage(
                    //       image: NetworkImage("https://www.holidify.com/images/cmsuploads/compressed/1459128_677213112313616_859681960_n_20170829181733.jpg"),
                    //       //fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                    // //5th Image of Slider
                    //  Container(
                    //   margin: EdgeInsets.all(6.0),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(8.0),
                    //     image: DecorationImage(
                    //       image: NetworkImage("https://www.holidify.com/images/cmsuploads/compressed/1459128_677213112313616_859681960_n_20170829181733.jpg"),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Text(
                  "\nFamous Cuisines\n",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Color(0xff17213e),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                    height: 180.0,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
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
                                  'https://infocaptain.com/wp-content/uploads/2021/04/kakori-kabab.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'kakori-kabab',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
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
                                  'https://infocaptain.com/wp-content/uploads/2021/04/malpua.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Malpua',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
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
                                  'https://infocaptain.com/wp-content/uploads/2021/04/lucknow-biryaani.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'lucknow-biryaani',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
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
                                  'https://infocaptain.com/wp-content/uploads/2021/04/basket-chaat.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'basket-chaat',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                      //5
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
                                  'https://infocaptain.com/wp-content/uploads/2021/04/baati-chokha.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // SizedBox(
                              //   height: 8.0,
                              // ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'baati-chokha',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Color(0xff17213e),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ])
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ])),
                Text(
                  "\nFamous hotels and resorts\n",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Color(0xff17213e),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(children: [
                  Container(width: 15.0),
                  SizedBox(
                    width: 90.0,
                    height: 70.0,
                    child: Image.network(
                      'https://images.luxuryescapes.com/q_auto:eco,c_fill,g_auto,w_400,ar_3:2/7avmvasi8n7sryldo02w.webp',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 40.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Radisson hotel, Agra",
                          textScaleFactor: 1.1,
                          style: TextStyle(
                            color: Color(0xff17213e),
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        StarDisplay(value: 5)
                      ]),
                ]),
                Container(
                  height: 8.0,
                ),

                //2

                Row(children: [
                  Container(width: 15.0),
                  SizedBox(
                    width: 90.0,
                    height: 70.0,
                    child: Image.network(
                      'https://images.luxuryescapes.com/q_auto:eco,c_fill,g_auto,w_400,ar_3:2/d8c4y559guj433xhv3ozm.webp',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 40.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hilton Garden Inn, Lucknow",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Color(0xff17213e),
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        StarDisplay(value: 4)
                      ]),
                ]),
                Container(
                  height: 8.0,
                ),

                //3

                Row(children: [
                  Container(width: 15.0),
                  SizedBox(
                    width: 90.0,
                    height: 70.0,
                    child: Image.network(
                      "https://images.luxuryescapes.com/q_auto:eco,c_fill,g_auto,w_400,ar_3:2/wy103ts8cl0dhttk573.webp",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 30.0),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Radisson Blu Hotel ,Noida",
                            textScaleFactor: 1.1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          StarDisplay(value: 4)
                        ]),
                  ),
                ]),
                Container(
                  height: 8.0,
                ),

                //4

                Row(children: [
                  Container(width: 15.0),
                  SizedBox(
                    width: 90.0,
                    height: 70.0,
                    child: Image.network(
                      'https://images.luxuryescapes.com/q_auto:eco,c_fill,g_auto,w_400,ar_3:2/a0jdpsr2ig0r67iomkxw.webp',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 30.0),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Landmark Hotel ,Kanpur",
                            textScaleFactor: 1.1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          StarDisplay(value: 3)
                        ]),
                  )
                ]),
                Container(
                  height: 8.0,
                ),

                //5
                Row(children: [
                  Container(width: 15.0),
                  SizedBox(
                    width: 90.0,
                    height: 70.0,
                    child: Image.network(
                      'https://images.luxuryescapes.com/q_auto:eco,c_fill,g_auto,w_400,ar_3:2/vgszuc3e0qlqa96j7tek.webp',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 30.0),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "The tree of life resort,Varanasi",
                            textScaleFactor: 1.1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          StarDisplay(value: 3)
                        ]),
                  )
                ]),
                Container(
                  height: 8.0,
                ),

                Text(
                  "\nHow to get there?\n",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Color(0xff17213e),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 20.0,
                      ),
                      Icon(Icons.directions_transit, size: 45),
                      Icon(Icons.airplanemode_active, size: 45),
                      Icon(Icons.local_taxi, size: 45),
                      Container(
                        width: 20.0,
                      ),
                    ]),
              ],
            ),
          )
        ]));
  }
}

class StarDisplay extends StatelessWidget {
  final int value;

  const StarDisplay({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: Color(0xff123456),
        );
      }),
    );
  }
}

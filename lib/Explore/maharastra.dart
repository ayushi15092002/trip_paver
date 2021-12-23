import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";


class MahaScreen extends StatefulWidget {
  @override
  _mahaScreenState createState() => _mahaScreenState();
}

class _mahaScreenState extends State<MahaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // width: double.infinity,
            height: 700.0,
            decoration: BoxDecoration(
                image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),
                    BlendMode.dstATop),
                    image: NetworkImage("https://c.ndtvimg.com/2020-01/6qe1fkco_mumbai-generic-unsplash-_650x400_18_January_20.jpg"), fit: BoxFit.cover)),
            padding: EdgeInsets.only(top: 50.0),
                child: Column(children: [
                  Text(
                    "MAHARASHTRA\n",
                    style: TextStyle(color: Colors.black.withOpacity(1.0), fontSize: 38.0, height: 1.4, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "The spirit of Maharashtra is cosmopolitan, forward-thinking, tolerant and vibrant. There is enough to keep connoisseurs of temples, forts, old monuments and art---gainfully preoccupied here. Forts have played a vital role in the history of the state, given the rocky terrain of the Sahyadris.  Each fort marks a military triumph, and each tells a story of strategy, warfare, intrigue and planning. All of them reconstruct the tale of an enterprising leader , Chhatrapati Shivaji- in the Deccan arena, who with fortitude went onto become one of the tallest kings of Indian history.",
                    style: TextStyle(color: Colors.black.withOpacity(1.0), fontSize: 18.0, height: 1.4, fontWeight: FontWeight.w600),
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
              child: ListView(scrollDirection: Axis.horizontal, children: [
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
                              'https://www.treebo.com/blog/wp-content/uploads/2018/06/Mumbai.jpg',
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
                              'Mumbai',
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
                              'https://www.treebo.com/blog/wp-content/uploads/2018/02/Pune.jpg',
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Pune',
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
                              'https://www.treebo.com/blog/wp-content/uploads/2020/12/Nagpur.jpg',
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
                              'Nagpur',
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
                              'https://www.treebo.com/blog/wp-content/uploads/2020/09/Satara-1.jpg',
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
                              'Satara',
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
                              'https://www.treebo.com/blog/wp-content/uploads/2020/12/Malvan-1-1024x683.jpg',
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
                              'Malvan',
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
          //////////////////////////////
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
                    image: NetworkImage("https://img.traveltriangle.com/blog/wp-content/uploads/2018/04/Ganesh-Chaturthi-mumbai.jpg"),
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
                    image: NetworkImage("https://i.pinimg.com/originals/f4/f2/6c/f4f26c649fa3d8fe314f52509b16fc4c.png"),
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
                    image: NetworkImage("https://tourdefarm.in/wp-content/uploads/2021/01/Ganeshotsav-In-Maharashtra.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //4
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://www.tourmyindia.com/states/maharashtra/images/gudi-padwa-festival1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
              child: ListView(scrollDirection: Axis.horizontal, children: [
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
                            'https://www.holidify.com/blog/wp-content/uploads/2015/10/3437240332_fa336f5efe_z.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Vada Pav',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,),)
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
                            'https://www.holidify.com/blog/wp-content/uploads/2015/11/Modak.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Modak',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,),)
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
                            'https://www.holidify.com/blog/wp-content/uploads/2015/11/Indian_cuisine-Ragda_contained_in_panipuri.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Ragda Pattice',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,),)
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
                            'https://www.holidify.com/blog/wp-content/uploads/2015/10/shrikhand.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Sreekhand',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,),)
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
                            'https://www.holidify.com/blog/wp-content/uploads/2015/11/Bhelpuri.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Bhelpuri',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,),)
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
                'https://curlytales.com/wp-content/uploads/2017/03/Aamby-Valley-City-Golf-770x515.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    "Aamby Valley City, Lonavala",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Color(0xff17213e),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  StarDisplay(value: 5)
                ])),
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
                'https://curlytales.com/wp-content/uploads/2017/03/Radisson-Karjat-770x515.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    "Radisson Blu Resort and Spa, Karjat",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Color(0xff17213e),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  StarDisplay(value: 4)
                ])),
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
                "http://curlytales.com/wp-content/uploads/2017/03/Le-Meridien-Mahabaleshwar-Resort-Spa-Mahabaleshwar-770x460.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    "Le Méridien, Mahableshwar",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Color(0xff17213e),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  StarDisplay(value: 4)
                ])),
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
                'https://curlytales.com/wp-content/uploads/2017/03/The-Ark-Wellness-Retreat-Nandgaon-770x515.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    "The Ark Wellness Retreat, Mulshi",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Color(0xff17213e),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  StarDisplay(value: 3)
                ])),
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
                'https://curlytales.com/wp-content/uploads/2017/03/malhar-machi-770x515.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    "Malhar Machi, Mulshi",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Color(0xff17213e),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  StarDisplay(value: 3)
                ])),
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

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
    );
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
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: Color(0xff123456),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RajScreen extends StatefulWidget {
  @override
  _rajScreenState createState() => _rajScreenState();
}

class _rajScreenState extends State<RajScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // width: double.infinity,
            height: 700.0,
            decoration: BoxDecoration(image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6),
                    BlendMode.dstATop),
                image: NetworkImage(
                    "https://www.transindiatravels.com/wp-content/uploads/jaipur2-1.jpg"),
                fit: BoxFit.cover
            )
            ),
            padding: EdgeInsets.only(top: 50.0),

                child: Column(children: [
                  Text(
                    "RAJASTHAN\n",
                    style: TextStyle(color: Colors.black.withOpacity(1.0), fontSize: 38.0, height: 1.4, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Rajasthan, the Land of Kings is synonymous to heroism, royalty and honour. Historic tales of battles fought and romance of the riches adorn the walls of the state. Established in the era marked with wartime ballads yet living in the modern period, this beautiful region is a travellers' destination. Those looking out for the remnants of the past should not pass up a trip to Rajasthan.This land is a colourful melange of massive forts, stunning palaces, diverse cultures, delectable cuisines and warm people, set amidst a rugged yet inviting landscape. Come, explore the miscellany of the old and the new in Rajasthan, a glittering jewel of India.",
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2014/11/Amber-Fort.jpg',
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
                              'Jaipur',
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2014/11/Mehrangarh-Fort.jpg',
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
                              'Jodhpur',
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2014/11/Junagarh-fort.jpg',
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
                              'Bikaner',
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2016/02/Ajmer-Sharif-Dargah.jpg',
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
                              'Ajmer',
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2014/11/Lake-Pichola.jpg',
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
                              'Udaipur',
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
          //////////////////////////////////
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
                    image: NetworkImage("https://www.erajasthantourism.net/wp-content/uploads/2019/01/dance-forms-of-rajasthan.png"),
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
                    image: NetworkImage("https://www.erajasthantourism.net/wp-content/uploads/2018/11/culture-and-tradition.jpg"),
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
                    image: NetworkImage("https://www.erajasthantourism.net/wp-content/uploads/2019/01/culture-of-rajasthan.jpg"),
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
                    image: NetworkImage("https://www.erajasthantourism.net/wp-content/uploads/2018/11/art-and-craft.jpg"),
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
                            'https://www.holidify.com/blog/wp-content/uploads/2016/01/DalBati.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text('DalBati Churma',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),),
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
                            'https://www.holidify.com/blog/wp-content/uploads/2016/01/Mohanthar.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Mohanthar',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                              ),),
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
                            'https://www.holidify.com/blog/wp-content/uploads/2016/01/Mawa-Kachodi.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Mawa-Kachodi',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color(0xff17213e),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                              ),)
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
                            'https://www.holidify.com/blog/wp-content/uploads/2016/01/Mirchi_Bada_2.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Mirchi Bada',
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
                            'https://www.holidify.com/blog/wp-content/uploads/2016/01/Kalakand_of_Salem.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Kalakand',
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
            "\nFamous Hotels and Resorts\n",
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Color(0xff17213e),
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          Row(children: [
            SizedBox(
              width: 90.0,
              height: 70.0,
              child: Image.network(
                'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2019/12/Taj-Lake-Palace_14th-dec.jpg',
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
                    "Taj Lake Palace, Udaipur",
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
            SizedBox(
              width: 90.0,
              height: 70.0,
              child: Image.network(
                'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2019/12/Rohet-Garh_14th-dec.jpg',
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
                    "Rohet Garh, Jodhpur",
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
            SizedBox(
              width: 90.0,
              height: 70.0,
              child: Image.network(
                "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2019/12/Khem-Villas_14th-dec.jpg",
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
                    " Khem Villas",
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
            SizedBox(
              width: 90.0,
              height: 70.0,
              child: Image.network(
                'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2019/12/The-Oberoi-Rajvilas_14th-dec.jpg',
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
                    "The Oberoi Rajvilas",
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
            SizedBox(
              width: 90.0,
              height: 70.0,
              child: Image.network(
                'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2019/12/Jhadol-Safari-Resort_14th-dec.jpg',
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
                    "Jhadol Safari Resort",
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

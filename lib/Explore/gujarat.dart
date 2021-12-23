import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";


class GujScreen extends StatefulWidget {
  @override
  _gujScreenState createState() => _gujScreenState();
}

class _gujScreenState extends State<GujScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // width: double.infinity,
            height: 700.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXD56hrt4SHQj1kbkva8BXfkQ8AnwVJQLmjA&usqp=CAU"), fit: BoxFit.cover)),
            padding: EdgeInsets.only(top: 50.0),

                child: Column(children: [
                  Text(
                    "GUJRAT\n",
                    style: TextStyle(color: Colors.black.withOpacity(1.0), fontSize: 38.0, height: 1.4, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Gujarat offers all that a national or international tourist looks for - a wide range of diverse destinations and attractions. In addition, strong logistic connectivity, excellent communication facilities, adequate health infrastructure, round the clock power supply even in the remotest area, safety and security and above all the hospitable nature of the people make Gujarat a prime destination in India.The varied landscape of Gujarat is a complete package in itself. Here, the White Desert of Kutch coexists with a long and beautiful coastline",
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2016/09/Gir.jpg',
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
                              'Gir',
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2016/09/Aina-Mahal-Palace-Bhuj.jpg',                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Bhuj',
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
                              'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2019/03/Surat.jpg',
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
                              'Surat',
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
                              'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2019/03/Dholavira.jpg',
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
                              'Dholavira',
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
                              'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2019/03/Mandvi-Beach.jpg',
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
                              'Mandvi Beach',
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
          ////////////////////////
          //////////////////////
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
                    image: NetworkImage("https://www.holidify.com/images/cmsuploads/articles/519.jpg"),
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
                    image: NetworkImage("https://www.holidify.com/images/cmsuploads/articles/520.jpg"),
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
                    image: NetworkImage("https://www.holidify.com/images/cmsuploads/articles/516.jpg"),
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
                    image: NetworkImage("https://www.holidify.com/images/cmsuploads/articles/518.jpg"),
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/02/Khandvi.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Khandvi',
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/02/Dhokla.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Dhokla',
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/02/Handvo.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Handvo',
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/02/Fafda-Jalebi.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Fafda-Jalebi',
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
                            'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/02/Dabeli.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text('Dabeli',
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
                'https://www.transindiatravels.com/wp-content/uploads/madhuban-resort-and-spa-ana.jpg',
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
                    "Madhuban Resort",
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
                'https://www.transindiatravels.com/wp-content/uploads/the-fern-gir-forest-resort-.jpg',
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
                    "The Fern Gir Forest Resort, Gir",
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
                "https://www.transindiatravels.com/wp-content/uploads/vanvaso-resort-gir-national.jpg",
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
                    " Vanvaso Resort, Gir National Park",
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
                'https://www.transindiatravels.com/wp-content/uploads/holiday-village-resort-gan.jpg',
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
                    "Holiday Village Resort, Gandhidham",
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
                'https://www.transindiatravels.com/wp-content/uploads/regency-lagoon-resort-rajko.jpg',
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
                    "Regency Lagoon Resort",
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
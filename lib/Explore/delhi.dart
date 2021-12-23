
import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";

class delhiScreen extends StatefulWidget {
  @override
  _delhiScreenState createState() => _delhiScreenState();
}

class _delhiScreenState extends State<delhiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // width: double.infinity,
            height: 700.0,
            decoration: BoxDecoration(image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop), image: NetworkImage("https://cdn.britannica.com/37/189837-050-F0AF383E/New-Delhi-India-War-Memorial-arch-Sir.jpg"), fit: BoxFit.cover)),
            padding: EdgeInsets.only(top: 50.0),
            child: Column(children: [
              Text(
                "DELHI\n",
                style: TextStyle(color: Colors.black.withOpacity(1.0), fontSize: 38.0, height: 1.4, fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
              Text(
                "\nDelhi, India’s capital territory, is a massive metropolitan area in the country’s north. In Old Delhi, a neighborhood dating to the 1600s, stands the imposing Mughal-era Red Fort, a symbol of India, and the sprawling Jama Masjid mosque, whose courtyard accommodates 25,000 people. Nearby is Chandni Chowk, a vibrant bazaar filled with food carts, sweets shops and spice stalls.",
                textScaleFactor: 1.0,
                style: TextStyle(
                  color: Color(0xff17213e).withOpacity(1.0),
                  fontFamily: 'Raleway',
                  fontSize: 18.0,
                  height: 1.4,
                  fontWeight: FontWeight.w800,
                ),
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
                            'https://www.planetware.com/photos-large/IND/india-delhi-red-fort.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'The Red Fort',
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
                            'https://www.planetware.com/photos-large/IND/india-delhi-qutub-minar.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Qutub Minar',
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
                            'https://www.planetware.com/photos-large/IND/india-delhi-gurudwara-bangla-sahib.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Gurudwara Bangla Sahib',
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
                            'https://www.planetware.com/photos-large/IND/india-delhi-lotus-temple.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'The Lotus Temple',
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
                            'https://www.planetware.com/photos-large/IND/india-delhi-india-gate.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'India Gate',
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
                    image: NetworkImage("https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2017/03/coverfinal1.jpg"),
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
                    image: NetworkImage("https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2017/03/AsianHawkers-Market1.jpg"),
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
                    image: NetworkImage("https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2017/03/Palate-Fest1.jpg"),
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
                    image: NetworkImage("https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2017/03/flower-show1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // //5th Image of Slider
              // Container(
              // margin: EdgeInsets.all(6.0),
              // decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(8.0),
              // image: DecorationImage(
              // image: NetworkImage("https://www.holidify.com/images/cmsuploads/compressed/1459128_677213112313616_859681960_n_20170829181733.jpg"),
              // fit: BoxFit.cover,
              // ),
              // ),
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
                            'https://seoimgak.mmtcdn.com/blog/sites/default/files/images/famous-dishes-of-delhi-gol-gappa.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Chaat',
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
                            'https://seoimgak.mmtcdn.com/blog/sites/default/files/images/famous-dishes-of-delhi-chole-bhature.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Chole Bhature',
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
                            'https://seoimgak.mmtcdn.com/blog/sites/default/files/images/famous-dishes-of-delhi-kathi-roll.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Rolls',
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
                            'https://seoimgak.mmtcdn.com/blog/sites/default/files/images/famous-dishes-of-delhi-momos.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Momos',
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
                            'https://seoimgak.mmtcdn.com/blog/sites/default/files/images/famous-dishes-of-delhi-kulfi.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // SizedBox(
                        // height: 8.0,
                        // ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Desserts',
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
                'https://irisholidays.com/keralatourism/wp-content/uploads/2013/06/spice-village-thekkady-cgh.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 40.0),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text(
                "Spice Village,Thekkady",
              ),
              StarDisplay(value: 4)
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
                'https://www.telegraph.co.uk/content/dam/Travel/Destinations/Asia/India/andaz-delhi-prod.jpg?imwidth=480',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 40.0),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text(
                "Andaz Delhi Hotel,New Delhi",
              ),
              StarDisplay(value: 5)
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
                "https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/the-oberoi-new-delhi-p.jpg?imwidth=480",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 30.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "The Oberoi, New Delhi",
                ),
                StarDisplay(value: 5)
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
                'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/the-roseate-new-delhi-india-hotel-p.jpg?imwidth=480',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 30.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "The Roseate,New Delhi",
                ),
                StarDisplay(value: 5)
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
                'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/leela-palace-delhi-p.jpg?imwidth=480',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 30.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                Text(
                  "The Leela Palace, New Delhi",
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


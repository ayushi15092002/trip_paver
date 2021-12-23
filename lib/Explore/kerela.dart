import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";

class kerScreen extends StatefulWidget {
  @override
  _kerScreenState createState() => _kerScreenState();
}

class _kerScreenState extends State<kerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // width: double.infinity,
            height: 700.0,
            decoration: BoxDecoration(image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop), image: NetworkImage("https://www.steppestravel.com/app/uploads/2019/06/tea-estates-munnar-kerala-india-1919x1080.jpg"), fit: BoxFit.cover)),
            padding: EdgeInsets.only(top: 50.0),
            child: Column(children: [
              Text(
                "KERELA\n",
                style: TextStyle(color: Colors.black.withOpacity(1.0), fontSize: 38.0, height: 1.4, fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
              Text(
                "\nKerala, a state on India's tropical Malabar Coast, has nearly 600km of Arabian Sea shoreline. It's known for its palm-lined beaches and backwaters, a network of canals. Inland are the Western Ghats, mountains whose slopes support tea, coffee and spice plantations as well as wildlife. National parks like Eravikulam and Periyar, plus Wayanad and other sanctuaries, are home to elephants, langur monkeys and tigers.",
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
                            'https://www.ekeralatourism.net/wp-content/uploads/2018/03/Alleppey.jpg',
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
                              'Alleppey (Alappuzha)',
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
                            'https://www.ekeralatourism.net/wp-content/uploads/2018/03/Wayanad.jpg',
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
                              'Wayanad',
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
                            'https://www.ekeralatourism.net/wp-content/uploads/2018/03/Cochin.jpg',
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
                              'Cochin',
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
                            'https://www.ekeralatourism.net/wp-content/uploads/2015/12/munnar-1.png',
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
                              'Munnar',
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
                            'https://www.ekeralatourism.net/wp-content/uploads/2018/03/Kumarakom.jpg',
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
                              'Kumarakom ',
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
                    image: NetworkImage("https://www.keralatourism.org/images/festivals/large/illuminated_replica_of_temple20200114092924_131_1.jpg"),
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
                    image: NetworkImage("https://www.keralatourism.org/images/festivals/large/20171222121145_317_1.jpg"),
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
                    image: NetworkImage("https://www.keralatourism.org/images/festivals/large/20161224054238_309_1.jpg"),
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
                    image: NetworkImage("https://www.keralatourism.org/images/festivals/large/20180106144046_102_1.jpg"),
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
                            'https://www.intermiles.com/_next/image?url=https://www.intermilesresources.com/iwov-resources/images/blog/top-10-cuisine-you-should-try-in-kerala/idiyappam-with-curry-250x250.jpg&w=640&q=75',
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
                              'Idiyappam with curry',
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
                            'https://www.intermiles.com/_next/image?url=https://www.intermilesresources.com/iwov-resources/images/blog/top-10-cuisine-you-should-try-in-kerala/erissery-250x250.jpg&w=640&q=75',
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
                              'Erissery',
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
                            'https://www.intermiles.com/_next/image?url=https://www.intermilesresources.com/iwov-resources/images/blog/top-10-cuisine-you-should-try-in-kerala/puttu-and-kadala-curry-250x250.jpg&w=640&q=75',
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
                              'Puttu and kadala curr',
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
                            'https://www.intermiles.com/_next/image?url=https://www.intermilesresources.com/iwov-resources/images/blog/top-10-cuisine-you-should-try-in-kerala/appam-with-ishtu-250x250.jpg&w=640&q=75',
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
                              'Appam with ishtu',
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
                            'https://www.intermiles.com/_next/image?url=https://www.intermilesresources.com/iwov-resources/images/blog/top-10-cuisine-you-should-try-in-kerala/parippu-curry-250x250.jpg&w=640&q=75',
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
                              'Parippu curry',
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
                'https://irisholidays.com/keralatourism/wp-content/uploads/2013/06/travancore-heritage-chowara.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 40.0),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text(
                "Travancore Heritage, Chowara",
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
                "https://irisholidays.com/keralatourism/wp-content/uploads/2013/06/ramada-resort-kochi.jpg",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 30.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Ramada Resort, Kochi",
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
                'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/purity-cochin-bedroom.jpg?imwidth=480',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 30.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Purity Hotel, Alleppey",
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
                'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/tissa-inn-hotel-colchin-kerala-prod.jpg?imwidth=480',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 30.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                Text(
                  "Tissa’s Inn, Cochin",
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

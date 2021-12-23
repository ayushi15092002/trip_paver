import 'package:flutter/material.dart';
import 'datepicker.dart';

class Hotel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HotelState();
  }
}

class _HotelState extends State<Hotel> {
// Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

  TextEditingController adultsController = TextEditingController();
  TextEditingController roomsController = TextEditingController();
  TextEditingController childrenController = TextEditingController();
  int rooms = 1;
  int adults = 1;
  int children = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    roomsController.text = "1";
    adultsController.text = "1";
    childrenController.text = "0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Book Hotels, Villas and HomeStays"),
        backgroundColor: Color(0xff17213e),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 30.0,
                  left: 17.0,
                  right: 10.0,
                ),
                child: Text(
                  "DESTINATION",
                  textScaleFactor: 1.25,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_on),
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "Enter City, Area or Hotel Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff17213e),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: 17.0,
                  right: 10.0,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "CHECK IN",
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      width: 115.0,
                    ),
                    Text(
                      "CHECK OUT",
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 45.0,
                        child: MyDatePickerTextFormField(
                          labelText: "",
                          suffixIcon: Icon(Icons.date_range),
                          lastDate: DateTime.now().add(Duration(days: 366)),
                          firstDate: DateTime.now(),
                          initialDate: DateTime.now().add(Duration(days: 1)),
                          onDateChanged: (selectedDate) {},
                        ),
                      ),
                    ),
                    Container(
                      width: 20.0,
                      height: 45.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 45.0,
                        child: MyDatePickerTextFormField(
                          labelText: "",
                          suffixIcon: Icon(Icons.date_range),
                          lastDate: DateTime.now().add(Duration(days: 366)),
                          firstDate: DateTime.now(),
                          initialDate: DateTime.now().add(Duration(days: 1)),
                          onDateChanged: (selectedDate) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 5.0, left: 10.0, right: 10.0),
                  child: Center(
                    child: Text(
                      "GUEST DETAILS",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "No. of Rooms",
                        textScaleFactor: 1.4,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Container(
                        width: 90.0,
                      ),
                      Expanded(
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          child: GestureDetector(
                            child: CircleAvatar(
                              backgroundColor: Color(0xff17213e),
                              radius: 30.0,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            onTap: (){
                              rooms++;
                              adults++;
                              roomsResult();
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            height: 35.0,
                            width: 50.0,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: roomsController,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.location_on),
                                contentPadding: EdgeInsets.all(10.0),
                                // hintText: "1",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff17213e),
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  try{
                                    rooms = int.parse(value);
                                    adults = int.parse(value);
                                    roomsResult();
                                  }on FormatException {
                                    print('Format error!');
                                  }

                                });
                              }
                            )),
                      ),
                      Expanded(
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          child: GestureDetector(
                            child: CircleAvatar(
                              backgroundColor: Color(0xff17213e),
                              radius: 30.0,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            onTap: (){
                              if(rooms>1){
                                rooms--;
                              }
                              roomsResult();
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "No. of Adults",
                        textScaleFactor: 1.4,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Container(
                        width: 93.0,
                      ),
                      Expanded(
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          child: GestureDetector(
                            child: CircleAvatar(
                              backgroundColor: Color(0xff17213e),
                              radius: 30.0,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            onTap: (){
                              adults++;
                              adultsResult();
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            height: 35.0,
                            width: 50.0,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: adultsController,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.location_on),
                                contentPadding: EdgeInsets.all(10.0),
                                // hintText: "1",
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff17213e),
                                    width: 2.0,
                                  ),
                                ),
                              ),
                                onChanged: (value) {
                                  setState(() {
                                    try{
                                      adults = int.parse(value);
                                      adultsResult();
                                    }on FormatException {
                                      print('Format error!');
                                    }
                                  });
                                }
                            )),
                      ),
                      Expanded(
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          child: GestureDetector(
                            child: CircleAvatar(
                              backgroundColor: Color(0xff17213e),
                              radius: 30.0,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            onTap: (){
                              if(adults >1){
                                adults--;
                              }
                              adultsResult();
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "No. of Children",
                        textScaleFactor: 1.4,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Container(
                        width: 72.5,
                      ),
                      Expanded(
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          child: GestureDetector(
                            child: CircleAvatar(
                              backgroundColor: Color(0xff17213e),
                              radius: 30.0,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            onTap: (){
                              children++;
                              childrenResult();
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            height: 35.0,
                            width: 50.0,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              controller: childrenController,
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.location_on),
                                contentPadding: EdgeInsets.all(10.0),
                                // hintText: "1",
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff17213e),
                                    width: 2.0,
                                  ),
                                ),
                              ),
                                onChanged: (value) {
                                  setState(() {
                                    try{
                                      children = int.parse(value);
                                      childrenResult();
                                    }on FormatException {
                                      print('Format error!');
                                    }
                                  });
                                }
                            )),
                      ),
                      Expanded(
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          child: GestureDetector(
                            child: CircleAvatar(
                              backgroundColor: Color(0xff17213e),
                              radius: 30.0,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            onTap: (){
                              if(children>0){
                                children--;
                            }
                              childrenResult();
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(top: 12.0, bottom: 10.0),
                child:
                    RadioListTile(
                      activeColor: Color(0xff17213e),
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'ONE WAY';
                          id = 1;
                        });
                      },
                      title: Text(
                        'ISOLATION HOTELS',
                        textScaleFactor: 1.25,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      textStyle: MaterialStateProperty.all(
                          TextStyle(color: Colors.white)),
                      elevation: MaterialStateProperty.all(5.0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      "Search Hotels",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void roomsResult(){
    setState(() {
      if(adults<=rooms){
        roomsController.text = rooms.toString();
        adultsController.text = rooms.toString();
      }else{
        roomsController.text = rooms.toString();

      }
    });

  }
  void adultsResult(){
    setState(() {
      adultsController.text = adults.toString();
    });

  }
  void childrenResult(){
    setState(() {
      childrenController.text = children.toString();
    });

  }
}

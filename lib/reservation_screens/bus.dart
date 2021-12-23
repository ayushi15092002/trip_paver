import 'package:flutter/material.dart';

import 'datepicker.dart';

class Bus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BusState();
  }
}

class _BusState extends State<Bus> {

  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book your Bus"),
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
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "FROM",
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      width: 175.0,
                    ),
                    Text(
                      "TO",
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
                padding: EdgeInsets.only(bottom: 5.0, left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 45.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_on),
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Source City",
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Icon(
                        Icons.compare_arrows,
                        color: Color(0xff17213e),
                        size: 45.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 45.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_on),
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Destination City",
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 15.0,
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
                      "DEPARTURE",
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
                      "RETURN",
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
                      width: 55.0,
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
                          onDateChanged: (selectedDate) {
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      focusColor: Color(0xff17213e),
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'ONE WAY';
                          id = 1;
                        });
                      },
                    ),
                    Text(
                      'ONE WAY',
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Radio(
                      value: 2,
                      groupValue: id,
                      focusColor: Color(0xff17213e),
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'ROUND TRIP';
                          id = 2;
                        });
                      },
                    ),
                    Text(
                      'ROUND TRIP',
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
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
                      "Search Bus",
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


}

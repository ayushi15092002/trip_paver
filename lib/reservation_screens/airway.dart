import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'datepicker.dart';

class Airway extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AirwayState();
  }
}

class _AirwayState extends State<Airway> {
  final _classes = ['All Classes', 'Business', 'Economy', 'Premium Economy'];
  var _currentItemSelected = '';

  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

  @override
  void initState() {
    super.initState();
    _currentItemSelected = _classes[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book your flight"),
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
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            prefixIcon: Icon(Icons.location_on),
                            // hintText: "Email",
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
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            prefixIcon: Icon(Icons.location_on),
                            // hintText: "Email",
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
                          // labelText: "",
                          hintText: "Select Date",
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
                          hintText: "Select Date",
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
                      "ADULTS",
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      width: 61.0,
                    ),
                    Text(
                      "CHILDREN",
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      width: 38.0,
                    ),
                    Text(
                      "INFANTS",
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
                        height: 40.0,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          // textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "12+ years",
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
                    Container(
                      width: 10.0,
                      height: 45.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.0,
                        child: TextFormField(
                          // textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "2-12 years",
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
                    Container(
                      width: 10.0,
                      height: 45.0,
                    ),
                    Expanded(
                     child: Container(
                        height: 40.0,
                        child: TextFormField(

                          // textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: ""
                                "0-2 years",
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
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                child: Container(
                  padding: EdgeInsets.only(
                    top: 1.0,
                    left: 17.0,
                    right: 10.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Color(0xff17213e),
                        style: BorderStyle.solid,
                        width: 0.75),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      iconEnabledColor: Color(0xff17213e),
                      style: TextStyle(
                        fontSize: 17.5,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                        color: Color(0xff17213e),
                      ),
                      elevation: 8,
                      // dropdownColor: Color(0xff17213e),
                      items: _classes.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            textScaleFactor: 1.0,
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w800,
                              fontSize: 17.5,
                            ),
                          ),
                        );
                      }).toList(),
                      value: _currentItemSelected,
                      onChanged: (newValueSelected) {
                        _onDropDownItemSelected(newValueSelected);
                      },
                    ),
                  ),
                ),
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
                      "Search your Flight",
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

  void _onDropDownItemSelected(var newValueSelected) {
    setState(() {
      _currentItemSelected = newValueSelected;
    });
  }
}

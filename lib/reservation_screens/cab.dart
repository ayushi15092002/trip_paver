import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'datepicker.dart';

class Cab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CabState();
  }
}

class _CabState extends State<Cab> {
  final _classes = [
    'Second Sitting Class',
    'Sleeper Class',
    'AC Chair Class',
    'First Class',
    'Ac 3-Tier Class',
    'AC 2-Tier Class',
    'AC First Class'
  ];
  var _currentItemSelected = '';

  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';
  TimeOfDay time = TimeOfDay.now();

  // Group Value for Radio Button.
  int id = 1;
  TextEditingController timeinput = TextEditingController();

  //text editing controller for text field

  @override
  void initState() {
    super.initState();
    _currentItemSelected = _classes[0];
    timeinput.text = ""; //set the initial value of text field
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book your Cab"),
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
                            hintText: "Pick Up Location",
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
                            hintText: "Drop Off Location",
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
                      "Pick Up Date",
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
                      "Pick Up Time",
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
                        child: TextFormField(

                          controller: timeinput,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Select Date",
                            suffixIcon: Icon(Icons.timer),
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
                          readOnly: true,
                          //set it true, so that user will not able to edit text
                          onTap: () async {
                            TimeOfDay pickedTime = await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                                builder: (BuildContext context, Widget child) {
                                  return Theme(
                                    data: ThemeData().copyWith(
                                      colorScheme: ColorScheme.light(
                                        primary: Color(0xff17213e),
                                        onPrimary: Color(0xff17213e),
                                        // surface: Color(0xff17213e),
                                        onSurface: Color(0xff17213e),
                                      ),
                                      // dialogBackgroundColor: Colors.white,
                                    ),
                                    child: child,
                                  );
                                }
                            );

                            if (pickedTime != null && pickedTime != time) {
                              print(
                                  pickedTime.format(context)); //output 10:51 PM
                              DateTime parsedTime = DateFormat.jm()
                                  .parse(pickedTime.format(context).toString());
                              //converting to DateTime so that we can further format on different pattern.
                              print(
                                  parsedTime); //output 1970-01-01 22:53:00.000
                              String formattedTime =
                                  DateFormat('HH:mm:ss').format(parsedTime);
                              print(formattedTime); //output 14:59:00
                              //DateFormat() is from intl package, you can format the time on any pattern you need.

                              setState(() {
                                time = pickedTime;

                                timeinput.text =
                                    formattedTime; //set the value of text field.
                              });
                            }
                            ;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'cant be empty';
                            }
                            return null;
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
                      'Add Return',
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
                      "Search Cab",
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

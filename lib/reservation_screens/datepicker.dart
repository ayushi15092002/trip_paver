import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePickerTextFormField extends StatefulWidget {

  final ValueChanged<DateTime> onDateChanged;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final DateFormat dateFormat;
  final FocusNode focusNode;
  String labelText;
  final String hintText;
  final Icon prefixIcon;
  final Icon suffixIcon;

  MyDatePickerTextFormField(
  {
    Key key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
    this.dateFormat,
    @required this.lastDate,
    @required this.firstDate,
    @required this.initialDate,
    @required this.onDateChanged,
  }
):assert(initialDate != null),
        assert(firstDate != null),
        assert(lastDate != null),
        assert(!initialDate.isBefore(firstDate),
        'initialDate must be on or after firstDate'),
        assert(!initialDate.isAfter(lastDate),
        'initialDate must be on or before lastDate'),
        assert(!firstDate.isAfter(lastDate),
        'lastDate must be on or after firstDate'),
        assert(onDateChanged != null, 'onDateChanged must not be null'),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyDatePickerTextFormFieldState();
  }
}
class _MyDatePickerTextFormFieldState extends State<MyDatePickerTextFormField>{

  TextEditingController _controllerDate;
  DateFormat _dateFormat;
  DateTime _selectedDate;

  @override
  void initState() {
    super.initState();

    if (widget.dateFormat != null) {
      _dateFormat = widget.dateFormat;
    } else {
      _dateFormat = DateFormat.MMMEd();
    }

    _selectedDate = widget.initialDate;

    _controllerDate = TextEditingController();
    _controllerDate.text = _dateFormat.format(DateTime.now());
        // _dateFormat.format(_selectedDate)
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      focusNode: widget.focusNode,
      controller: _controllerDate,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffixIcon: widget.suffixIcon,
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
        // prefixIcon: widget.prefixIcon,


      ),
      onTap: () {
        _selectDate(context);

      },
      readOnly: true,
    );

  }
  @override
  void dispose() {
    _controllerDate.dispose();
    super.dispose();
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: widget.firstDate,
      lastDate: widget.lastDate,
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: Color(0xff17213e),
                onPrimary: Colors.white,
                surface: Color(0xff17213e),
                onSurface: Colors.white,
              ),
              // dialogBackgroundColor: Colors.white,
            ),
            child: child,
          );
        });

    setState(() {
      _selectedDate = pickedDate;
      _controllerDate.text = "${_selectedDate.toLocal()}".split(' ')[0];
    });
    if (pickedDate != null && pickedDate != _selectedDate) {
      _selectedDate = pickedDate;
      print(_selectedDate.toString());
      _controllerDate.text = _dateFormat.format(_selectedDate);
      widget.onDateChanged(_selectedDate);
    }

    if (widget.focusNode != null) {
      widget.focusNode.nextFocus();
    }
  }

}
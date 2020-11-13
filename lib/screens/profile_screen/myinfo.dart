import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ecoShop/shared/styles.dart';

class Myinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyInfo(),
    );
  }
}

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  DateTime _dateTime;
  List gender = ["Male", "Female", "Other"];

  String select;

  String convertDateTimeDisplay(String date) {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('dd-MM-yyyy');
    final DateTime displayDate = displayFormater.parse(date);
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }

  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Colors.purple,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value;
            });
          },
        ),
        Text(title)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Profile",
          style: TextStyle(fontFamily: 'pacifico', color: Colors.black),
        ),
        elevation: 0.5,
      ),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(left: 35, right: 35, top: 15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(
              initialValue: 'Sachin Mohite',
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  labelText: "Name",
                  labelStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.1),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide: BorderSide(width: 0.9),
                  )),
              style: new TextStyle(
                fontFamily: 'poppins',
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              initialValue: '+91 9168091302',
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  labelText: "Phone",
                  labelStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.1),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide: BorderSide(width: 0.9),
                  )),
              style: new TextStyle(
                fontFamily: 'poppins',
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              initialValue: 'sample@mymail.com.com',
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.1),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide: BorderSide(width: 0.9),
                  )),
              style: new TextStyle(
                fontFamily: 'poppins',
              ),
            ),
            SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: InputDecorator(
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            labelText: "DOB",
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 0.1),
                            ),
                            focusedBorder: new OutlineInputBorder(
                              borderSide: BorderSide(width: 0.9),
                            )),
                        child: Text(
                          _dateTime == null
                              ? 'Date of Birth'
                              : convertDateTimeDisplay(_dateTime.toString()),
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppins',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDatePicker(
                              context: context,
                              initialDate: _dateTime == null
                                  ? DateTime.now()
                                  : _dateTime,
                              firstDate: DateTime(2001),
                              lastDate: DateTime(2021))
                          .then((date) {
                        setState(() {
                          _dateTime = date;
                        });
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 30,
                      child: Icon(
                        Icons.calendar_today,
                      ),
                    ),
                  ),
                ]),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                addRadioButton(0, 'Male'),
                addRadioButton(1, 'Female'),
                addRadioButton(
                  2,
                  'Others',
                ),
              ],
            ),
            Container(
              height: 33,
              width: 150,
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    gradient: gradientButtons,
                  ),
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'sfpro',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: InputDecorator(
                decoration: InputDecoration(
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    labelText: "Default Address",
                    labelStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w400),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 0.1),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderSide: BorderSide(width: 0.9),
                    )),
                child: Text(
                  'Sachin Mohite\n67, Mohite Heights, Sector 71-A\nRoha - 402109',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'poppins',
                    fontSize: 16,
                  ),
                  //textInputAction: TextInputAction.newline,
                  //keyboardType: TextInputType.multiline,
                  //maxLines: null,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 33,
                width: 150,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.grey[400])),
                  color: Colors.grey[400],
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: const Text(
                    'Saved Addresses',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                )),
          ]),
        ),
      ]),
    );
  }
}

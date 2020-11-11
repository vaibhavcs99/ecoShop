import 'package:flutter/material.dart';

class Myinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyInfo(),
    );
  }
}

class MyInfo extends StatefulWidget{
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
        Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.purple[400],
        alignment: Alignment.center,
        
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [ 
            Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/profile333.png"),
              ),
            ),
            ),
            Text(
              "9168091302",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppins',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "sample@mymail.com",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppins',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
            Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height:20,
              ),
              Text(
                "Name",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                //textAlign: TextAlign.center,
              ),
              SizedBox(
                height:20,
              ),
              Text(
                "Phone",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height:20,
              ),
              Text(
                "Email",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height:17,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height:20,
              ),
              Text(
                "Krishna Yadav",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                //textAlign: TextAlign.center,
              ),
              SizedBox(
                height:20,
              ),
              Text(
                "9168091302",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height:20,
              ),
              Text(
                "sample@mymail.com",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height:17,
              ),              
            ],
            ),
        ]
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical:10),
              width:100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.purple,
              ),
              child: Center(
                child: Text(
                  "Edit Info",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'sfpro',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ),
            ),
          ),
      SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13),
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.white,
                  border: Border.all(color: Colors.purple)
                ),
                child: Center(
                  child: Text(
                    "SAVED ADDRESSES",
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'sfpro',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ), 
      SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13),
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.white,
                  border: Border.all(color: Colors.purple)
                ),
                child: Center(
                  child: Text(
                    "CHANGE PASSWORD",
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'sfpro',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),            
     ]
      ),
    );    
  }
}
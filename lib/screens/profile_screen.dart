import 'package:flutter/material.dart';
import 'profile_screen/myinfo.dart';

class Profilescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          constraints: BoxConstraints.expand(
            height:
                Theme.of(context).textTheme.headline4.fontSize * 1.1 + 160.0,
          ),
          padding: const EdgeInsets.all(8.0),
          color: Colors.purple,
          alignment: Alignment.center,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/images/profile333.png"),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sachin Mohite",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
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
              ],
            ),
          ]),
        ),
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {
            openMyInfo();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 13),
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.white,
                border: Border.all(color: Colors.purple)),
            child: Center(
              child: Text(
                "MY INFO",
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
          height: 17,
        ),
        InkWell(
          onTap: () {
            //openMyInfo();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 13),
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.white,
                border: Border.all(color: Colors.purple)),
            child: Center(
              child: Text(
                "ORDERS",
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
          height: 17,
        ),
        InkWell(
          onTap: () {
            //openMyInfo();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 13),
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.white,
                border: Border.all(color: Colors.purple)),
            child: Center(
              child: Text(
                "SETTINGS",
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
          height: 17,
        ),
        InkWell(
          onTap: () {
            //openMyInfo();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 13),
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.white,
                border: Border.all(color: Colors.purple)),
            child: Center(
              child: Text(
                "INVITE A FRIEND",
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
          height: 17,
        ),
        InkWell(
          onTap: () {
            //openMyInfo();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 13),
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.white,
                border: Border.all(color: Colors.purple)),
            child: Center(
              child: Text(
                "LOGOUT",
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
      ]),
    );
  }

  void openMyInfo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Myinfo()));
  }
}

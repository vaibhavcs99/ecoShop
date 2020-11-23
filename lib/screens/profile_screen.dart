import 'package:ecoShop/shared/styles.dart';
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
          decoration: BoxDecoration(
            gradient: gradientButtons,
          ),
          height: 150,
          padding: const EdgeInsets.all(8.0),
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
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "9168091302",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "sample@mymail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ]),
        ),
        InkWell(
            onTap: () {
              openMyInfo();
            },
            child: ListTile(
                title: Text("Profile",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.face,
                ))),
        Divider(
          height: 5,
        ),
        InkWell(
            onTap: () {
              openMyInfo();
            },
            child: ListTile(
                title: Text("Orders",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.shopping_bag,
                ))),
        Divider(
          height: 5,
        ),
        InkWell(
            onTap: () {
              openMyInfo();
            },
            child: ListTile(
                title: Text("Settings",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.settings,
                ))),
        Divider(
          height: 5,
        ),
        InkWell(
            onTap: () {
              openMyInfo();
            },
            child: ListTile(
                title: Text("Invite a Friend",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.person,
                ))),
        Divider(
          thickness: 5,
        ),
        InkWell(
            onTap: () {
              openMyInfo();
            },
            child: ListTile(
                title: Text("Logout",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.logout,
                ))),
        Divider(
          thickness: 5,
        )
      ]),
    );
  }

  void openMyInfo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyInfo()));
  }
}

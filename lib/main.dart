import 'package:flutter/material.dart';
import 'package:homee1/filter.dart';
import 'package:homee1/homepage.dart';
import 'package:homee1/favorite.dart';
import 'package:homee1/langcurrency.dart';
import 'package:homee1/project.dart';
import 'package:homee1/add.dart';
import 'package:homee1/profile.dart';
import 'package:homee1/save.dart';
import 'dart:async';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          //  primarySwatch: Colors.blue,
          ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF2962FF),
                Color(0xFF0D47A1),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "images/iconn2.png",
                  height: 300.0,
                  width: 300.0,
                ),
                /* Text(
                  " ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),*/
              ],
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class Home1 extends StatefulWidget {
  Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int curTab = 0;

  final List<Widget> screen = [
    Fav1(),
    Project1(),
    Homepage1(),
    Add1(),
    Account1(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Homepage1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = Homepage1();
          });
        },
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[100],
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*////////////////////////////////1   */
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Fav1();
                        curTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite,
                            color:
                                curTab == 1 ? Colors.blue : Colors.blue[300]),
                        Text(
                          "Favorites",
                          style: TextStyle(
                              color:
                                  curTab == 1 ? Colors.blue : Colors.blue[300]),
                        )
                      ],
                    ),
                  ),
                  /*////////////////////////////////2   */

                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Project1();
                        curTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.holiday_village_outlined,
                            color:
                                curTab == 2 ? Colors.blue : Colors.blue[300]),
                        Text(
                          "project",
                          style: TextStyle(
                              color:
                                  curTab == 2 ? Colors.blue : Colors.blue[300]),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*////////////////////////////////3   */
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      /* setState(() {
                        currentScreen = Add1();
                        curTab = 3;
                      });*/

                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Add1();
                      }));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_business_sharp,
                            color:
                                curTab == 3 ? Colors.blue : Colors.blue[300]),
                        Text(
                          "add",
                          style: TextStyle(
                              color:
                                  curTab == 3 ? Colors.blue : Colors.blue[300]),
                        )
                      ],
                    ),
                  ),
                  /*////////////////////////////////4   */

                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      /* setState(() {
                        // currentScreen = Account1();
                        curTab = 4;
                      });*/
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Account1();
                      }));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle,
                            color:
                                curTab == 4 ? Colors.blue : Colors.blue[300]),
                        Text(
                          "Account",
                          style: TextStyle(
                              color:
                                  curTab == 4 ? Colors.blue : Colors.blue[300]),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

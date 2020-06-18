
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dog.dart';
import 'cat.dart';
import 'bird.dart';
import 'fish.dart';
import 'pig.dart';
import 'about.dart';
import 'contacts.dart';
import 'rabbit.dart';
import 'goat.dart';
import 'mouse.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      routes: <String, WidgetBuilder>{
        '/dog': (BuildContext context) => dog(),
        '/cat': (BuildContext context) => cat(),
        '/bird': (BuildContext context) => bird(),
        '/fish': (BuildContext context) => fish(),
        '/pig': (BuildContext context) => pig(),
        '/contacts' : (BuildContext context) => contacts(),
        '/about':(BuildContext context) => about(),
        '/rabbit':(BuildContext context) => rabbit(),
        '/goat':(BuildContext context) =>goat(),
        '/mouse':(BuildContext context) => mouse(),
      },
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
    ),
  );
}
_launchURL() async {
  const url = 'https://www.google.com/maps/search/?api=1&query=animals+hospital+nearby';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw ' Could not launch $url';
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      backgroundColor: Colors.white,
      image: Image.asset('images/load.gif'),
      loaderColor: Colors.black,
      photoSize: 200.0,
      navigateAfterSeconds: MainScreen(),
    );
  }
}
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[

            Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: Text('Animal Aid',style: TextStyle(color: Colors.black),),
                elevation: 0.0,
                backgroundColor: Colors.green.withOpacity(0.5),
              ),
              drawer: Drawer(
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Image(
                            image: AssetImage("images/1.jpg"),
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 180.0, left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Extras", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26.0,
                                    color: Colors.white
                                ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.contacts),
                            title: Text('Useful Websites'),
                            onTap: () {
                              Navigator.pushNamed(context, '/contacts');
                            },
                          ),
                        ],
                      ),
                      ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text('About Us'),
                            onTap: () {
                              Navigator.pushNamed(context, '/about');
                            },
                          ),
                        ],
                      ),
                    ],
                  )
              ),
              body: GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(7.0),
                    child: Card(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap:() {
                          Navigator.pushNamed(context, '/dog');
                        },

                        child: Stack(
                          fit:StackFit.expand,
                          children: <Widget>[
                            Image.asset('images/3.jpg',fit: BoxFit.scaleDown,),
                            Positioned(
                              bottom: 0,
                              right: 8,
                              child:ClipRect(
                                child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                                  child:Text('First Aid For dogs',style: TextStyle(fontSize: 20.0,color: Colors.black,fontFamily: 'Itim',),),),),)

                          ],
                        ),

                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12.0),
                    child: Card(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap:() {
                          Navigator.pushNamed(context, '/bird');
                        },

                          child: Stack(
                            fit:StackFit.expand,
                            children: <Widget>[
                              Image.asset('images/4.jpg',fit: BoxFit.scaleDown,),
                                Positioned(
                                  bottom: 0,
                                  right: 2,
                                child:ClipRect(
                                  child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                                    child:Text('First Aid For birds',style: TextStyle(fontSize: 20.0,color: Colors.black,fontFamily: 'Itim',),),),),)
                            ],
                          ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12.0),
                    child: Card(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap:() {
                          Navigator.pushNamed(context, '/cat');
                        },

                        child: Stack(
                          fit:StackFit.expand,
                          children: <Widget>[
                            Image.asset('images/2.jpg',fit: BoxFit.scaleDown,),
                            Positioned(
                              bottom: 0,
                              right: 2,
                              child:ClipRect(
                                child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                                  child:Text('First Aid For cats',style: TextStyle(fontSize: 20.0,color: Colors.black,fontFamily: 'Itim',),),),),)

                          ],
                        ),

                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12.0),
                    child: Card(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap:() {
                          Navigator.pushNamed(context, '/pig');
                        },

                        child: Stack(
                          fit:StackFit.expand,
                          children: <Widget>[
                            Image.asset('images/7.jpg',fit: BoxFit.scaleDown,),
                            Positioned(
                              bottom: 0,
                              right: 2,
                              child:ClipRect(
                                child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                                  child:Text('First Aid For pigs',style: TextStyle(fontSize: 20.0,color: Colors.black,fontFamily: 'Itim',),),),),)

                          ],
                        ),

                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12.0),
                    child: Card(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap:() {
                          Navigator.pushNamed(context, '/fish');
                        },

                        child: Stack(
                          fit:StackFit.expand,
                          children: <Widget>[
                            Image.asset('images/5.jpg',fit: BoxFit.scaleDown,),
                            Positioned(
                              bottom: 0,
                              right: 2,
                              child:ClipRect(
                                child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                                  child:Text('First Aid For fish',style: TextStyle(fontSize: 20.0,color: Colors.black,fontFamily: 'Itim',),),),),)

                          ],
                        ),

                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12.0),
                    child: Card(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap:() {
                          Navigator.pushNamed(context, '/rabbit');
                        },

                        child: Stack(
                          fit:StackFit.expand,
                          children: <Widget>[
                            Image.asset('images/8.jpg',fit: BoxFit.scaleDown,),
                            Positioned(
                              bottom: 0,
                              right: 2,
                              child:ClipRect(
                                child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                                  child:Text('First Aid For rabbits',style: TextStyle(fontSize: 20.0,color: Colors.black,fontFamily: 'Itim',),),),),)

                          ],
                        ),

                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12.0),
                    child: Card(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap:() {
                          Navigator.pushNamed(context, '/goat');
                        },

                        child: Stack(
                          fit:StackFit.expand,
                          children: <Widget>[
                            Image.asset('images/9.jpg',fit: BoxFit.scaleDown,),
                            Positioned(
                              bottom: 0,
                              right: 2,
                              child:ClipRect(
                                child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                                  child:Text('First Aid For goats',style: TextStyle(fontSize: 20.0,color: Colors.black,fontFamily: 'Itim',),),),),)

                          ],
                        ),

                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12.0),
                    child: Card(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap:() {
                          Navigator.pushNamed(context, '/mouse');
                        },

                        child: Stack(
                          fit:StackFit.expand,
                          children: <Widget>[
                            Image.asset('images/10.jpg',fit: BoxFit.scaleDown,),
                            Positioned(
                              bottom: 0,
                              right: 2,
                              child:ClipRect(
                                child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                                  child:Text('First Aid For mouse',style: TextStyle(fontSize: 20.0,color: Colors.black,fontFamily: 'Itim',),),),),)

                          ],
                        ),

                      ),
                    ),
                  ),


                ],
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.green,
                child: Icon(Icons.map),
                onPressed: _launchURL,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
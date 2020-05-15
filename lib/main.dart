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
      },
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        brightness: Brightness.dark,
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Animals Aid',textDirection: TextDirection.ltr,),
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
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/6.jpg'),
            fit: BoxFit.cover,

          ),
        ),
        child:SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(24.0),
                child: Card(
                  color: Colors.transparent,
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.star_half), onPressed: () {}),
                      Expanded(child:
                      FlatButton(onPressed: () {
                        Navigator.pushNamed(context, '/dog');
                      },
                        child: Text('Guide to help dogs',textDirection: TextDirection.ltr,textAlign: TextAlign.right,style: TextStyle(fontSize: 25.0,fontStyle: FontStyle.italic),
                        ),
                      ),
                      ),
                      IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {
                        Navigator.pushNamed(context, '/dog');
                      },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(24.0),
                child: Card(
                  color: Colors.transparent,
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.star_half), onPressed: () {}),
                      Expanded(child:
                      FlatButton(onPressed: () {
                        Navigator.pushNamed(context, '/cat');
                      },
                        child: Text('Guide to help cats',textDirection: TextDirection.ltr,textAlign: TextAlign.right,style: TextStyle(fontSize: 25.0,fontStyle: FontStyle.italic),
                        ),
                      ),
                      ),
                      IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {
                        Navigator.pushNamed(context, '/cat');
                      },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(24.0),
                child: Card(
                  color: Colors.transparent,
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.star_half), onPressed: () {}),
                      Expanded(child:
                      FlatButton(onPressed: () {
                        Navigator.pushNamed(context, '/bird');
                      },
                        child: Text('Guide to help birds',textDirection: TextDirection.ltr,textAlign: TextAlign.right,style: TextStyle(fontSize: 25.0,fontStyle: FontStyle.italic),
                        ),
                      ),
                      ),
                      IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {
                        Navigator.pushNamed(context, '/bird');
                      },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(24.0),
                child: Card(
                  color: Colors.transparent,
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.star_half), onPressed: () {}),
                      Expanded(child:
                      FlatButton(onPressed: () {
                        Navigator.pushNamed(context, '/fish');
                      },
                        child: Text('Guide to help fish',textDirection: TextDirection.ltr,textAlign: TextAlign.right,style: TextStyle(fontSize: 25.0,fontStyle: FontStyle.italic),
                        ),
                      ),
                      ),
                      IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {
                        Navigator.pushNamed(context, '/fish');            },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(24.0),
                child: Card(
                  color: Colors.transparent,
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.star_half), onPressed: () {}),
                      Expanded(child:
                      FlatButton(onPressed: () {
                        Navigator.pushNamed(context, '/pig');
                      },
                        child: Text('Guide to help pigs',textDirection: TextDirection.ltr,textAlign: TextAlign.right,style: TextStyle(fontSize: 25.0,fontStyle: FontStyle.italic),
                        ),
                      ),
                      ),
                      IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {
                        Navigator.pushNamed(context, '/pig');
                      },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.map),
        onPressed: _launchURL,
      ),
    );
  }
}
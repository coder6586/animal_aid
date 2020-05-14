import 'package:flutter/material.dart';
class bird extends StatefulWidget {
  @override
  _birdState createState() => _birdState();
}

class _birdState extends State<bird> {
  ScrollController _ScrollViewController;

  @override
  void initState() {
    super.initState();
    _ScrollViewController = ScrollController();
  }

  @override
  void dispose() {
    _ScrollViewController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green,
          brightness: Brightness.light
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          controller: _ScrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title:Text('Save Birds'),
                pinned: true,
                floating: true,
                forceElevated: boxIsScrolled,
              )
            ];
          },
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/2.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.black87,
              gradient: LinearGradient(colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                  begin: Alignment.centerRight,
                  end: Alignment(-1.0, -1.0)
              ),
            ),
            child:SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(12.0),
                    child: Text('How to take care of an injured bird',textDirection: TextDirection.ltr,textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black54,fontStyle: FontStyle.italic),),
                  ),
                  Padding(padding: EdgeInsets.all(24.0),
                    child: Card(
                      color: Colors.transparent,
                      child: Column(
                        children: <Widget>[
                          Text('-  First, get a shoebox or small container & fill it with some leaves and papertowel, napkins or thick toilet paper. ',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('-  The most important thing to do now, is to get the bird warmed up.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('-  Call a local wildlife rehabilitation center.here are locations in every state - so you will need to do a search online or call your local humane society or the Department of Natural Resourcess ',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('-  If the family is gone and you need to feed the baby yourself, then get an eye dropper or medicine dropper.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('-  Lastly, try not to become too attached to the little injured bird.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
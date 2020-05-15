import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class bird extends StatefulWidget {
  @override
  _birdState createState() => _birdState();
}

class _birdState extends State<bird> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('images/4.jpg',fit: BoxFit.cover
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                title: Text('Help Birds'),
                elevation: 0.0,
                backgroundColor: Colors.blueGrey.withOpacity(0.1),
              ),

              body: Container(

                child:SingleChildScrollView(
                  child: Center(

                    child: Padding(padding: EdgeInsets.all(12.0),
                      child: Card(
                        color: Colors.transparent.withOpacity(0.1),
                        child:ClipRect(
                          child:BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 8.0,sigmaY: 8.0),

                            child: Column(
                              children: <Widget>[
                                Text('-  First, get a shoebox or small container & fill it with some leaves and papertowel, napkins or thick toilet paper. ',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  The most important thing to do now, is to get the bird warmed up.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color:Colors.white),),
                                Text('-  Call a local wildlife rehabilitation center.here are locations in every state - so you will need to do a search online or call your local humane society or the Department of Natural Resourcess ',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  If the family is gone and you need to feed the baby yourself, then get an eye dropper or medicine dropper.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  Lastly, try not to become too attached to the little injured bird.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

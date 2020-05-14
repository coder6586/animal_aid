import 'package:flutter/material.dart';
class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text('About us')
        ),
        body: Center(
          child:Container(
            decoration: BoxDecoration(


              color: Colors.white,

            ),

            child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 15.0),
                      child: Text('Animals Aid',textDirection: TextDirection.ltr,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color: Colors.orange,fontStyle: FontStyle.italic),),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15.0),
                      child: Text('Version:: 1.0',textDirection: TextDirection.ltr,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0,color: Colors.purple),),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15.0),
                      child: Image.asset('images/pro.jpg',),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15.0),
                      child: Text('Copyright © 2020 Batlab',textDirection: TextDirection.ltr,textAlign: TextAlign.center),
                    ),
                    Padding(padding: EdgeInsets.only(left:0.0,),
                      child: Text('All Rights Reserved',textDirection: TextDirection.ltr,textAlign: TextAlign.center,),)
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
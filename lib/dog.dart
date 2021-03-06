import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class dog extends StatefulWidget {
  @override
  _dogState createState() => _dogState();
}

class _dogState extends State<dog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('images/3.jpg',fit: BoxFit.cover
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                title: Text('Help Dogs'),
                elevation: 0.0,
                backgroundColor: Colors.blueGrey.withOpacity(0.3),
              ),

              body: Container(

                child:SingleChildScrollView(
                child: Center(

                      child: Padding(padding: EdgeInsets.all(12.0),
                          child: Card(
                            color: Colors.transparent.withOpacity(0.1),
                            child:ClipRect(
                              child:BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 9.0,sigmaY: 9.0),

                            child: Column(
                              children: <Widget>[
                                Text('-  Take a deep breath in and exhale. This helps you get into the moment and become focused.',textDirection: TextDirection.ltr,style: TextStyle(fontFamily: 'IndieFlower',fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  Carefully survey your surroundings to ensure you are not putting yourself into harm’s way. Look around to make sure there are no aggressive dogs approaching, traffic, or hazards such as downed power lines between you and the injured dog.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  Do not rush up to the dog. Instead, first try tossing treats away from you to entice him to come closer to the food and then to you.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  Approach the dog at an angle with your body to the side without making direct eye contact. This is less threatening than facing a dog with your shoulders square toward his.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  Speak in a calm, confident tone. Do not yell or shout as that will escalate his level of panic and the feeling that he needs to protect himself. Say the dog’s name if you know it. Wait for his growling or barking to lessen in volume before approaching.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  Avoid direct eye contact – an action considered threatening or challenging to dogs. Never bend down and come face-to-face with a fearful dog.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  Offer bite-size treats as a way to change his mood from fearful to food-motivated.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  Use a portable but sturdy physical barrier such as a baby gate or sofa cushion as you approach the dog to protect yourself.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  To safely restrain an injured dog so you can transport him to the nearest veterinary clinic for treatment, slide a slip lead over his head. If you don’t have one, you can make a loop with a standard 6-foot nylon leash to accomplish the same purpose',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  For a small dog, use a thick bath towel to wrap him like a burrito to control his head movement and prevent escape. You can also roll the towel and wrap it under the dog’s lower jaw and hold on to the towel at the back of the dog’s neck to prevent his movement and keep his lower jaw from opening to attempt to bite you.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
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

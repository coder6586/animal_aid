import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class fish extends StatefulWidget {
  @override
  _fishState createState() => _fishState();
}

class _fishState extends State<fish> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('images/5.jpg',fit: BoxFit.cover
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                title: Text('Help Fish'),
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
                                Text('FISH FINS-  Usually, these small infractions can heal themselves with no or little aid with a water conditioner additive like Stress Coat or SeaChem Prime that promotes a healthy slime coat on the fish. The slime coating acts somewhat like a bandaid, protecting them from infections. Separate the injured fish from the aggressor with a tank divider or remove it to a second tank to allow it a chance to heal without further injury.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('EYES INJURY-  Eye damage typically appears as a cloudy spot on the cornea. Remove the fish to a separate aquarium during the recovery phase and use a water-conditioning agent to promote the fish healing slime layer.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('CURING FISH FIN ROT-  First, isolate the fish with fin rot. Use a natural, antibacterial product such as Melafix that kills the bacteria. Potent antibiotics such as tetracycline or oxytetracycline are alternatives; however, strong medications can stress your fish since they take it in through their gills and end up ingesting large quantities. Thoroughly clean your aquarium, boiling decorations to kill the bacteria. Make sure that you have adequate filtration for the fish and can maintain the tank at a proper pH and temperature to prevent bacterial growth. Also, avoid overfeeding.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  Keeping a few shrimp in with your fish can also help the healing process, according to a 2018 study by James Cook University. Scientists researching how shrimp can remove parasites from ornamental or farmed fish discovered that fish injuries appeared less red after being cleaned by the shrimp. The shrimp remove bacteria and dead tissue, but also lower the stress levels of the fish, helping it to heal.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
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

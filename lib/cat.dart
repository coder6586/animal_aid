import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class cat extends StatefulWidget {
  @override
  _catState createState() => _catState();
}

class _catState extends State<cat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('images/2.jpg',fit: BoxFit.cover
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                title: Text('Help Cats'),
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
                                Text('-  Even the friendliest cat can scratch or bite if they are in pain or frightened. Wrap your cat in a towel to keep them still while you’re applying first aid. It helps to do this part with two people, though with care, one can manage alone if need be. Wrapping your cat in a towel is a technique many veterinarians use. If the towel will interfere with access to the wound, another option is to hold the cat by the scruff of their neck. Again, an extra pair of hands can make this much easier.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  Make sure it is not deeper or more serious than you might have assumed. If the wound is minor, you can move on to cleaning it yourself.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  Fill a syringe with a mixture of water and antiseptic solution. Rinse the wound site several times with this mixture. Antibacterial soap can work, as can the antiseptic soap you’d buy in any regular pharmacy’s first aid section.Minor wounds often heal best when able to breathe, so you probably want to skip a bandage. Whats more, some veterinarians note that pet parents sometimes wrap bandages too tightly, causing circulation problems. If you think your pet needs a bandage, its best to let your vet do it.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  Keep your cat inside and watch the wound for signs of healing. If the site begins to look red or inflamed, or if pus develops in or around the wound, contact your vet immediately.If the wound is on your cats paw of foot, swap out the kitty litter for newspaper, to avoid litter particles from irritating the wound or causing an infection.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('NOTE:  Any wound that involves punctures or more than minor blood loss should be treated by a vet as soon as possible. Puncture wounds, especially those caused by a bite from another animal, can easily become infected, as can deep cuts. These wounds can seal over, trapping dirt and bacteria inside. You WIll also want to make sure your pets rabies vaccine is up to date if the wound is a bite from another animal.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
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

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class goat extends StatefulWidget {
  @override
  _goatState createState() => _goatState();
}

class _goatState extends State<goat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('images/9.jpg',fit: BoxFit.cover
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                title: Text('Help Goats'),
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
                                Text('-  If your goat appears not quite right but not obviously sick, you need to measure his vital signs. That\'s the first thing your vet will ask when you call. Normal goat temperature ranges between 101.5 degrees and 105 degrees Fahrenheit. At rest, normal respiration is between 12 and 20 breaths each minute. A goat\'s normal pulse at rest ranges between 70 and 80 beats per minute. Even slight exertion causes respiration and pulse rate rising. ',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-   If your goat experiences a small cut, wash out the wound with antibacterial soap and apply antibiotic ointment. Deeper cuts require suturing -- call the vet. Gently bandage the wound until the vet arrives. If blood spurts, that\'s a red-alert vet emergency; an artery could be cut. If your goat is attacked by canines, be they domestic dogs or coyotes, get the attackers away by any means possible, move the goat or goats to a safe location, and call the vet. Cornell University advises cutting the hair around the wounds and washing them out with antibacterial scrub. Surviving goats might develop and blow out abscesses in the coming weeks, so you\'ll need to flush out the cavities until they heal. Your vet will prescribe antibiotics.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color:Colors.white),),
                                Text('-  If you trim your goat\'s feet yourself, or even if a farrier does it, a hoof could get cut too short and bleed. You might need to bandage the foot for a few days. If your goat experiences unexplained lameness, examine him carefully. If he has apparently sprained a muscle, give him aspirin for a day or two. A 60-pound goat requires about 5 grams of aspirin, so adjust the amount for larger or smaller caprines. A fracture requires immediate veterinary attention. ',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  Find out which plants in your goat\'s habitat are poisonous and remove them. Symptoms of poisoning include staggering, frothing at the mouth, convulsions, bleating in pain, difficulty breathing and paralysis. Call your vet. If she suggests inducing vomiting, place 2 tablespoons of salt at the back of your goat\'s tongue. After the goat vomits, give him water, mineral oil and activated charcoal according to your vet\'s directions.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
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

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class mouse extends StatefulWidget {
  @override
  _mouseState createState() => _mouseState();
}

class _mouseState extends State<mouse> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('images/10.jpg',fit: BoxFit.cover
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                title: Text('Help mouse'),
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
                                Text('-  Infections can spread rapidly due to a mouse’s small size, so it’s better to be safe than sorry anytime you see a cut or wound on your mouse. Always call the vet right away if you suspect potential internal injuries (e.g., the mouse fell from a distance or was stepped on) or broken bones',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  If you call your vet and they give you the “all clear” on a minor flesh wound, your main job will likely be to observe it and keep it relatively clean. If instructed to do so, rinse the wound with clean water (from a dropper or bulb syringe) and wipe it with a cotton swab or cotton ball. Apply an antibacterial spray or ointment if directed by your vet. To reduce the risk of infection, you may be instructed to clean the mouse’s enclosure more carefully and frequently (e.g., daily instead of weekly). Or, you may even be advised to put the mouse in a separate, extra clean cage, away from its typical companions.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color:Colors.white),),
                                Text('-  Call a local wildlife rehabilitation center.here are locations in every state - so you will need to do a search online or call your local humane society or the Department of Natural Resourcess ',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  Injuries to the legs, nails, tail, and face tend to bleed more heavily than those to the body. Once you identify the source of a bleeding wound, hold a clean cloth to the wound for 2 minutes. If it’s still bleeding, either reapply pressure for 2 more minutes or apply flour or cornstarch to the bleeding wound. For a wound that is bleeding profusely, try to stanch this bleeding before you call your vet.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  Whether you end up visiting the vet or just calling them for guidance, you may be advised to give your mouse pain medication for an injury. In many cases, vets will recommend either ibuprofen or acetaminophen (Tylenol) for pain management. Follow their guidance on dosing and administering the medication',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white),),
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

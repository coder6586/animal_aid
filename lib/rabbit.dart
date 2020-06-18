import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class rabbit extends StatefulWidget {
  @override
  _rabbitState createState() => _rabbitState();
}

class _rabbitState extends State<rabbit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('images/8.jpg',fit: BoxFit.cover
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                title: Text('Help Rabbits'),
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
                                Text('-   If you see bleeding from a wound and it appears to be pulsing or gushing, this means that an artery may have been damaged. If the blood is seeping, this usually implies bleeding from veins. Using a sterile gauze pad (or if that is not readily available), a clean towel or cloth, apply firm, but gentle, pressure directly over the wound. If a pad becomes saturated with blood, do not remove it, but apply another one over it and continue applying pressure until you get to the veterinary clinic. Make sure you assess the gum color by lifting up the lip and looking at the tissue above the teeth. You can evaluate the capillary refill time by gently pushing on the gum tissue and watching to see how quickly the color returns to the tissue (in a normal rabbit, this should take less than 1.5 seconds). ',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  Shock can be a life-threatening situation -  Shock may be the result of traumatic injury, blood loss, from an infection or from a medication (called anaphylactic shock). An animal in shock may show pale gums, cool extremities (including ears), glassy or closed eyes, weak pulse, increased rate of breathing and increased heart rate. If you feel that your rabbit may be in shock, wrap it in a towel, provide supplemental heat (if possible) and place the rabbit in a carrier for immediate transport to a vet clinic.',textDirection: TextDirection.ltr,style: TextStyle(fontFamily: 'IndieFlower',fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                                Text('-  If your rabbit is in no immediate danger, it may be best to perform a brief exam so that you can try to pinpoint any damage or injuries. It is vital to use all of your senses to examine your rabbit. Start at the nose, and look at your bunny\'s nose and whiskers. Always be observant for symmetry, meaning that both sides of your rabbit should look and feel the same. Notice any discharge or swelling. Next, look at the eyes. Using a penlight, shine the light into each eye individually, looking to see if the pupil constricts when exposed to the light. Examine the sclera, the white parts of the eyes, and the iris, the pigmented portion surrounding the pupil. Note any redness, swelling or discharge. If the sclera appears yellowish, this could signify serious liver problems. There is a third eyelid that traverses across the eye, originating at the inside corner of the eye. Lift up the lips and examine the gums and teeth. Make sure the gums are a healthy pink and that the color returns immediately if you push on the tissue with your fingertip. Examine the teeth the best that you can without being bitten or injuring your pet. Notice any swellings along the jaw line and sniff the breath for any foul odor. Run your hands over the head and neck, feeling for any lumps, bumps or swellings. Abscesses may feel hot, and may be swollen or red, and you may feel pus under the skin. If your rabbit is overweight, you may feel excess subcutaneous fat. The dewlap may develop a condition knows as "slobbers" which is a chin dermatitis. Any hair loss, crusts, scabs or parasites should be noted, if discovered. Next, feel the ears for any thickening, and use the penlight to look down the ear canals without pulling on the base of the ears. Ear mites will cause the ears to look inflamed and crusty with lots of foul-smelling debris. Now, using both hands, run your hands down each forelimb from the shoulder to the toes, flexing and extending each joint. Look at each toe and claw. Feel both feet to make sure they feel the same temperature. If any joint or limb has any obvious redness, heat or swelling, do not attempt to manipulate the area, as it is possible to cause more damage by excessive movement. Watch your rabbit breathe and listen for any abnormal sounds. Gently run your hands over the rib cage, along the spine and then around to the belly, gently feeling for any abnormalities. Palpate the mammary glands for any irregular firmness, swelling or redness. The skin may be discolored over the abnormal gland. Next, examine the hind legs as you did the forelimbs. Lastly, examine the tail and the anus, the area around the urogenital opening and skin. Abnormalities in this area might include white, crusting lesions from rabbit syphilis, or this disease might cause redness, swelling, ulcers or scabs. With unspayed does, you might see evidence of vaginal discharge. With non-neutered bucks, you might see enlarged testicles or abscesses on the scrotum. If the rabbit is suffering from high blood calcium, you may see some urine scalding around the perineum and you might feel some gritty \"sand\" in the area, as well.If your examination has uncovered any abnormalities or injuries, and there is no sign of overt bleeding, the safest thing for you to do is to gently wrap your rabbit in a clean towel, place it in your carrier, call the vet to notify them that you are bringing in your pet, and then head off to the clinic.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  Rabbits are prone to back injuries, especially if held incorrectly by a novice. Should a rabbit kick out, if the back and hind legs are not properly supported, this can result in dangerous injuries, such as dislocation or fracture. Rabbits have a very delicate skeleton when compared with other species, but they also have very strong, well-developed muscles for running, which is why kicking or struggling may result in fractures to long bones or the spine. If you notice that a limb is dangling or is being held at an incorrect angle, or if a leg or legs cannot more normally, this is a true medical emergency. Gently wrap the patient in a clean towel, place in a carrier and transport it to the vet immediately after calling to alert the office',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  If your rabbit has eaten something toxic or poisonous, call your vet to notify the office and then bring your pet immediately to the clinic. Be sure that you bring a sample of anything that it might have ingested, or if possible, bring in the container with the label.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  Hyperthermia is very dangerous in the rabbit and can be life-threatening. Predisposing factors include high humidity (over 70%), thick hair coat, obesity, older age, pregnancy, direct sunlight, poor ventilation, insufficient drinking water or only warm/hot water to drink, crowding, recent transportation, confinement in a hot vehicle, delays in transportation, psychologic stress and anxiety. Signs of heat stress include redness (technically called hyperemia) of the blood vessels of the extremities, rapid respirations, elevated body temperature (above 105 degrees F), blue mucus membranes (cyanosis), prostration or death. Blood tinged fluids may be seen in the nose and mouth. Food intake drops greatly, water consumption may initially increase, but then the water consumption drops with increasing ambient temperature. Hypersalivation may occur. At high temperatures (90 degrees F or higher) for days or weeks, males may become sterile. If heat stroke is suspected, spray the rabbit with cool water and transport immediately to the vet.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
                                Text('-  If a rabbit stops passing fecal pellets for eight hours or more, this is an emergency. Diarrhea is also dangerous and requires veterinary attention. Gas may cause bloating, and gas pains can significantly stress a rabbit. If you hear loud gurgling sounds, this can also signify other gastrointestinal problems. If you have a stethoscope, and you listen to the abdomen, you should hear intermittent gurgling sounds (called borborygmus). If the belly is silent, this can mean ileus, meaning that the guts have stopped the normal movements. This is serious and potentially life-threatening, so call your vet immediately if you notice any of these signs. Your vet may recommend administering simethicone orally to help with gas problems until the rabbit can be seen.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold,color: Colors.white)),
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

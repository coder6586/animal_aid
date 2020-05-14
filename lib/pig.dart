import 'package:flutter/material.dart';
class pig extends StatefulWidget {
  @override
  _pigState createState() => _pigState();
}

class _pigState extends State<pig> {
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
        primaryColor: Colors.pink,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          controller: _ScrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title:Text('Save pigs'),
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
                    child: Text('Treating skin condition in pigs',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black54,fontStyle: FontStyle.italic),),
                  ),
                  Padding(padding: EdgeInsets.all(24.0),
                    child: Card(
                      color: Colors.transparent,
                      child: Column(
                        children: <Widget>[
                          Text('WOUNDS-  These often result from pigs biting each other or from piglets injuring their mother’s teats when suckling. Sharp objects and biting flies can also cause wounds. Such injuries can become infected with bacteria and produce abscesses – painful swollen areas filled with pus.To treat, wash the wounds with water and disinfectant and use an insect spray to keep the flies away. Cutting the eye teeth of piglets is the only sure way to prevent teat injuries (ask your local vet to help with this).',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('FLY STRIKE-  This condition can kill your pigs if not treated in time. It occurs when flies lay eggs in wounds or in skin soiled by urine or droppings. The eggs hatch into maggots, which feed on the wounds and cause further damage. To treat, remove the maggots and clean the wounds using an insecticidal cream or powder. You may also need to inject the pig with antibiotics..To prevent fly strike, keep your animals and their surroundings as clean as possible. Treat wounds promptly and thoroughly, and control flies with fly traps, fly papers and sprays. Be careful, though, not to spray the pigs’ food.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('MANGE-  Mange is caused by mites (small parasites) that live in the skin and often occurs in small pig herds. The skin becomes itchy and the pig rubs itself against pen walls and other objects. Other symptoms are bare patches, heavy crusts, and lines on the body that look like ribs..Initially, mange affects the ears, but it can spread to other parts of the body. To treat mange, use spray-on or pour-on medication, or an injection that also treats worms. If you have only a few pigs, club together with your neighbours to buy the medicine and treat everyone’s pigs at the same time. Sows infect their piglets..If you treat the adult pigs regularly, it’s unnecessary to treat the piglets. Boars are often more severely infected than sows, and need careful attention',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('LICE-  Pig lice are large and easy to see. Look for them around the head and neck, and between the legs. They cause skin irritation and scratching, and can be treated with insecticidal sprays.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('GREASY PIG DISEASE-  This affects young piglets, and can result in death. Yellowish crusts form on the snout, around the mouth and behind the ears, making the animal appear “greasy”. The crusts can spread all over the body. The disease is caused by bacteria and can be treated with antibiotic injections.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
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
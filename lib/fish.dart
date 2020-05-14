import 'package:flutter/material.dart';
class fish extends StatefulWidget {
  @override
  _fishState createState() => _fishState();
}

class _fishState extends State<fish> {
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          controller: _ScrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title:Text('Save fishes'),
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
                    child: Text('How to heal injures fish',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black54,fontStyle: FontStyle.italic),),
                  ),
                  Padding(padding: EdgeInsets.all(24.0),
                    child: Card(
                      color: Colors.transparent,
                      child: Column(
                        children: <Widget>[
                          Text('FISH FINS-  Usually, these small infractions can heal themselves with no or little aid with a water conditioner additive like Stress Coat or SeaChem Prime that promotes a healthy slime coat on the fish. The slime coating acts somewhat like a bandaid, protecting them from infections. Separate the injured fish from the aggressor with a tank divider or remove it to a second tank to allow it a chance to heal without further injury.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('EYES INJURY-  Eye damage typically appears as a cloudy spot on the cornea. Remove the fish to a separate aquarium during the recovery phase and use a water-conditioning agent to promote the fish healing slime layer.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('CURING FISH FIN ROT-  First, isolate the fish with fin rot. Use a natural, antibacterial product such as Melafix that kills the bacteria. Potent antibiotics such as tetracycline or oxytetracycline are alternatives; however, strong medications can stress your fish since they take it in through their gills and end up ingesting large quantities. Thoroughly clean your aquarium, boiling decorations to kill the bacteria. Make sure that you have adequate filtration for the fish and can maintain the tank at a proper pH and temperature to prevent bacterial growth. Also, avoid overfeeding.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
                          Text('-  Keeping a few shrimp in with your fish can also help the healing process, according to a 2018 study by James Cook University. Scientists researching how shrimp can remove parasites from ornamental or farmed fish discovered that fish injuries appeared less red after being cleaned by the shrimp. The shrimp remove bacteria and dead tissue, but also lower the stress levels of the fish, helping it to heal.',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18.0,fontFamily: 'IndieFlower',fontWeight: FontWeight.bold),),
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
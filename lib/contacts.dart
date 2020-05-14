import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class contacts extends StatefulWidget {
  @override
  _contactsState createState() => _contactsState();
}

class _contactsState extends State<contacts> {
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
        primaryColor: Colors.white,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          controller: _ScrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title:Text('Useful Websites',textDirection: TextDirection.ltr,),

                pinned: true,
                floating: true,
                forceElevated: boxIsScrolled,
              )
            ];
          },
          body: Center(

            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.black87,
                gradient: LinearGradient(colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                    begin: Alignment.centerRight,
                    end: Alignment(-1.0, -1.0)
                ),
              ),
              child: Stack(
                children: <Widget>[SingleChildScrollView(
                  child:Padding(padding: EdgeInsets.only(top:25.0,bottom:25.0),
                    child:DataTable(
                        columns: [DataColumn(label:Flexible(child:Text('Title',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)),),
                          DataColumn(label: Text('Link',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)))
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text('INDIAN SITES',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)),
                            DataCell(
                                InkWell(
                                  child: Text('   ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),

                                )
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Peta India')),
                            DataCell(
                                InkWell(
                                  child: Text('www.petaindia.com',style: TextStyle(decoration: TextDecoration.underline),),
                                  onTap: () => launch('https://www.petaindia.com'),
                                )
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Animal Aid Unlimited')),
                            DataCell(
                                InkWell(
                                  child: Text('www.animalaidunlimited.org',style: TextStyle(decoration: TextDecoration.underline),),
                                  onTap: () => launch('https://animalaidunlimited.org') ,
                                )
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Animal Helpline')),
                            DataCell(
                              InkWell(
                                child: Text('www.animalhelpline.in',style: TextStyle(decoration: TextDecoration.underline),),
                                onTap: () => launch('https://animalhelpline.in'),
                              ),
                            ),
                          ]),

                          DataRow(cells: [
                            DataCell(Text('Dog Lover')),
                            DataCell(InkWell(
                              child:Text('www.doglover.in',style: TextStyle(decoration: TextDecoration.underline),),
                              onTap: () => launch('http://doglover.in/'),
                            ),
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('world animal protection')),
                            DataCell(
                                InkWell(
                                  child: Text('www.worldanimalprotection.org.in',style: TextStyle(decoration: TextDecoration.underline),),
                                  onTap: () => launch('https://www.worldanimalprotection.org.in/'),
                                )
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Karuna animal welfare association of Karnatka')),
                            DataCell(
                                InkWell(
                                  child: Text('www.karunaanimalwelfare.org',style: TextStyle(decoration: TextDecoration.underline),),
                                  onTap: () => launch('http://karunaanimalwelfare.org/'),
                                )
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('people for animals')),
                            DataCell(
                                InkWell(
                                  child: Text('www.peopleforanimalsbangalore.org',style: TextStyle(decoration: TextDecoration.underline),),
                                  onTap: () => launch('https://peopleforanimalsbangalore.org/'),
                                )
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('   ')),
                            DataCell(InkWell(
                              child:Text('        ',),

                            ),
                            ),
                          ]),DataRow(cells: [
                            DataCell(Text('USA SITES',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,),)),
                            DataCell(InkWell(
                              child:Text('    ',),

                            ),
                            ),

                          ]),
                          DataRow(cells: [
                            DataCell(Text('Houston spca')),
                            DataCell(InkWell(
                              child:Text('www.houstonspca.org',style: TextStyle(decoration: TextDecoration.underline),),
                              onTap: () => launch('https://www.houstonspca.org/'),
                            ),
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('animals mom')),
                            DataCell(InkWell(
                              child:Text('www.animals.mom.me',style: TextStyle(decoration: TextDecoration.underline),),
                              onTap: () => launch('https://animals.mom.me/'),
                            ),
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Apah24')),
                            DataCell(InkWell(
                              child:Text('www.apah24.com',style: TextStyle(decoration: TextDecoration.underline),),
                              onTap: () => launch('https://www.apah24.com/services/emergency-vet'),
                            ),
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('aspca')),
                            DataCell(InkWell(
                              child:Text('www.aspca.org',style: TextStyle(decoration: TextDecoration.underline),),
                              onTap: () => launch('https://www.aspca.org/'),
                            ),
                            ),
                          ]),

                          DataRow(cells: [
                            DataCell(Text('vet street')),
                            DataCell(InkWell(
                              child:Text('www.vetstreet.com',style: TextStyle(decoration: TextDecoration.underline),),
                              onTap: () => launch('http://vetstreet.com/'),
                            ),
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('world animal protection')),
                            DataCell(
                                InkWell(
                                  child: Text('www.worldanimalprotection.org',style: TextStyle(decoration: TextDecoration.underline),),
                                  onTap: () => launch('https://www.worldanimalprotection.org'),
                                )
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('pet poison protection')),
                            DataCell(
                                InkWell(
                                  child: Text('www.petpoisonhelpline.com',style: TextStyle(decoration: TextDecoration.underline),),
                                  onTap: () => launch('https://www.petpoisonhelpline.com/'),
                                )
                            ),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('rspca')),
                            DataCell(
                                InkWell(
                                  child: Text('www.rspca.org.uk',style: TextStyle(decoration: TextDecoration.underline),),
                                  onTap: () => launch('https://www.rspca.org.uk/home'),
                                )
                            ),
                          ]),

                        ]),
                  ),
                ),
                ],
              ),
            ),
          ),

        ),
      ),
    );


  }
}
import 'package:flutter/material.dart';
import 'package:notificaiton/screens/syllabus.dart';
import 'package:notificaiton/screens/vision_Mission.dart';
import 'Faculty.dart';
import 'Infrastructure.dart';
import 'Timetable.dart';
import 'overview.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text("ISE"),
    backgroundColor: Colors.blueAccent.shade200,
    ),
      body:
      GridView.count(crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.all(19.0),
              child:InkWell(
                onTap:(){
                  Navigator.push(context , MaterialPageRoute(builder: (context) => facultyScreen()),);
                },
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/nav01.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.shade200,
                        spreadRadius:7 ,
                      )
                    ]
                ),

              ),
            ),
                      ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child:InkWell(
                onTap:(){
                  Navigator.push(context , MaterialPageRoute(builder: (context) => syllabusPage()),);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/nav02.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey.shade200,
                          spreadRadius:7 ,
                        )
                      ]
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child:InkWell(
                onTap:(){
                  Navigator.push(context , MaterialPageRoute(builder: (context) => InfrastructureScreen()),);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/nav03.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey.shade200,
                          spreadRadius:7 ,
                        )
                      ]
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child:InkWell(
                onTap:(){
                  Navigator.push(context , MaterialPageRoute(builder: (context) => timetablePage()),);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/nav04.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey.shade200,
                          spreadRadius:7 ,
                        )
                      ]
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child:InkWell(
                onTap:(){
                  Navigator.push(context , MaterialPageRoute(builder: (context) => VisMisScreen()),);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/nav05.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey.shade200,
                          spreadRadius:7 ,
                        )
                      ]
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child:InkWell(
                onTap:(){
                  Navigator.push(context , MaterialPageRoute(builder: (context) => overViewScreen()),);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/nav06.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey.shade200,
                          spreadRadius:7 ,
                        )
                      ]
                  ),

                ),
              ),
            ),

          ]),


      drawer: Container(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 100,
                child: DrawerHeader(
                  child: Center(child: Text('ISE')),
                  decoration: new BoxDecoration(color: Colors.indigoAccent),),
              ),
              ListTile(
                title: Text('Home'),
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen())),
              ),
              ListTile(
                title: Text('Vision Mission'),
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>VisMisScreen())),
              ),
              ListTile(
                title: Text('Faculty'),
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>facultyScreen())),
              ),
              ListTile(
                title: Text('Syllabus'),
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>syllabusPage())),
              ),
              ListTile(
                title: Text('Time Table'),
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>timetablePage())),
              ),
              ListTile(
                title: Text('Infrastructure'),
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>InfrastructureScreen())),
              ),
            ],
          ),
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}


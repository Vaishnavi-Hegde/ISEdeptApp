import 'package:flutter/material.dart';
import 'package:notificaiton/screens/syllabus.dart';
import 'package:notificaiton/screens/vision_Mission.dart';
import 'Faculty.dart';
import 'HomeScreen.dart';
import 'Timetable.dart';
class InfrastructureScreen extends StatelessWidget {
  const InfrastructureScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'ISE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Infrastructure(),
    );
  }
}

class Infrastructure extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(' Infrastructure'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('Infrastructure',style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  //textBaseline: ,
                ),)),
          ),//heading1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('LABORATORY FACILITIES: ',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  //fontFamily: 'Trojan Pro',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('Hardware / Microcontroller /IOT  Lab  ',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  //fontFamily: 'Trojan Pro',
                  fontStyle: FontStyle.italic,
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('Project Lab   ',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  //fontFamily: 'Trojan Pro',
                  fontStyle: FontStyle.italic,
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('DBMS/Value Added LAB  ',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  //fontFamily: 'Trojan Pro',
                  fontStyle: FontStyle.italic,
                ),)
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('Data Structures/OOPs Lab  ',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  //fontFamily: 'Trojan Pro',
                  fontStyle: FontStyle.italic,
                ),)
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('PG & R&D LAB  ',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  //fontFamily: 'Trojan Pro',
                  fontStyle: FontStyle.italic,
                ),)
            ),
          ),


          //text1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('Major Equipments',style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  //textBaseline: ,
                ),)),
          ),//heading2
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('Servers – 02 .\nDesktops – 106 \n'
                    'Laptops – 04 '
                    '\nLCD Projectors'
                    '\nPrinters – 04 '
                    '\nScanner - 01  ',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  //fontFamily: 'Trojan Pro',
                  fontStyle: FontStyle.italic,
                ),)
            ),
          ),//text2
        ],
      ),
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
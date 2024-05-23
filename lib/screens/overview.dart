import 'package:flutter/material.dart';
import 'package:notificaiton/screens/spalshScreen.dart';
import 'package:notificaiton/screens/syllabus.dart';
import 'package:notificaiton/screens/vision_Mission.dart';
import 'Faculty.dart';
import 'HomeScreen.dart';
import 'Infrastructure.dart';
import 'Timetable.dart';

class overViewScreen extends StatelessWidget {
  const overViewScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'OverView / PEOs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: OverView(),
    );
  }
}
class OverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ISE"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text('Overview',style: TextStyle(
                        fontSize: 36,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        //textBaseline: ,
                      ),)),
                ),//heading1
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text('DEPARTMENT OF INFORMATION SCIENCE & ENGINEERING',style: TextStyle(
                        fontSize: 24,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        //textBaseline: ,
                      ),)),
                ),//heading2
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text('The department of Information Science and Engineering, established in the year 2000 with an initial intake of 30, offers an undergraduate course in engineering (B.E. in Information Science and Engineering). Now, the intake is enhanced to 60 students. The department is recognized as a research centre by Visvesvaraya Technological University, Belgaum. The department is accredited twice by the National Board of Accreditation.',style: TextStyle(
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
                      child: Text('PEOs ',style: TextStyle(
                        fontSize: 36,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        //textBaseline: ,
                      ),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text('PEO 1',style: TextStyle(
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
                      child: Text('Develop into Information Technology Professionals with expertise in providing solutions to Information Engineering problems.',style: TextStyle(
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
                      child: Text('PEO 2',style: TextStyle(
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
                      child: Text('Pursue higher studies with the sound knowledge of basic concepts and skills in basic science, humanities and Information Technology disciplines.',style: TextStyle(
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
                      child: Text('PEO 3',style: TextStyle(
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
                      child: Text('Exhibit professionalism, ethics and ability to work in teams.',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        //fontFamily: 'Trojan Pro',
                        fontStyle: FontStyle.italic,
                      ),)
                  ),
                ),
                //textdesc
              ],
            ),
          )
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

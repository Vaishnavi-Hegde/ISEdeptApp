import 'package:flutter/material.dart';
import 'Faculty.dart';
import 'HomeScreen.dart';
import 'Infrastructure.dart';
class VisMisScreen extends StatelessWidget {
  const VisMisScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'ISE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: vismis(),
    );
  }
}

class vismis extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text('Vision-Mission'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('Vision:',style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  //textBaseline: ,
                ),)),
          ),//heading1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('To develop competent Information Technology Engineers having complete knowledge and skills in contemporary Information Technology and practices',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  //fontFamily: 'Trojan Pro',
                  fontStyle: FontStyle.italic,
                ),)
            ),
          ),//text1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('Mission:',style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  //textBaseline: ,
                ),)),
          ),//heading2
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text('To have contextually relevant Curricular.\nTo promote effective Teaching Learning Practices supported by Modern Educational Tools and Techniques.\nTo enhance Research Culture.\nTo involve Industrial Expertise for connecting classroom content to real life situations\nTo inculcate Ethics and impart soft-skills leading to overall Personality Development.',style: TextStyle(
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


  vismisPage() {}

  infraPage() {}

  timetablePage() {}

  facultyPage() {}

  syllabusPage() {}

}
import 'package:flutter/material.dart';
import 'package:notificaiton/screens/vision_Mission.dart';

import 'Faculty.dart';
import 'HomeScreen.dart';
import 'Infrastructure.dart';
import 'Timetable.dart';

class syllabusPage extends StatefulWidget{
  @override
  State<syllabusPage> createState() => _syllabusPageState();
}
class _syllabusPageState extends State<syllabusPage> {
  var syllabusList = [
    {
      "id":"1",
      "title": "1 year UG Syllabus 2023-24",
      "url":"assets/pdfs/first.pdf"
    },
    {
      "id":"2",
      "title": "2 year UG Syllabus 2023-24",
      "url":"https://sdmcet.ac.in/downloads/2023%20Data/ISE/I%20Year%20Syllabus%202023-24.pdf"
    },
    {
      "id":"3",
      "title": "3 year UG Syllabus 2023-24",
      "url":"https://sdmcet.ac.in/downloads/2023%20Data/ISE/III%20Year%20Syllabus%20_2023_24.pdf.pdf"
    },
    {
      "id":"4",
      "title": "4 year UG Syllabus 2023-24",
      "url":"https://sdmcet.ac.in/downloads/2023%20Data/ISE/IV%20Year%20Syllabus%20_2023_24.pdf"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        title: Text('Syllabus'),
      ),
      body:ListView.builder(
          itemCount:4 ,
          itemBuilder: (BuildContext context , int index){
            var Sylist = syllabusList[index];
            return TileList(
              fileUrl: Sylist['url']!,
              title:Sylist['title']!,);

          }),
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
      ),
    );
  }

  facultyPage() {}

  infraPage() {}
}
class TileList extends StatelessWidget{
  TileList({super.key , required this.fileUrl , required this.title});
  final String fileUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor:Colors.grey.shade100,
      child: ListTile(
        title: Text(title),
        trailing: IconButton(onPressed: () {} ,icon: Icon(Icons.download),),
      ),
    );
  }
}
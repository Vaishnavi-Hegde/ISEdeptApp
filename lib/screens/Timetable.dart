import 'package:flutter/material.dart';
import 'package:notificaiton/screens/syllabus.dart';
import 'package:notificaiton/screens/vision_Mission.dart';
import 'package:photo_view/photo_view.dart';

import 'Faculty.dart';
import 'HomeScreen.dart';
import 'Infrastructure.dart';

class timetablePage extends StatefulWidget{
  @override
  State<timetablePage> createState() => _timetablePageState();
}
class _timetablePageState extends State<timetablePage> {
  var timetableList = [
    {
      "id":"1",
      "title": "1 sem TimeTable",
      "url":"assets/images/1st sem timetable.jpeg"
    },
    {
      "id":"2",
      "title": "3 sem TimeTable",
      "url":"assets/images/3rd sem timetable.jpeg"
    },
    {
      "id":"3",
      "title": "5 sem TimeTable",
      "url":"assets/images/5th sem timetable.jpeg"
    },
    {
      "id":"4",
      "title": "7 sem TimeTable",
      "url":"assets/images/7th sem timetable.jpeg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        title: Text('Timetable'),
      ),
      body:ListView.builder(
          itemCount:4 ,
          itemBuilder: (BuildContext context , int index){
            var ttlist = timetableList[index];
            return TileyList(
              fileUrl: ttlist['url']!,
              title:ttlist['title']!,);

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



}

class TileyList extends StatelessWidget{
  TileyList({super.key , required this.fileUrl , required this.title});
  final String fileUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor:Colors.grey.shade100,
      child: ListTile(
        title: Text(title),
        trailing: IconButton(onPressed: (){
          _showImagePopup(context,fileUrl);
        },icon: Icon(Icons.download),),
      ),
    );
  }
}
void _showImagePopup(BuildContext context,String url) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Material(
          type: MaterialType.transparency,
          child: Center(
            child: PhotoView(
              imageProvider: AssetImage(url),
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: PhotoViewComputedScale.covered * 2,
              backgroundDecoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          )
      );
    },
  );
}
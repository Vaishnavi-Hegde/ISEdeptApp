import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notificaiton/screens/HomeScreen.dart';
import 'package:notificaiton/screens/syllabus.dart';
import 'package:notificaiton/screens/vision_Mission.dart';

import 'Infrastructure.dart';
import 'Timetable.dart';
class facultyScreen extends StatefulWidget{
  const facultyScreen({super.key});

  @override
  State<facultyScreen> createState() => MyCarouselSlider();
}

class MyCarouselSlider extends State<facultyScreen > {

  List <String> facultyImg = [
    'assets/images/fac01.jpg',
    'assets/images/fac02.jpg',
    'assets/images/fac03.jpg',
    'assets/images/fac04.jpg',
    'assets/images/fac05.jpg',
    'assets/images/fac06.jpg',
    'assets/images/fac07.jpg',
    'assets/images/fac08.jpg',
    'assets/images/fac09.jpg',
    'assets/images/fac010.jpg',
    'assets/images/fac011.jpg',
    'assets/images/fac012.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        title: Text('Faculty'),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 500,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: PageView.builder(
                      itemCount: facultyImg.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: InkWell(
                            onTap: (){
                              _showImagePopup(context,index+1);
                            },
                            child: Image.asset(
                                facultyImg[index], fit: BoxFit.cover),
                          ),
                        );
                      }),
                )
              ],
            )
        ),
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
  void _showImagePopup(BuildContext context,int index) async {
    // Read the content from the .txt file
    String fname=index.toString();
    String content = await _readFile("assets/descriptions/fac0"+fname+"_desc.txt");

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('About'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(content),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<String> _readFile(String filename) async {
    try {
      return await rootBundle.loadString(filename);
    } catch (e) {
      // Handle errors, e.g., file not found
      return 'Description not available';
    }
  }


}


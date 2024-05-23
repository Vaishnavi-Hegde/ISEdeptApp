import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notificaiton/api/firebase_api.dart';
import 'package:notificaiton/firebase_options.dart';
import 'package:notificaiton/pages/notification_page.dart';
import 'package:notificaiton/screens/spalshScreen.dart';



final navigatorKey = GlobalKey<NavigatorState>();
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
  runApp( ISEApp());
}

class ISEApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      navigatorKey: navigatorKey,
      routes: {
       '/notification_screen':(context) => const NotificationPage(),
     },
    );
  }

}
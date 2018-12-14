import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/auth_screen.dart';
import 'package:flutter_firebase/screens/home_screen.dart';

class AppRootWidget extends StatefulWidget {
  @override
  AppRootWidgetState createState() => AppRootWidgetState();
}

class AppRootWidgetState extends State<AppRootWidget> {
  ThemeData get _themeData => ThemeData(
        primaryColor: Colors.cyan,
        accentColor: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[300],
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inherited',
      theme: _themeData,
      routes: {
        '/': (BuildContext context) => HomeScreen(),
        '/auth': (BuildContext context) => AuthScreen(),
      },
    );
  }
}

// return StreamBuilder(
//       stream: Firestore.instance.collection('notes').document('quick').snapshots(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           var doc = snapshot.data;
//           if (doc.exists) {
//             return Text(doc['content']);
//           }
//         }
//         return CircularProgressIndicator();
//       },
//     );

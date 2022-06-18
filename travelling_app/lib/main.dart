import 'package:flutter/material.dart';
import 'package:travelling_app/screens/loading_screen.dart';
import 'package:get/get.dart';
void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light(),
//       home: LoadingScreen(),
//
//     );
//   }
// }
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( //for navigation dont forget to use GetMaterialApp
      title: 'Travel and Tourism',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        // '/cart': (context) => CartPage(),
      },
    );
  }
}


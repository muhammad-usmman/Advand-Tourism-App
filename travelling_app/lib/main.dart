import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/screens/loading_screen.dart';
import 'package:get/get.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


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


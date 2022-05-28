import 'package:flutter/material.dart';
import 'package:travelling_app/Data/badsahi_mosque.dart';
import 'dart:async';
import 'package:travelling_app/screens/HomePage.dart';
import 'package:travelling_app/screens/leading_screen.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Opening()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(

        child:Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image:AssetImage('images/splash3.jpg'),
                fit: BoxFit.cover),
          ),

        ));
  }
}



import 'package:flutter/material.dart';
import 'dart:async';
import 'package:travelling_app/screens/HomePage.dart';


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
                Home()
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
                image:AssetImage('assests/images/bgpic.jpeg'),
                fit: BoxFit.cover),
          ),

        ));
  }
}


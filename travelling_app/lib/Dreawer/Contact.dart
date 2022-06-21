import 'package:flutter/material.dart';
import 'package:travelling_app/Dreawer/about.dart';
import 'package:travelling_app/screens/Home_Page.dart';
import 'package:flutter/cupertino.dart';


class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            iconTheme:const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/icons/travel&tourism.jpg',
                  fit: BoxFit.contain,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(

          color:   Colors.teal,
          child: Center(
            child: Column(

              children: [
                SizedBox(height: 100.0),
                Row(children: [

                  Icon(Icons.call),
                  SizedBox(width: 20.0,),
                  Text('0302-3195454'),
                ],
                ),
                SizedBox(height: 50.0,),
                Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(width: 20.0,),
                    Text('muhammadusman9058@gmail.com')
                  ],
                ),
              ],
            ),
          ),


        ),
        endDrawer: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/icons/travel&tourism.jpg")),
                ),
                child: Text(''),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Home())
                  );
                },
              ),
              ListTile(
                title: Text('Queries'),
                leading: Icon(Icons.question_mark),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>About())
                  );
                },
              ),
              ListTile(
                title: Text('Contact Us'),
                leading: Icon(Icons.call),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Contact()
                      )
                  );
                },
              ),
              ListTile(
                title: Text('About us'),
                leading: Icon(Icons.person),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>About())
                  );
                },
              ),
            ],
          ),),
      ),
    );
  }
}

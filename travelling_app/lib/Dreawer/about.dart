import 'package:flutter/material.dart';
import 'package:travelling_app/Dreawer/Contact.dart';

// import 'package:lab_mid_tasbeeh/screens/homepage.dart';
import 'package:travelling_app/screens/Home_Page.dart';


class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
                  Icon(Icons.person),
                  SizedBox(width: 20.0,),
                  Text('Hi, My name is Muhammad Usman'),
                ],
                ),
                SizedBox(height: 45.0,),
                Row(
                  children: [
                    Text('I am a full stack Developoer mainly working from COMSATS University vehari'),
                  ],
                ),
                SizedBox(height: 50.0,),
                Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(width: 20.0,),
                    Text('I have made this app for better tasbiah')
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

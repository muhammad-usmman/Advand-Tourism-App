import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';

import '../Dreawer/Contact.dart';
import '../Dreawer/about.dart';
import '../screens/Home_Page.dart';


class Centours extends StatefulWidget {
  const Centours({Key? key}) : super(key: key);

  @override
  State<Centours> createState() => _CentoursState();
}

class _CentoursState extends State<Centours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 60.0,
        title: TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
              hintText: " Search...",
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                color: Color.fromRGBO(93, 25, 72, 1),
                onPressed: () {},
              )),
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
      body:Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image:AssetImage('images/Badshahi.jpg',),
              colorFilter:ColorFilter.linearToSrgbGamma() ,
              fit: BoxFit.cover),
        ),
        // child:
        // Padding(
        //   padding: EdgeInsets.all(10),
        child: Container(

          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Badshahi Mosque",style: TextStyle(fontSize: 30),),
              SizedBox(
                height: 20,
              ),
              Text(
                "The Badshahi Mosque is a Mughal-era congregational \n"
                    "mosque in Lahore, capital of the Pakistani province\n "
                    "of Punjab, Pakistan. The mosque is located west of \n"
                    " Lahore Fort along the outskirts of the Walled City \n "
                    "of Lahore, and is widely considered to be one of Lahore's \n"
                    " most iconic landmarks.",
                style: kImageText,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      icon: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                        size: 30.0,
                      ),
                      label: Text('Like'),
                      onPressed: () {
                        print('Liked');
                      },
                      // style: ElevatedButton.styleFrom(
                      //   shape: new RoundedRectangleBorder(
                      //     borderRadius: new BorderRadius.circular(20.0),
                      //   ),
                      style: ButtonStyle(
                        backgroundColor:   MaterialStateProperty.all(Colors.transparent),
                        padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ) ,
        ),
        // ),

      ),
      drawer: Drawer(
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
              color: Colors.teal,
            ),
            child: Text('Travel and Tourism'),

          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Home(

                  )));
            },
          ),




          ListTile(
            title: Text('Queries'),
            leading: Icon(Icons.question_mark),
            onTap: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>About(

                  )));
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            leading: Icon(Icons.call),
            onTap: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Contact(

                  )));
            },
          ),
          ListTile(
            title: Text('About us'),
            leading: Icon(Icons.person),
            onTap: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>About(

                  )));
            },
          ),
        ],
      ),),

    );
  }
}

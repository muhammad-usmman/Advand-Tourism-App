import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Dreawer/Contact.dart';
import '../Dreawer/about.dart';
import '../screens/Home_Page.dart';


class Faasil_Mosque extends StatefulWidget {
  const Faasil_Mosque({Key? key}) : super(key: key);

  @override
  State<Faasil_Mosque> createState() => _Faasil_MosqueState();
}

class _Faasil_MosqueState extends State<Faasil_Mosque> {
  Color _favIconColor = Colors.black;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 60.0,
        elevation: 0,

      ),
      body:Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image:AssetImage('images/Islamabad/fasilmosque.jpg',),
              colorFilter:ColorFilter.linearToSrgbGamma() ,
              fit: BoxFit.cover),
        ),
        // child:
        // Padding(
        //   padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fasil Mosque",style: TextStyle(fontSize: 30),),
            SizedBox(
              height: 20,
            ),
           const Text(
              "The Faisal Mosque is the national mosque of Pakistan,\n"
                  "located in capital Islamabad.[1][2] It is the sixth-largest\n"
                  "mosque in the world and the largest within South Asia, \n"
                  "located on the foothills of Margalla Hills in Pakistan's capital city of Islamabad. \n"
                  "The mosque features a contemporary design consisting of \n"
                  "eight sides of concrete shell and is inspired by the design of a typical Bedouin tent \n",
              style: kImageText,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
              IconButton(
                icon: Icon(
                   FontAwesomeIcons.heart,

                ),

              color: _favIconColor,
              tooltip: 'Add to favorite',

              onPressed: () {
                setState(() {
                  if(_favIconColor == Colors.grey){
                    _favIconColor = Colors.red;
                      }
                  else{
                    _favIconColor = Colors.grey;
                        }
                     }
                  );
                },

              ),

                ],
              ),
            )
          ],
        ),
        // ),

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




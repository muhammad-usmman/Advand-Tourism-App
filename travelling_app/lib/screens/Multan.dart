import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';
// import 'package:travelling_app/Data/badsahi_mosque.dart';
import 'package:travelling_app/Data/centours.dart';
import 'package:travelling_app/Data/fasil_Mosque.dart';
// import 'package:travelling_app/Data/lahore_fort.dart';
// import 'package:travelling_app/Data/lahore_museum.dart';
// import 'package:travelling_app/Data/minare_Pakistan.dart';
import 'package:travelling_app/Data/monal.dart';
import 'package:travelling_app/Data/Monument.dart';
import 'package:travelling_app/screens/Home_Page.dart';

import '../Dreawer/Contact.dart';
import '../Dreawer/about.dart';
// import 'package:travelling_app/Data/ShahJhan.dart';
// import 'package:travelling_app/Data/walled_Citty.dart';

class multan extends StatefulWidget {
  const multan({Key? key}) : super(key: key);

  @override
  State<multan> createState() => _multanState();
}

class _multanState extends State<multan> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

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
              Container(
                  padding: const EdgeInsets.all(8.0), child:const  Text('Islamabad'))
            ],
          ),
        ),
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child:
            Column(
              children: [
                Container(
                  padding:const EdgeInsets.all(10),
                  height : 500,
                  child:ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('Fasil Mosque',style: kIText,),
                          width: 500.0,
                          decoration:const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage("images/Islamabad/fasilmosque.jpg")),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>const Faasil_Mosque())
                          );
                        },
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),

                      InkWell(
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('Pakistan Monument Museum',style: kIText,),
                          width: 500.0,
                          decoration:const  BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/Islamabad/monument.jpg")),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                        onTap: (){

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>const Monument())
                          );
                        },
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),

                      InkWell(
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('Monal',style: kIText,),
                          width: 500.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/Islamabad/monal.jpg")),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                        onTap: (){

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>const Monal())
                          );
                        },
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),

                      InkWell(
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('Centours',style: kIText,),
                          width: 500.0,
                          decoration: const  BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage("images/Islamabad/centours.jpg")),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                        onTap: (){

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>const Centours())
                          );
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Expanded(
                    child: Column(
                      children:const  [
                        Text('     Islamabad  is the capital city of Pakistan, and is administered by the Pakistani federal government as part of the Islamabad Capital Territory.',
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
                    image:AssetImage("images/icons/travel&tourism.jpg")),

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

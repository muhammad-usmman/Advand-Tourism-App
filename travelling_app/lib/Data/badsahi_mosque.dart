import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Dreawer/Contact.dart';
import '../Dreawer/about.dart';
import '../screens/Home_Page.dart';


class Badshahi extends StatefulWidget {
  const Badshahi({Key? key}) : super(key: key);

  @override
  State<Badshahi> createState() => _BadshahiState();
}

class _BadshahiState extends State<Badshahi> {
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
    image:AssetImage('images/Badshahi.jpg',),
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
            Text("Badshahi Mosque",style: TextStyle(fontSize: 30),),
            SizedBox(
              height: 20,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                  " Integer vehicula erat vel massa hendrerit, ac bibendum nunc porttitor.\n"
                  " Integer nec iaculis diam.\n"
                  " Vestibulum sed nibh non est bibendum mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                  " Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n"
                  " Cras consequat auctor tortor, nec convallis orci accumsan in.\n"
                  " Vestibulum fermentum luctus scelerisque.\n"
                  " Morbi pellentesque elementum dui, et rhoncus quam interdum vitae.\n",
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




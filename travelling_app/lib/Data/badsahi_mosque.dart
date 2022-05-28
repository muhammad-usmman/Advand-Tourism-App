import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';


class Badshahi extends StatefulWidget {
  const Badshahi({Key? key}) : super(key: key);

  @override
  State<Badshahi> createState() => _BadshahiState();
}

class _BadshahiState extends State<Badshahi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Badshai Mosque'),
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
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
              )
                  ],
                ),
              )
            ],
          ) ,
        ),
      // ),
      
    ),
      drawer: Drawer( child: ListView(

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
          // onTap: (){
          //
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context)=>Home(
          //
          //       )));
          // },
        ),




        ListTile(
          title: Text('Queries'),
          leading: Icon(Icons.question_mark),
          // onTap: (){
          //
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context)=>About(
          //
          //       )));
          // },
        ),
        ListTile(
          title: Text('Contact Us'),
          leading: Icon(Icons.call),
          // onTap: (){
          //
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context)=>Contact(
          //
          //       )));
          // },
        ),
        ListTile(
          title: Text('About us'),
          leading: Icon(Icons.person),
          // onTap: (){
          //
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context)=>About(
          //
          //       )));
          // },
        ),
      ],
    ),),

    );
  }
}

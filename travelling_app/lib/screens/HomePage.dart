import 'package:flutter/material.dart';

import 'package:travelling_app/Functionality_pages/Booking.dart';
import 'package:travelling_app/constant.dart';
import 'package:travelling_app/Data/badsahi_mosque.dart';
import 'package:travelling_app/Data/centours.dart';
import 'package:travelling_app/Data/fasil_Mosque.dart';
import 'package:travelling_app/Data/lahore_fort.dart';
import 'package:travelling_app/Data/lahore_museum.dart';
import 'package:travelling_app/Data/minare_Pakistan.dart';
import 'package:travelling_app/Data/monal.dart';
import 'package:travelling_app/Data/Monument.dart';
import 'package:travelling_app/Data/ShahJhan.dart';
import 'package:travelling_app/Data/walled_Citty.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Text('Tourism'),
      ),
      body:Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image:AssetImage('images/bg_home.jpg',),
              colorFilter:ColorFilter.linearToSrgbGamma() ,
              fit: BoxFit.cover),

        ),


        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            SizedBox(
              width: 10.0,
              height: 10.0,
            ),
            Text('Islamabad',
            style: kHTextStyle ,
            ),
            Expanded(
              child:
              Column(
                children: [
                  Container(
                    height : 100,
                    child:ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/fasil_mosque.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Faasil_Mosque(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/monument.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Monument(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/mONAL.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Monal(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/centuros.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Centours(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Column(
                      children: [
                        Text('Islamabad  is the capital city of Pakistan, and is administered by the Pakistani federal government as part of the Islamabad Capital Territory.',
                        style: kBodyTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: ()=>Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context) =>
                              Book(),
                          ),
                        ),
                        child: Container(
                          child: Center(
                            child: Text(
                              'Book Now',
                              style: kLargeButtonStyle,
                            ),
                          ),
                          color: Colors.red,


                          margin: EdgeInsets.only(top: 10.0),
                          width:  220.0,
                          height: 60.0,
                        ),
                      )
                    ],

                  )

                ],


              ),
            ),
            SizedBox(
              height: 20,
              width: 10,
            ),


            Text('Lahore',
              style: kHTextStyle ,),
            Expanded(
              child:
              Column(
                children: [
                  Container(
                    height : 100,
                    child:ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/minare_pakistan.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Minare_Pakistan(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/lahore_fort.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Lahore_fort(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/badshi_mosque.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Badshahi(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/lahore_musem.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>lahore_Museum(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/shahjhan.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Shahjhan(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),

                        InkWell(
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("images/walled_city.PNG")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                          ),
                          onTap: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Walled_City(

                                ))
                            );
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Column(
                      children: [
                        Text("Lahore  is the capital of the Pakistani province of Punjab, is Pakistan's 2nd largest city after Karachi, and is the 26th largest city in the world",
                        style: kBodyTextStyle,
                        ),


                      ],
                    ),
                  ),
                ],


              ),
            ),

          ],

        ),
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
            onTap: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Home(

                  )));
            },
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

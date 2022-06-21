import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';
import 'package:travelling_app/screens/Home_Page.dart';
import '../Dreawer/Contact.dart';
import '../Dreawer/about.dart';


class karachi extends StatefulWidget {
  const karachi({Key? key}) : super(key: key);

  @override
  State<karachi> createState() => _karachiState();
}

class _karachiState extends State<karachi> {
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
                  padding: const EdgeInsets.all(8.0), child:const  Text('Peshawar'))
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
                          child:
                          const Text('',style: kIText,),//TODO: ADD NAME AND IMAGES
                          width: 500.0,
                          decoration:const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("")),//TODO: ADD NAME AND IMAGES
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                        // onTap: (){
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context)=>const Faasil_Mosque())
                        //   );
                        // },
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),

                      InkWell(//TODO: ADD NAME AND IMAGES AND NAV
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('',style: kIText,),
                          width: 500.0,
                          decoration:const  BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("")),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                        // onTap: (){
                        //
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context)=>const Monument())
                        //   );
                        // },
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),

                      InkWell(//TODO: ADD NAME AND IMAGES AND NAV
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('',style: kIText,),
                          width: 500.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("")),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                        // onTap: (){
                        //
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context)=>const Monal())
                        //   );
                        // },
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),

                      InkWell(//TODO: ADD NAME AND IMAGES AND NAV
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('',style: kIText,),
                          width: 500.0,
                          decoration: const  BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("")),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                        // onTap: (){
                        //
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context)=>const Centours())
                        //   );
                        // },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                ),


                Padding(//TODO: CHANGE DESCRIPTION
                  padding: EdgeInsets.all(10.0),
                  child: Expanded(
                    child: Column(
                      children:const  [
                        Text('    ',
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
                    image: NetworkImage("images/icons/travel&tourism.jpg")),

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

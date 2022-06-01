import 'dart:html';
import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';
import 'package:travelling_app/Data/fasil_Mosque.dart';
import 'package:travelling_app/Data/centours.dart';
import 'package:travelling_app/Data/monal.dart';
import 'package:travelling_app/Data/Monument.dart';
import 'package:travelling_app/screens/Home_Page.dart';
import 'package:travelling_app/screens/homepage_remaining_screens/Recomended.dart';
import 'package:travelling_app/screens/homepage_remaining_screens/Viewed.dart';

import 'dart:math';
import 'package:flappy_search_bar/flappy_search_bar.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}
class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}


class _NewState extends State<New> {
  final SearchBarController<Post> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Post>> _getALlPosts(String text) async {
    List<Post> posts = [
    ];

    // var random = Random();
    // for (int i = 0; i < 10; i++) {
    //   posts
    //       .add(Post("$text $i", "hi: ${random.nextInt(100)}"));
    // }
    return posts;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              // Container(
              //     padding: const EdgeInsets.all(8.0), child: Text('YourAppTitle'))
            ],

          ),


        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: Text("Let's enjoy \n your vacation!! ",
                style: kLStyle,),
            ),
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SearchBar<Post>(
                      minimumChars: 1,
                      searchBarPadding: const EdgeInsets.symmetric(horizontal: 10),
                      headerPadding: const EdgeInsets.symmetric(horizontal: 10),
                      listPadding: const EdgeInsets.symmetric(horizontal: 10),
                      onSearch: _getALlPosts,
                      searchBarController: _searchBarController,
                      placeHolder:
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: ()=>Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder:
                                        (context) =>
                                        Home(),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                      onSurface: Colors.transparent

                                  ),

                                  child:
                                  Text('All',
                                    style: kHLStyle,
                                  ),

                                ),
                                ElevatedButton(
                                  onPressed: ()=>Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder:
                                        (context) =>
                                        New(),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                      onSurface: Colors.transparent

                                  ),

                                  child:
                                  Text('New',
                                    style: kHLStyle,
                                  ),

                                ),
                                ElevatedButton(
                                  onPressed: ()=>Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder:
                                        (context) =>
                                        Most_viewed(),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                      onSurface: Colors.transparent

                                  ),

                                  child:
                                  Text('Most Viewed',
                                    style: kHLStyle,
                                  ),

                                ),
                                ElevatedButton(
                                  onPressed: ()=>Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder:
                                        (context) =>
                                        Recomended(),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                      onSurface: Colors.transparent

                                  ),

                                  child:
                                  Text('Recomended',
                                    style: kHLStyle,
                                  ),

                                ),

                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height : 250,

                            child:ListView(
                              scrollDirection: Axis.horizontal,
                              children: [

                                InkWell(
                                  child: Container(
                                    width: 200.0,

                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage("images/shahjhan.PNG")),
                                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
                                    width: 200.0,
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
                                    width: 200.0,

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
                                    width: 200.0,

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
                        ],
                      ),
                      cancellationWidget: Text("Cancel"),
                      emptyWidget: Text("empty"),
                      onCancelled: () {
                        print("Cancelled triggered");
                      },
                      mainAxisSpacing: 10,
                      onItemFound: (Post post, int index) {
                        return Container(
                          color: Colors.lightBlue,
                          child: ListTile(
                            title: Text(post.title),
                            isThreeLine: true,
                            subtitle: Text(post.body),
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) => Detail()));
                            },
                          ),
                        );
                      },
                    ),
                  ),


                ],


              ),

            ),
            Text('Upcoming Features',
              style: kLStyle,),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(

                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height : 100,

                        child:Row(
                          // scrollDirection: Axis.horizontal,
                          children: [

                            InkWell(
                              child:  Container(
                                width: 100.0,
                                decoration:const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage("images/icons/hotels.jpg")),

                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  color: Colors.redAccent,
                                ),
                                // child:
                                // const Text('Hotels',style: kLStyle,),
                              ),
                              onTap: (){

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>const Faasil_Mosque(

                                    ))
                                );
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),

                            InkWell(
                              child: Container(
                                width: 100.0,
                                decoration: const BoxDecoration(
                                  image:  DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage("images/icons/camping_icon.jpg")),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.redAccent,
                                ),
                              ),
                              onTap: (){

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>const Monument(

                                    ))
                                );
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),

                            InkWell(
                              child:
                              Container(
                                width: 100.0,

                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage("images/icons/cruise.jpg")),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.redAccent,
                                ),
                                // child:
                                // // Text('Cruise')
                              ),
                              onTap: (){

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>Monal()
                                    )
                                );

                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),

                            InkWell(
                              child: Container(
                                width: 100.0,

                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage("images/icons/road_trip.jpg")),
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
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
      endDrawer: Drawer( child: ListView(

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
                  MaterialPageRoute(builder: (context)=>New(

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

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(child: Text("Detail", style: const TextStyle(fontSize: 30),)),
      ),
    );
  }
}





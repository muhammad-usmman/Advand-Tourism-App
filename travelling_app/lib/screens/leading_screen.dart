import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';
import 'package:travelling_app/Data/fasil_Mosque.dart';
import 'package:travelling_app/Data/centours.dart';
import 'package:travelling_app/Data/monal.dart';
import 'package:travelling_app/Data/Monument.dart';

import 'dart:math';
import 'package:flappy_search_bar/flappy_search_bar.dart';

class Opening extends StatefulWidget {
  const Opening({Key? key}) : super(key: key);

  @override
  State<Opening> createState() => _OpeningState();
}
class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}


class _OpeningState extends State<Opening> {
  final SearchBarController<Post> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Post>> _getALlPosts(String text) async {
    List<Post> posts = [
    ];

    var random = new Random();
    for (int i = 0; i < 10; i++) {
      posts
          .add(Post("$text $i", "hi: ${random.nextInt(100)}"));
    }
    return posts;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
    backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(10),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Expanded(
             child: Text("Let's enjoy \n your vacation!! ",
             style: kHTextStyle,),
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
                 searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
                 headerPadding: EdgeInsets.symmetric(horizontal: 10),
                 listPadding: EdgeInsets.symmetric(horizontal: 10),
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
                                   Opening(),
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
                                   Opening(),
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
                                   Opening(),
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
                                   Opening(),
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
                       height : 200,

                       child:ListView(
                         scrollDirection: Axis.horizontal,
                         children: [

                           InkWell(
                             child: Container(
                               width: 200.0,

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
                  MaterialPageRoute(builder: (context)=>Opening(

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
        child: Center(child: Text("Detail", style: TextStyle(fontSize: 30),)),
      ),
    );
  }
}

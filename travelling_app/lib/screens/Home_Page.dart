import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';
import 'package:travelling_app/hotel_booking/hotel_pages/hotel_home_page.dart';
import 'package:travelling_app/Data/centours.dart';
import 'package:travelling_app/Data/monal.dart';
import 'package:travelling_app/Data/Monument.dart';
import 'package:travelling_app/screens/Islamabad.dart';
import 'package:travelling_app/screens/Karachi.dart';
import 'package:travelling_app/screens/Lahore.dart';
import 'package:travelling_app/screens/Multan.dart';
import 'package:travelling_app/screens/homepage_remaining_screens/New.dart';
import 'package:travelling_app/screens/homepage_remaining_screens/Recomended.dart';
import 'package:travelling_app/screens/homepage_remaining_screens/Upcoming.dart';
import 'dart:math';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import '../Dreawer/Contact.dart';
import '../Dreawer/about.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}
class _HomeState extends State<Home> {
  final SearchBarController<Post> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Post>> _getALlPosts(String text) async {
    List<Post> posts = [
    ];

    var random = Random();
    for (int i = 0; i < 10; i++) {
      posts
          .add(Post("$text $i", "hi: ${random.nextInt(100)}"));
    }
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
            ],
          ),
        ),
      ),
    backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 750,
          width: 500,
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
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             ElevatedButton(
                               onPressed: ()=>Navigator.pushReplacement(context,
                                 MaterialPageRoute(builder:
                                     (context) =>
                                     const Home(),
                                 ),
                               ),
                               style: ElevatedButton.styleFrom(
                                   primary: Colors.transparent,
                                   shadowColor: Colors.transparent,
                                   onSurface: Colors.transparent
                               ),
                               child:
                               const Text('All',
                                 style: kHLStyle,
                               ),
                             ),
                             ElevatedButton(
                               onPressed: ()=>Navigator.pushReplacement(context,
                                 MaterialPageRoute(builder:
                                     (context) =>
                                     const New(),
                                 ),
                               ),
                               style: ElevatedButton.styleFrom(
                                   primary: Colors.transparent,
                                   shadowColor: Colors.transparent,
                                   onSurface: Colors.transparent
                               ),
                               child:
                               const Text('New',
                                 style: kHLStyle,
                               ),
                             ),
                             ElevatedButton(
                               onPressed: ()=>Navigator.pushReplacement(context,
                                 MaterialPageRoute(builder:
                                     (context) =>
                                     const Upcoming(),
                                 ),
                               ),
                               style: ElevatedButton.styleFrom(
                                   primary: Colors.transparent,
                                   shadowColor: Colors.transparent,
                                   onSurface: Colors.transparent
                               ),
                               child:
                               const Text('Upcoming',
                                 style: kHLStyle,
                               ),
                             ),
                             ElevatedButton(
                               onPressed: ()=>Navigator.pushReplacement(context,
                                 MaterialPageRoute(builder:
                                     (context) =>
                                     const Recomended(),
                                 ),
                               ),
                               style: ElevatedButton.styleFrom(
                                   primary: Colors.transparent,
                                   shadowColor: Colors.transparent,
                                   onSurface: Colors.transparent
                               ),
                               child:
                               const Text('Recommended',
                                 style: kHLStyle,
                               ),
                             ),
                           ],
                         ),
                       ),
                       Container(
                         padding: const EdgeInsets.all(5),
                         height : 250,
                         child:ListView(
                           scrollDirection: Axis.horizontal,
                           children: [
                             InkWell(
                               child: Container(
                                 alignment: Alignment.bottomLeft,
                                 child: const Text('Islamabad',style: kIText,),
                                 width: 200.0,
                                 decoration:const BoxDecoration(
                                   image: DecorationImage(
                                       fit: BoxFit.cover,
                                       image: NetworkImage("images/Islamabad/fasilmosque.jpg")
                                   ),
                                   borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                   color: Colors.redAccent,
                                 ),
                               ),
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context)=>const Islamabad())
                                 );
                               },
                             ),
                             const SizedBox(
                               width: 10.0,
                             ),
                             InkWell(
                               child: Container(
                                 alignment: Alignment.bottomLeft,
                                 child: const Text('Karachi',style: kIText,),
                                 width: 200.0,
                                 decoration:const BoxDecoration(
                                   image: DecorationImage(
                                       fit: BoxFit.cover,
                                       image: NetworkImage("images/quaidTomb.jpg")),
                                   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                   color: Colors.redAccent,
                                 ),
                               ),
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context)=>const karachi())
                                 );
                               },
                             ),
                             const SizedBox(
                               width: 10.0,
                             ),
                             InkWell(
                               child: Container(
                                 alignment: Alignment.bottomLeft,
                                 child: const Text('Lahore',style: kIText,),
                                 width: 200.0,
                                 decoration: const BoxDecoration(
                                   image: DecorationImage(
                                       fit: BoxFit.cover,
                                       image: NetworkImage("images/Badshahi.jpg")),
                                   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                   color: Colors.redAccent,
                                 ),
                               ),
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context)=>const Lahore())
                                 );
                               },
                             ),
                             const SizedBox(
                               width: 10.0,
                             ),
                             InkWell(
                               child: Container(
                                 alignment: Alignment.bottomLeft,
                                 child: const Text('Multan',style: kIText,),
                                 width: 200.0,
                                 decoration: const BoxDecoration(
                                   image: DecorationImage(
                                       fit: BoxFit.cover,
                                       image: NetworkImage("images/Multan_Tomb.jpg")),
                                   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                   color: Colors.redAccent,
                                 ),
                               ),
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context)=>const multan())
                                 );
                               },
                             ),
                             const SizedBox(
                               width: 10.0,
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                   cancellationWidget: const Text("Cancel"),
                   emptyWidget:const Text("empty"),
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
             const Text('Other Services',
             style: kLStyle,),
             Column(
               children: [
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                       Container(
                         padding: const EdgeInsets.all(5),
                         height : 150,
                         child:Row(
                           // scrollDirection: Axis.horizontal,
                           children: [
                             InkWell(
                               child:  Container(
                                 alignment: Alignment.bottomLeft,
                                 child: const Text('Hotels',style: kIText,),
                                 width: 150.0,
                                 decoration:const BoxDecoration(
                                   image: DecorationImage(
                                       fit: BoxFit.cover,
                                       image: NetworkImage("images/icons/hotels.jpg")),
                                   borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                   color: Colors.redAccent,
                                 ),
                                 //
                               ),
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context)=>const hotel_HomePage())
                                 );
                               },
                             ),
                             const SizedBox(
                               width: 10.0,
                             ),
                             InkWell(
                               child: Container(
                                 alignment: Alignment.bottomLeft,
                                 child: const Text('Camping',style: kIText,),
                                 width: 150.0,
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
                                     MaterialPageRoute(builder: (context)=>const Monument())
                                 );
                               },
                             ),
                             const SizedBox(
                               width: 10.0,
                             ),
                             InkWell(
                               child:
                               Container(
                                 alignment: Alignment.bottomLeft,
                                 child: const Text('Cruise',style: kIText,),
                                 width: 150.0,
                                 decoration: const BoxDecoration(
                                   image: DecorationImage(
                                       fit: BoxFit.cover,
                                       image: NetworkImage("images/icons/cruise.jpg")),
                                   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                   color: Colors.redAccent,
                                 ),
                               ),
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context)=>Monal())
                                   );
                                 },
                             ),
                             SizedBox(
                               width: 10.0,
                             ),
                             InkWell(
                               child: Container(
                                 alignment: Alignment.bottomLeft,
                                 child: const Text('Road Trip',style: kIText,),
                                 width: 150.0,
                                 decoration:const BoxDecoration(
                                   image: DecorationImage(
                                       fit: BoxFit.cover,
                                       image: NetworkImage("images/icons/road_trip.jpg")),
                                   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                   color: Colors.redAccent,
                                 ),
                               ),
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context)=>Centours())
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
import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';
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
    List<Post> posts = [];

    var random = new Random();
    for (int i = 0; i < 10; i++) {
      posts
          .add(Post("$text $i", "body random number : ${random.nextInt(100)}"));
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
                               style: kHTextStyle,
                             ),

                           ),
                           ElevatedButton(
                               onPressed: ()=>Navigator.pushReplacement(context,
                                 MaterialPageRoute(builder:
                                     (context) =>
                                     Opening(),
                                 ),
                               ),

                               child:
                               Text('All')
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

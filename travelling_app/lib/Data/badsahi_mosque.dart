import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Dreawer/Contact.dart';
import '../Dreawer/about.dart';
import '../screens/Home_Page.dart';

enum Gender{
  male,
  female,
  other,
}
class Badshahi extends StatefulWidget {
  const Badshahi({Key? key}) : super(key: key);

  @override
  State<Badshahi> createState() => _BadshahiState();
}

class _BadshahiState extends State<Badshahi> {
  Gender selectGender=Gender.other;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 60.0,
        title: TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
              hintText: " Search...",
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                color: Color.fromRGBO(93, 25, 72, 1),
                onPressed: () {},
              )),
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
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
                  RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        selectGender=Gender.male;
                      });
                    },
                    colors: selectGender==Gender.male
                        ? activecolor
                        :deactivecolor,
                    cardwidget: RepeatTextAndIconWidget(
                      iconData: FontAwesomeIcons.heart,
                      label:'Like',
                    ),
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


class RepeatTextAndIconWidget extends StatelessWidget {
  RepeatTextAndIconWidget({ required this.iconData, required this.label});

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 55.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kHTextStyle,
        )

      ],

    );
  }
}

  class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({this.colors,this.cardwidget,this.onPressed});
  final Color? colors;
  final Widget? cardwidget;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
  onTap: onPressed,
  child: Container(
  margin: EdgeInsets.all(15.0),
  child: cardwidget,
  decoration: BoxDecoration(
  color: colors,
  borderRadius: BorderRadius.circular(10.0)
  ),
  ),
  );
  }
  }

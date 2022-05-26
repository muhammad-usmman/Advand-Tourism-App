import 'package:flutter/material.dart';
import 'package:travelling_app/constant.dart';

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
              image:AssetImage('images/home_background.PNG'),

              fit: BoxFit.cover),
        ),


        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
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

                        Container(
                          padding: EdgeInsets.all(10.0),
                          child:Image.asset("images/a.png"),//if validation ok show this1
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child:Image.asset("images/b.png"),//if validation ok show this1
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child:Image.asset("images/c.png"),//if validation ok show this1
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Column(
                      children: [
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild',
                        style: kBodyTextStyle,
                        ),


                      ],
                    ),
                  ),
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

                        Container(
                          padding: EdgeInsets.all(10.0),
                          child:Image.asset("images/a.png"),//if validation ok show this1
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child:Image.asset("images/b.png"),//if validation ok show this1
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child:Image.asset("images/c.png"),//if validation ok show this1
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Column(
                      children: [
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild',
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
    );

  }
  // widget buildcard() => Container(
  //   width: 200,
  //   height: 200,
  // );
}

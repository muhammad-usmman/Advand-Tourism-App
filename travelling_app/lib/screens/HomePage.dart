import 'package:flutter/material.dart';


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
              image:AssetImage('assests/images/bg.jpg'),

              fit: BoxFit.cover),
        ),


        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Text('Islamabad'),
            Expanded(
              child:
              Column(
                children: [
                  Container(
                    height : 200,
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
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
                      ],
                    ),
                  ),
                ],


              ),
            ),


            Text('Lahore'),
            Expanded(
              child:
              Column(
                children: [
                  Container(
                    height : 200,
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
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
                        Text('fbhdbvibirbibidbvobv fgfougogog hvcusbilsbuofiS jusegfisbvilbvusbilsbvuoS jlbuosbflisbosgc ucuscbilsbisblibvuodv ulsdvulsvlbvild'),
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

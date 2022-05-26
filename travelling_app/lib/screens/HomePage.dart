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

                        InkWell(

                          child: Container(

                            padding: EdgeInsets.all(10.0),
                            child:Image.asset("images/fasil_mosque.PNG"),

                          ),
                          // onTap: (){
                          //
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context)=>About(
                          //
                          //       ))
                          //   );
                          // },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child:Image.asset("images/monument.PNG"),//if validation ok show this1
                          ),

                          // onTap: (){
                          //
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context)=>About(
                          //
                          //       ))
                          //   );
                          // },

                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child:Image.asset("images/mONAL.PNG"),//if validation ok show this1
                          ),
                          // onTap: (){
                          //
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context)=>About(
                          //
                          //       ))
                          //   );
                          // },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child:Image.asset("images/centuros.PNG"),//if validation ok show this1
                          ),
                          // onTap: (){
                          //
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context)=>About(
                          //
                          //       ))
                          //   );
                          // },
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
                          child:Image.asset("images/minare_pakistan.PNG"),//if validation ok show this1
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child:Image.asset("images/lahore_fort.PNG"),//if validation ok show this1
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child:Image.asset("images/badshi_mosque.PNG"),//if validation ok show this1
                          ),
                          // onTap: (){
                          //
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context)=>About(
                          //
                          //       ))
                          //   );
                          // },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child:Image.asset("images/lahore_musem.PNG"),//if validation ok show this1
                          ),
                          // onTap: (){
                          //
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context)=>About(
                          //
                          //       ))
                          //   );
                          // },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child:Image.asset("images/shahjhan.PNG"),//if validation ok show this1
                          ),
                          // onTap: (){
                          //
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context)=>About(
                          //
                          //       ))
                          //   );
                          // },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child:Image.asset("images/walled_city.PNG"),//if validation ok show this1
                          ),
                          // onTap: (){
                          //
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context)=>About(
                          //
                          //       ))
                          //   );
                          // },
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

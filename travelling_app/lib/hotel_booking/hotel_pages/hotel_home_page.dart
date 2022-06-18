import 'package:flutter/material.dart';
import 'package:travelling_app/hotel_booking/hotel_widgets/bottom_nav_bar.dart';
import 'package:travelling_app/hotel_booking/hotel_widgets/home/for_you.dart';
import 'package:travelling_app/hotel_booking/hotel_widgets/home/hotel_search.dart';
import 'package:travelling_app/hotel_booking/hotel_widgets/home/top_bar.dart';

class hotel_HomePage extends StatefulWidget {
  const hotel_HomePage({Key? key}) : super(key: key);

  @override
  _hotel_HomePageState createState() => _hotel_HomePageState();
}

class _hotel_HomePageState extends State<hotel_HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness ==
        Brightness.light; //check if device is in dark or light mode
    Color defaultColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: buildBottomNavBar(0, size, isDarkMode),
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration(
            color: isDarkMode
                ? const Color(0xff06090d)
                : const Color(0xfff8f8f8), //background color
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.02,
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: ListView(
                children: [
                  buildTopBar(defaultColor, size),
                  Divider(
                    color: defaultColor,
                    thickness: 0.25,
                    height: size.height * 0.035,
                  ),
                  buildForYou(defaultColor, size),
                  buildHotelSearch(defaultColor, size),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

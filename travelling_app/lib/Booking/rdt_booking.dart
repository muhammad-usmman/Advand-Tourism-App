import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelling_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class rdt_Book extends StatefulWidget {
  const rdt_Book({Key? key}) : super(key: key);

  @override
  State<rdt_Book> createState() => _rdt_BookState();
}

class _rdt_BookState extends State<rdt_Book> {
  final formkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController cniccontroller = TextEditingController();
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController strtaddresscontroller = TextEditingController();
  TextEditingController destinationcontroller = TextEditingController();

  final List<String> items = [
    "Toyota Vitz      Rs  4000/day ",
    'Toyota Yaris     Rs  6000/day ',
    'Toyota Hi-Roof   Rs 10000/day',
    'Toyota Pickup    Rs  8000/day',
    'Daewoo Bus       Rs 15000/day',
  ];
  String? selectedValue;


  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Book Your Road Trip"),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                sizedb20,

                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'Name',
                  ),
                  controller: namecontroller,
                  keyboardType: TextInputType.name,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your name';
                    }
                    else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                      return 'Enter valid name';
                    }
                    else {
                      return null;
                    }
                  },
                ),

                sizedb10,

                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'CNIC',
                    helperText: 'XXXXX-XXXXXXX-X',
                  ),
                  controller: cniccontroller,
                  keyboardType: TextInputType.number,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your CNIC';
                    }
                    else if(!RegExp(r'^[0-9]{5}[-][0-9]{7}[-][0-9]+$').hasMatch(value)){
                      return 'Enter valid CNIC';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                sizedb10,

                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'E-Mail Id',
                    helperText: 'example@domain.com',
                  ),
                  controller: mailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your E-Mail id';
                    }
                    else {
                      return null;
                    }
                  },

                ),
                sizedb10,

                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      labelText: 'Phone No.',
                      helperText: 'XXXX-XXXXXXX'
                  ),
                  controller: phonecontroller,
                  keyboardType: TextInputType.number,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your phone number';
                    }
                    else if(!RegExp(r'^[0-9]{4}[-\s\./0-9]+$').hasMatch(value)){
                      return 'Enter valid phone number';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                sizedb10,

                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'Address',
                  ),
                  controller: addresscontroller,
                  keyboardType: TextInputType.streetAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your address';
                    }
                    else {
                      return null;
                    }
                  },

                ),
                sizedb10,

                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'Starting Location',

                  ),
                  controller: strtaddresscontroller,
                  keyboardType: TextInputType.streetAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your Starting Address';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                sizedb10,

                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'Destination',
                  ),
                  controller: destinationcontroller,
                  keyboardType: TextInputType.streetAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your Destination';
                    }
                    else {
                      return null;
                    }
                  },
                ),
                sizedb20,

                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [

                        Expanded(
                          child: Text(
                            'Select Your Vehicle ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_down_sharp,
                    ),
                    iconSize: 14,
                    iconEnabledColor: Colors.black,
                    iconDisabledColor: Colors.white,
                    buttonHeight: 50,
                    buttonWidth: 160,
                    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    buttonElevation: 2,
                    itemHeight: 40,
                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                    dropdownMaxHeight: 200,
                    dropdownWidth: 200,
                    dropdownPadding: null,
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    // offset: const Offset(-20, 0),
                  ),
                ),
                sizedb20,
                sizedb20,
                sizedb20,
                ElevatedButton(
                    onPressed: () {
                      if(formkey.currentState!.validate()){
                      // final snackBar = SnackBar(
                      //   content: Text('Class booked successfully.'),
                      //   behavior: SnackBarBehavior.floating,
                      //   shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(10)
                      //   ),
                      // );
                      // _scaffoldKey.currentState!.showSnackBar(snackBar);
                      FirebaseFirestore.instance.collection("Road Trip Booking").add({
                        'Name':'${namecontroller.text}',
                        'CNIC':'${cniccontroller.text}',
                        'E-mail id':'${mailcontroller.text}',
                        'Contact':'${phonecontroller.text}',
                        'Address':'${addresscontroller.text}',
                        'Starting Location':'${strtaddresscontroller.text}',
                        'Destination':'${destinationcontroller.text}',

                         }
                      );
                      Navigator.pop(context);
                    }
                      // namecontroller.clear();
                      // cniccontroller.clear();
                      // mailcontroller.clear();
                      // phonecontroller.clear();
                      // addresscontroller.clear();
                      // strtaddresscontroller.clear();
                      // destinationcontroller.clear();
                    },
                    child: Text('Book Road Trip',)
                ),
                sizedb20,


              ],
            ),
          ),
        ),

      ),
    );
  }
}
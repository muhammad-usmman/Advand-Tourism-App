import 'package:travelling_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class cruise_Book extends StatefulWidget {
  const cruise_Book({Key? key}) : super(key: key);

  @override
  State<cruise_Book> createState() => _cruise_BookState();
}

class _cruise_BookState extends State<cruise_Book> {
  final formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController cnic = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController strtaddress = TextEditingController();
  TextEditingController destination = TextEditingController();

  final List<String> items = [
    "Thu, 25 June 2022     Rs  4000/day ",
    'Wed, 29 June 2022      Rs  6000/day ',
    'Tue, 5 July 2022    Rs 10000/day',
    'Sat, 16 july 2022   Rs  8000/day',
    'Fri, 23 June 2022       Rs 15000/day',
  ];
  String? selectedValue;


  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Book Your Cruise"),
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
                  controller: name,
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
                  controller: cnic,
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
                  controller: mail,
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
                  controller: phone,
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
                  controller: address,
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

                // TextFormField(
                //   decoration: InputDecoration(
                //     border: UnderlineInputBorder(
                //     ),
                //     labelText: 'Starting Location',
                //
                //   ),
                //   controller: strtaddress,
                //   keyboardType: TextInputType.streetAddress,
                //   validator: (value){
                //     if(value!.isEmpty){
                //       return 'Enter your Starting Addres s';
                //     }
                //     else {
                //       return null;
                //     }
                //   },
                // ),
                // sizedb10,

                // TextFormField(
                //   decoration: InputDecoration(
                //     border: UnderlineInputBorder(
                //     ),
                //     labelText: 'Destination',
                //   ),
                //   controller: destination,
                //   keyboardType: TextInputType.streetAddress,
                //   validator: (value){
                //     if(value!.isEmpty){
                //       return 'Enter your Starting Address';
                //     }
                //     else {
                //       return null;
                //     }
                //   },
                // ),
                // sizedb20,

                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [

                        Expanded(
                          child: Text(
                            'Select Your Time ',
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
                        final snackBar = SnackBar(
                          content: Text('Class booked successfully.'),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        );
                        _scaffoldKey.currentState!.showSnackBar(snackBar);
                      }
                      name.clear();
                      cnic.clear();
                      mail.clear();
                      phone.clear();
                      address.clear();
                      strtaddress.clear();
                      destination.clear();
                    },
                    child: Text('Book Cruise',)
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
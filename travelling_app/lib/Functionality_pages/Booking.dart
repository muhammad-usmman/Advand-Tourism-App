import 'package:flutter/material.dart';


class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  final _form = GlobalKey<FormState>(); //for storing form state.

//saving form after validation
  void _saveForm() {
    final isValid = _form.currentState.validate();
    if (!isValid) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          Text("Please fill in the details carefully"),
      Form(
      key: _form, //assigning key to form

      child: ListView(
        children: <Widget>[

          TextFormField(
            decoration: InputDecoration(labelText: 'Full Name'),
            validator: (text) {
              if (!(text.length > 5) && text.isNotEmpty) {
                return "Enter valid name of more then 5 characters!";
              }
              return null;
            },
          ),

          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            validator: (text) {
              if (!(text.contains('@')) && text.isNotEmpty) {
                return "Enter a valid email address!";
              }
              return null;
            },
          ),

          ElevatedButton(
            child: Text('Submit'),
            onPressed: () => _saveForm(),
          )
        ],
      ),
      ),

        ],
      ) ,
    );
  }
}

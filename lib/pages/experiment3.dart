// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Experiment3 extends StatefulWidget {
  const Experiment3({Key? key}) : super(key: key);

  @override
  State<Experiment3> createState() => _Experiment3State();
}

class _Experiment3State extends State<Experiment3> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Experiment No 3',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent.shade400,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Interactive Form",
                style: TextStyle(color: Colors.blue, fontSize: 50),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 50.0, horizontal: 10.0),
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Enter First Name",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter First Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Enter Last Name',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Last Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Enter your Roll No',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your Roll No';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Enter your Prn No',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter your Prn No';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 2),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Task Completed')),
                      );
                    }
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue, //background color of button
                      side: BorderSide(
                          width: 2,
                          color: Colors.black), //border width and color
                      elevation: 6, //elevation of button
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(30)),
                      padding:
                          EdgeInsets.all(20) //content padding inside button
                      ),
                ),
              ),
              // Add TextFormFields and ElevatedButton here.
            ],
          ),
        ),
      ),
    );
  }
}

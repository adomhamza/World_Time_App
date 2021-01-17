import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int count = 0;
  void getData() {
    Future.delayed(Duration(seconds: 3), () {
      print('object');
    });
  }

  @override
  void initState() {
    super.initState();
    print('initState function ran');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'sidebar.dart';
import './widgets/Description.dart';
import './widgets/Screens/assignment8.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider APP',
      home: MyHomePage(title: 'Assignments Stack'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xFF40c8c4),
      ),
      drawer: Sidebar(),
      body: assignment8(),
      
      
      // Center(
      //   child: description("Detailed Description of All Previous Assignments.")
      // )
    );
  }
}

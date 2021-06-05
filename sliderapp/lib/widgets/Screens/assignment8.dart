import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../Title.dart';
import '../../sidebar.dart';
import '../Description.dart';
import '../AppImages.dart';
import '../AppVideo.dart';

class assgnment8 extends StatelessWidget {
  const assgnment8({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     double _height =  MediaQuery.of(context).size.height;
     return Scaffold(
       backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Text('Assignment 8'),
       backgroundColor: Color(0xFF40c8c4),
      ),
      drawer: Sidebar(),
      
      body: ListView(
        children: [
           CarouselSlider(
          
            items: [
               title("Tabbar App"),
               description("A Mobile Application that have two Screens. One is a screen with Five tabs, to demonstrate five Buttons Widgets, one button per tab. Other is a screen with Six tabs, each to demonstrate Input & Selection Widgets, one widget per tab. It uses TabBar, TabBarView and TabController"),
               appImage('assets/images/t1.jpg' , _height),
               appImage('assets/images/t2.jpg' , _height),              
               appImage('assets/images/t3.jpg' , _height), 
               appImage('assets/images/t4.jpg' , _height),
               appImage('assets/images/t5.jpg' , _height),
               appImage('assets/images/t6.jpg' , _height),
               appImage('assets/images/t7.jpg' , _height),              
               appImage('assets/images/t8.jpg' , _height), 
               appImage('assets/images/t9.jpg' , _height),
               appImage('assets/images/t10.jpg' , _height),               
               appImage('assets/images/t11.jpg' , _height),               
               appImage('assets/images/t12.jpg' , _height),               
               appImage('assets/images/t13.jpg' , _height),               
               appVideo(url: 'assets/videos/tabbarvid.mp4'),
            ],

            //Slider Container properties
            options: CarouselOptions(
            height: _height,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 96000),
            viewportFraction: 0.8,
            )
          ),
        ],
      ),
    );
  }
}

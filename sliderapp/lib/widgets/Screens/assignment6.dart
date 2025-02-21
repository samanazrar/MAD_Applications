import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../Title.dart';
import '../../sidebar.dart';
import '../Description.dart';
import '../AppImages.dart';
import '../AppVideo.dart';
import '../vidHeading.dart';

class assgnment6 extends StatelessWidget {
  const assgnment6({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     double _height =  MediaQuery.of(context).size.height;
     return Scaffold(
       backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Text('Assignment 6'),
       backgroundColor: Color(0xFF40c8c4),
      ),
      drawer: Sidebar(),
      body: ListView(
        children: [
           CarouselSlider(
          
            items: [
               title("Image Uploader"),
               description("A mobile application that capture image from camera or select an image from gallery using ImagePicker then it shows image preview. Image can be cropped out as well using ImageCropper. After processing image can be uploaded to web-server using REST API with http post method."),
               appImage('assets/images/i1.jpg' ),
               appImage('assets/images/i2.jpg' ),              
               appImage('assets/images/i3.jpg' ), 
               appImage('assets/images/i4.jpg' ),
               appImage('assets/images/i5.jpg' ),
               appImage('assets/images/i6.jpg' ), 
               appImage('assets/images/i7.jpg' ),
               appImage('assets/images/i8.jpg' ),   
                    
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
          
          SizedBox(height: 25,),
          vidHeading(),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: appVideo(url: 'assets/videos/imgappvid.mp4'),       
          ),
          SizedBox(height: 25,),
        ],
      ),
    );
  }
}

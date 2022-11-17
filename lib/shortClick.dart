import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShortClick extends StatefulWidget
{
  String Name;
  String Image;
  String urls;
  ShortClick({ Key? key , required this.Name,required this.Image,required this.urls}) : super(key: key);
  @override
  State<ShortClick> createState() => _ShortCLick();

}

class _ShortCLick extends State<ShortClick>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Center(child:Container(
          height: double.infinity,width: double.infinity,child:ElevatedButton(
          child:Container(
            decoration: BoxDecoration(
                image:DecorationImage(image:AssetImage(widget.Image),fit: BoxFit.fill)),
          ),
          onPressed:()=> {launchURL(widget.urls)},
          style: ElevatedButton.styleFrom(padding: EdgeInsets.zero,
            fixedSize: const Size(double.infinity, double.infinity),)))),

    );
  }

}

launchURL( String url)
{
  launch(url);
}
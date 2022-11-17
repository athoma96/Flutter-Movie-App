import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class LongClick extends StatefulWidget
{
  String Name;
  String Info;
  String Cast;
  String Duration;
  String IMDB;
  String Rotten;

  LongClick({ Key? key , required this.Name,required this.Info, required this.Cast, required this.Duration,required this.IMDB, required this.Rotten}) : super(key: key);
  @override
  State<LongClick> createState() => _LongClick();

}

class _LongClick extends State<LongClick>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.Name, style: const TextStyle(fontSize: 35.0),),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(35), topRight: Radius.circular(35), bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35))),
      ),
      body:  Center(child:Container(child:Text("${widget.Info}\nCast: ${widget.Cast}\n\nRuntime: ${widget.Duration}\n\nIMDb Rating: ${widget.IMDB}\n\nRotten Tomato: ${widget.Rotten}",style: TextStyle(fontSize: 30),)
      )
      ),

    );
  }

}



launchURL( String url)
{
  launch(url);
}
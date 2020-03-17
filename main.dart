import 'package:flutter/material.dart';
import 'dart:math';


void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title:'BG changer',
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark(),
      home:Scaffold(
        appBar:AppBar(
          title:Text('Random Background By. Manikant Kumar'),
        ),
        body:HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
var colors=[
  Colors.amber,
  Colors.black,
  Colors.red,
  Colors.pink,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.greenAccent,
];
var colors1=[
  Colors.redAccent,
  Colors.black87,
  Colors.lightBlue,
  Colors.pinkAccent,
  Colors.yellowAccent,
  Colors.deepOrange,
  Colors.purpleAccent,
  Colors.green,
];
var currentColor=Colors.white;
var currentColor1=Colors.white10;
setRandomColor()
{
  var rand=Random().nextInt(colors.length);
  setState(() {
   currentColor=colors[rand];
   currentColor1=colors1[rand];
  });
}

  @override
  Widget build(BuildContext context) {
    return Container(
       color:currentColor,
       child:Center(
         child: RaisedButton(
           color:currentColor1,
           padding:EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
           child:Text('Change it!',
           style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.grey,
           ),
           ),
           onPressed:(){
             setRandomColor();
           },
           shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),

         ),
       ),
    );
  }
}

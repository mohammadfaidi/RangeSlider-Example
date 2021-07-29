import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
   double hslider = 0.0;
  double wslider = 0.0;
  @override
  Widget build(BuildContext context) {
      var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Column(

      children: [
        Text("Select your Height:",style: TextStyle(fontSize: 18,color: Colors.white),),
 Slider(
        value: hslider, 
        min: 0,
        max: 200,
        label:hslider.round().toString() ,
        activeColor: Colors.orange,
        inactiveColor: Colors.white,
        divisions: 200,
        onChanged: (val){
          setState(() {
                      hslider = val;
                    });
        }),
Text("$hslider",style: TextStyle(fontSize: 18,color: Colors.white),),

SizedBox(height: h*.08
          ,),
                  Text("Select your Weight:",style: TextStyle(fontSize: 18,color: Colors.white),),

        Slider(
        value: wslider, 
        min: 0,
        max: 200,
        label:wslider.round().toString() ,
        activeColor: Colors.orange,
        inactiveColor: Colors.white,
        divisions: 200,
        onChanged: (val){
          setState(() {
                      wslider = val;
                    });
        }),
Text("$wslider",style: TextStyle(fontSize: 18,color: Colors.white),)

      ],
    );
      
    
  }
}
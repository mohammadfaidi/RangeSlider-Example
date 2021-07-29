import 'package:flutter/material.dart';
import 'package:sliderproject/widgets/home_contats.dart';
import 'package:carousel_pro/carousel_pro.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double hslider = 0.0;
  double wslider = 0.0;
  RangeValues rangevalues = RangeValues(10,100);
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("BMI CALCULATROr"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          SizedBox(height: h*.08
          ,),
       HomeContent(),
      RangeSlider(values: rangevalues, 
      onChanged: (val){
        setState(() {
                  rangevalues = val;
                });
      },
      min: 0,
      max: 1000,
      activeColor: Colors.white,
      inactiveColor: Colors.orange,
      labels: RangeLabels(rangevalues.start.round().toString(),
      rangevalues.end.round().toString(),

      ),


      ),
      Text("$rangevalues",style: TextStyle(color: Colors.white),),
      
  SizedBox(height: h*.08
          ,),
     
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maa/utils/models.dart';

import '../Singletons.dart';

class PatientDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: Utilities().getScreenHeights(context)*.09,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(Patient.name,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),


                SizedBox(width: 1,),
              ]),
          Row(
            children: [
              Container(
                child: LeftUI(),
                width: MediaQuery.of(context).size.width/2,
              ),
              Container(
                child: RightUI(),
                width: MediaQuery.of(context).size.width/2,
              )
            ],
          )
        ],
      ),
    );
  }
}
class LeftUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            elevation: 20,
            child: Container(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("EMERGENCY CARE"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text("Find A Hospital"),
                          ],mainAxisAlignment: MainAxisAlignment.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("HOSPITAL"),
                            Text("BED AVAILABLE"),
                            Text("CRITICAL CARE AVAILABE"),
                            Text("PREBOOK"),
                          ],),
                        ),
                        Divider(),
                      ],
                    ),
                 RaisedButton(child: Text("Find an Ambulance"),
                 onPressed: (){

                 },
                 )

                  ],
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.redAccent, Colors.white])),
            ),
          ),
          SizedBox(height: 20,),
          Card(
            elevation: 20,
            child: Container(
              height: 250,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("YOUR HEALTH PROFILE"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("BMI"),
                        Text("1.5")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Known Medical Condition"),
                        Text("None")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("COVID 19 RISK"),
                        Text("HIGH")
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.greenAccent, Colors.white])),
            ),
          )
        ],
      ),
    );
  }
}

class RightUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            elevation: 20,
            child: Container(
              height: 250,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("CHECK HOW TO PREVENT COVID-19"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 12,
                          height: 12,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 20,),
                        Text("DRINK PLENTY OF WATER"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 12,
                          height: 12,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 20,),
                        Text("MAINTAIN SAFE DISTANCE"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 12,
                          height: 12,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 20,),
                        Text("WASH YOUR HANDS"),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.lightBlue, Colors.white])),
            ),
          ),
          SizedBox(height: 20,),
          Card(
            elevation: 20,
            child: Container(
              height: 250,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("CHECK HOW TO PREVENT COVID-19"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 12,
                          height: 12,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 20,),
                        Text("DRINK PLENTY OF WATER"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 12,
                          height: 12,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 20,),
                        Text("MAINTAIN SAFE DISTANCE"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 12,
                          height: 12,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 20,),
                        Text("WASH YOUR HANDS"),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.blueGrey, Colors.white])),
            ),
          )
        ],
      ),
    );
  }
}


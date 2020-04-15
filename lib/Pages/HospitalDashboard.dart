import 'package:flutter/material.dart';
import 'package:maa/Singletons.dart';
import 'package:maa/utils/models.dart';
import 'package:maa/widgets/donutchart.dart';
import 'package:maa/widgets/stackedAreaChart.dart';

class HospitalDashboard extends StatefulWidget {
  @override
  _HospitalDashboardState createState() => _HospitalDashboardState();
}

class _HospitalDashboardState extends State<HospitalDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: Utilities().getScreenHeights(context)*.05,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(Data.hospital_name,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),


              SizedBox(width: 1,),
            ]),
            Row(
              children: [
                Container(
                  child: Dashboard1(),
                  width: Utilities().getScreenWidth(context)/3,
                ),
                Container(
                  child: Dashboard2(),
                  width: Utilities().getScreenWidth(context)/3,
                ),
                Container(
                  child: Dashboard3(),
                  width: Utilities().getScreenWidth(context)/3,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text("Patient Turnover"),
                      Text("Distribution"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Medicine"),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Medicine"),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Medicine"),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Medicine"),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Medicine"),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                height: Utilities().getScreenHeights(context)*.34,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.redAccent, Colors.white])),
              ),
            ),
            Container(
              height: 200,
              child: StackedAreaLineChart.withSampleData(),

            )
          ],
        ),
      ),
    );
  }
}
class Dashboard2 extends StatefulWidget {
  @override
  _Dashboard2State createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Card(
              elevation: 4,
              child: Container(
                height: Utilities().getScreenHeights(context)*.34,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.lightBlueAccent, Colors.white])),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    
                    children: [
                      Text("Bed Occupancy:"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Medicine"),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Surgery"),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gynaecology and Obstetrics"),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Super Speciality"),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          ),

                            ],
                          ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Critical Care "),
                          Text("21"),
                          Container(
                            width: 60,
                            height: 60,
                            child: DonutPieChart.withSampleData(),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 14,
                                height: 14,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 10,),
                              Text("Availability")
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 14,
                                height: 14,
                                color: Colors.blueAccent[100],
                              ),
                              SizedBox(width: 10,),
                              Text("Occupied")
                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              child: StackedAreaLineChart.withSampleData(),

            )

          ],
        ),
      ),
    );
  }
}

class Dashboard3 extends StatefulWidget {
  @override
  _Dashboard3State createState() => _Dashboard3State();
}

class _Dashboard3State extends State<Dashboard3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 4,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 650,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.lightGreen, Colors.white])),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: [

                          Expanded(child: Text("Select Item")),
                          SizedBox(width: 5,),
                          Expanded(child: Text("Required Stock")),
                          SizedBox(width: 5,),

                          Expanded(child: Text("Availablity Stock")),
                          SizedBox(width: 5,),

                          Expanded(child: Text("To be Intdented")),
                          SizedBox(width: 5,),

                          Expanded(child: Text("Quantity")),


                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [

                            Expanded(child: Text("Item 1")),
                            SizedBox(width: 5,),
                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                          Container(
                            width: 40,
                            child:
                            TextFormField(decoration: InputDecoration(hintText: "0"),),
                          ),


                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [

                            Expanded(child: Text("Item 1")),
                            SizedBox(width: 5,),
                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                            Container(
                              width: 40,
                              child:
                              TextFormField(decoration: InputDecoration(hintText: "0"),),
                            ),


                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [

                            Expanded(child: Text("Item 2")),
                            SizedBox(width: 5,),
                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                            Container(
                              width: 40,
                              child:
                              TextFormField(decoration: InputDecoration(hintText: "0"),),
                            ),


                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [

                            Expanded(child: Text("Item 3")),
                            SizedBox(width: 5,),
                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Container(
                              width: 40,
                              child:
                              TextFormField(decoration: InputDecoration(hintText: "0"),),
                            ),


                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [

                            Expanded(child: Text("Item 4")),
                            SizedBox(width: 5,),
                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Container(
                              width: 40,
                              child:
                              TextFormField(decoration: InputDecoration(hintText: "0"),),
                            ),


                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [

                            Expanded(child: Text("Item 5")),
                            SizedBox(width: 5,),
                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                            Container(
                              width: 40,
                              child:
                              TextFormField(decoration: InputDecoration(hintText: "0"),),
                            ),


                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [

                            Expanded(child: Text("Item 6")),
                            SizedBox(width: 5,),
                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                            Container(
                              width: 40,
                              child:
                              TextFormField(decoration: InputDecoration(hintText: "0"),),
                            ),


                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [

                            Expanded(child: Text("Item 7")),
                            SizedBox(width: 5,),
                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("")),
                            SizedBox(width: 5,),

                            Expanded(child: Text("10")),
                            SizedBox(width: 5,),

                            Container(
                              width: 40,
                              child:
                              TextFormField(decoration: InputDecoration(hintText: "0"),),
                            ),


                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      RaisedButton(child: Text("Place Order"),
                      onPressed: (){

                      },
                      )
                    ],
                  ),
                )
              ),
            ),

          ],
        ),
      ),
    );
  }
}


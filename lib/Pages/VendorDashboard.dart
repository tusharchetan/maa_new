import 'package:flutter/material.dart';
import 'package:maa/utils/models.dart';

import '../Singletons.dart';

class VendorDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: Utilities().getScreenHeights(context)*.05,

                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),
              Text(Vendor.suppylier_name,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
             SizedBox(width: 30,)
            ],),
          SizedBox(height: 40,),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "VENDOR SUMMARY"
                      ,style: TextStyle(fontWeight: FontWeight.bold),),

                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Registration Number :"),
                          Text(Vendor.reg_num)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Registration NAME :"),
                          Text(Vendor.owner_name)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ITEMS TO BE SUPPLIED: :"),
                          Text("PPPP,QQQQ,RRRR")
                        ],
                      ),
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Current Demand",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("ITEM"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Quantity"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Day to Deliver"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Price quote"),),
                      ],
                    ),
                    Divider(thickness: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("PQ"),
                        SizedBox(width: 100,),
                        Text("123"),
                        SizedBox(width: 20,),
                        Container(width: 90,child: TextFormField(),),
                        SizedBox(width: 1,),
                        Container(width: 90,child: TextFormField(),),
                        SizedBox(width: 10,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("PQ"),
                        SizedBox(width: 100,),
                        Text("123"),
                        SizedBox(width: 20,),
                        Container(width: 90,child: TextFormField(),),
                        SizedBox(width: 1,),
                        Container(width: 90,child: TextFormField(),),
                        SizedBox(width: 10,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("PQ"),
                        SizedBox(width: 100,),
                        Text("123"),
                        SizedBox(width: 20,),
                        Container(width: 90,child: TextFormField(),),
                        SizedBox(width: 1,),
                        Container(width: 90,child: TextFormField(),),
                        SizedBox(width: 10,)
                      ],
                    ),
                    RaisedButton(child: Text("Place BID"),
                    onPressed: (){

                    },)
                  ],
                ),
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Bid History",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("Bid Number"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Item"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Price Quote"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Time"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Date of Placing"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Bid Status"),),
                      ],
                    ),
                    Divider(thickness: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("231"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("132.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/01/21"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Success"),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("231"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("132.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/01/21"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Success"),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("231"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("132.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/01/21"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Success"),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("231"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("132.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/01/21"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Success"),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("231"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("132.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/01/21"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Success"),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("231"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("132.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/01/21"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Success"),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("231"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("132.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/01/21"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Success"),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("231"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("132.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/01/21"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Success"),),
                      ],
                    ),
                  ],
                ),
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("PENDING BID RESULTS:",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("Bid Number"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Item"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Price Quote"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Time"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Date of Placing"),),
                      ],
                    ),
                    Divider(thickness: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("123"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("432.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/11/20"),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("123"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("432.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/11/20"),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("123"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("432.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/11/20"),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("123"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("432.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/11/20"),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("123"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("432.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/11/20"),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("123"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("432.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/11/20"),),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("123"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("P"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("432.32"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("12"),),
                        SizedBox(width: 10,),
                        Expanded(child: Text("01/11/20"),),

                      ],
                    ),
                  ],
                ),
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


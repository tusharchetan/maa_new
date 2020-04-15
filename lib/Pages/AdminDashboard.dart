import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(child: Column(

          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("COVID-19 TRACKER ADMIN DASHBOARD",style: TextStyle(fontSize: 30),),
                ),
                SizedBox(width: 1,)
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Row(
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width/6,
                    child: MiddleUI()),
                Container(
                    width: MediaQuery.of(context).size.width/3,
                    child: LeftUI()),

                Container(
                    width: MediaQuery.of(context).size.width/3,
                    child: RightUI()),
                Container(
                    width: MediaQuery.of(context).size.width/6,
                    child: MiddleUI()),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

class LeftUI extends StatefulWidget {
  @override
  _LeftUIState createState() => _LeftUIState();
}

class _LeftUIState extends State<LeftUI> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 1350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Card(
              elevation: 20,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.orangeAccent
                        ,
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Align(alignment: Alignment.center,child: Text("COVID 19 TRACKER",style: TextStyle(color: Colors.white),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage("assets/images/indiaMap.png"),height: 200,),
                      ),
                      Container(
                        color: Colors.orangeAccent
                        ,
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Align(alignment: Alignment.center,child: Text("ADMIN FILL IN",style: TextStyle(color: Colors.white),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: <Widget>[
                            RaisedButton(child: Text("Select District"),onPressed: (){},),
                            RaisedButton(child: Text("Select Pin"),onPressed: (){},)
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: <Widget>[
                            Text("No of Tested Person"),
                            Container(
                              width: 50,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: (InputDecoration(

                                  hintText: "0"
                                )),
                              ),
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: <Widget>[
                            Text("NO. TEST RESULTS"),
                            Container(
                              width: 50,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: (InputDecoration(

                                    hintText: "0"
                                )),
                              ),
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: <Widget>[
                            Text("NO. POSITIVE"),
                            Container(
                              width: 50,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: (InputDecoration(

                                    hintText: "0"
                                )),
                              ),
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Container(
                        color: Colors.orangeAccent
                        ,
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Align(alignment: Alignment.center,child: Text("HOTSPOT (HS) ASSIGNED",style: TextStyle(color: Colors.white),)),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RaisedButton(
                            child: Text("Select Pin"),
                            onPressed: (){},
                          ),
                          Container(
                            width: 100,
                            child: TextFormField(
                              decoration: InputDecoration(labelText: "Enter HS"),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          RaisedButton(
                            child: Text("Add"),
                            onPressed: (){},
                          )
                        ],
                      ),

                      Divider(),
                      SizedBox(height: 150,),
                      Container(
                        color: Colors.orangeAccent
                        ,
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Align(alignment: Alignment.center,child: Text("VOLUNTEER (V)",style: TextStyle(color: Colors.white),)),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RaisedButton(
                            child: Text("Select Pin"),
                            onPressed: (){},
                          ),
                          Container(
                            width: 100,
                            child: TextFormField(
                              decoration: InputDecoration(labelText: "Enter V"),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          RaisedButton(
                            child: Text("Add"),
                            onPressed: (){},
                          )
                        ],
                      ),

                      Divider(),
                      SizedBox(height: 150,),
                      RaisedButton(child: Text("Confirm"),onPressed: (){},)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class RightUI extends StatefulWidget {
  @override
  _RightUIState createState() => _RightUIState();
}

class _RightUIState extends State<RightUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1319,
      child: Card(
        elevation: 20,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.orangeAccent
              ,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Align(alignment: Alignment.center,child: Text("POPULATION TRACKER",style: TextStyle(color: Colors.white),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("TOTAL USER BASE"),
                  Container(
                    width: 50,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "0"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("COVID19 SUSPECT"),
                  Container(
                    width: 50,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "0"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("No. of TESTED"),
                  Container(
                    width: 50,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "0"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("POSITIVITY RATE"),
                  Container(
                    width: 50,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "0"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.orangeAccent
              ,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Align(alignment: Alignment.center,child: Text("HOSPITAL TRACKER",style: TextStyle(color: Colors.white),)),
            ),
            Align(alignment: Alignment.center,
              child: Text("Bed Avaibility",style: TextStyle(fontSize: 20),),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        MaterialButton(),
                        RaisedButton(child: Text("Select Name"),onPressed: (){},)
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("G",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("C",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("I  ",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 30,
                              child: TextFormField(

                              ),
                            ),
                            Container(
                              width: 30,
                              child: TextFormField(

                              ),
                            ),
                            Container(
                              width: 30,
                              child: TextFormField(

                              ),
                            )

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(alignment: Alignment.center,
              child: Text("Stock Requirement",style: TextStyle(fontSize: 20),),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                   width: 200,
                    child: Column(
                      children: [
                        MaterialButton(),
                        RaisedButton(child: Text("Select Name"),onPressed: (){},)
                      ],
                    ),
                  ),
                  Container(
                  width: 200,
                    child: Column(
                      children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("R",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("A",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("In  ",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 30,
                              child: TextFormField(

                              ),
                            ),
                            Container(
                              width: 30,
                              child: TextFormField(

                              ),
                            ),
                            Container(
                              width: 30,
                              child: TextFormField(

                              ),
                            )

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.orangeAccent
              ,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Align(alignment: Alignment.center,child: Text("WORKFORCE TRACKER",style: TextStyle(color: Colors.white),)),
            ),
            Align(alignment: Alignment.center,
              child: Text("District wise Volunteer",style: TextStyle(fontSize: 20),),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        MaterialButton(),
                        RaisedButton(child: Text("Select Name"),onPressed: (){},)
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("#Hostpot",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("#Volunteer",style: TextStyle(fontWeight: FontWeight.bold),),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 60,
                              child: TextFormField(

                              ),
                            ),
                            Container(
                              width: 60,
                              child: TextFormField(

                              ),
                            ),


                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage("assets/images/indiaMap.png"),height: 200,),
            ),
            Text("Hotspot Map")
          ],
        ),
      ),
    );
  }
}
class MiddleUI extends StatefulWidget {
  @override
  _MiddleUIState createState() => _MiddleUIState();
}

class _MiddleUIState extends State<MiddleUI> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

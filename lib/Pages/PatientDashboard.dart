
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maa/utils/api.dart';
import 'package:maa/utils/models.dart';
import 'package:maa/widgets/chatbot.dart';
import 'package:maa/widgets/quiz/category.dart';
import 'package:maa/widgets/quiz/demo_values.dart';
import 'package:maa/widgets/quiz/questions.dart';
import 'package:maa/widgets/quiz/quiz_page.dart';

import '../Singletons.dart';

class PatientDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            elevation: 20,
            child: Container(
              height: 350,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: <Widget>[
                      Container(
                        height: 55,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("EMERGENCY CARE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        color: Colors.blue,
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
                            Text("HOSPITAL",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("BED AVAILABLE",style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("PREBOOK",style: TextStyle(fontWeight: FontWeight.bold)),
                          ],),
                      ),

                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Max Hospital"),
                            Text("YES"),
                            Text("NO"),
                            RaisedButton(child: Text("Apply Here"),onPressed: (){
                              return showDialog<void>(
                                  context: context,
                                  barrierDismissible: false, // user must tap button!
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Are you sure?'),
                                      content: SingleChildScrollView(
                                        child: ListBody(
                                          children: <Widget>[
                                            Text("Are you sure want to book?"),
                                            Text(''),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        FlatButton(
                                          child: Text('Yes'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            Flushbar(title: "Booking status:",message: "Hospital sucessfully booked. You will recieve a booking sms shortly",isDismissible: true,duration: Duration(seconds: 2,),backgroundColor: Colors.green,).show(context);
                                          },
                                        ),
                                        FlatButton(
                                          child: Text('No'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  });

                            },)
                          ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("City Hospital"),
                            Text("NO"),
                       //     Text("YES"),
                            RaisedButton(child: Text("Apply Here"),onPressed: (){
                              return showDialog<void>(
                                context: context,
                                barrierDismissible: false, // user must tap button!
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Sorry'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Text('Selected Hospital have no any remaining bed'),
                                          Text('Please check other hospital'),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text('Regret'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },)
                          ],),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RaisedButton(child: Text("Find an Ambulance"),
                        onPressed: (){
                          TextFormField textform = new TextFormField();
                          return showDialog<void>(
                              context: context,
                              barrierDismissible: false, // user must tap button!
                              builder: (BuildContext context) {

                                return AlertDialog(
                                  title: Text('Enter your Details'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        TextFormField(
                                          decoration: InputDecoration(
                                              icon: Icon(Icons.location_on),
                                              labelText: "Enter your Address"
                                          ),
                                        ),
                                        TextFormField(

                                          decoration: InputDecoration(
                                              icon: Icon(Icons.phone),
                                              labelText: "Enter your Mobile Number"
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text('Confirm'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    FlatButton(
                                      child: Text('Cancel'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                      RaisedButton(child: Text("Search Hospital"),
                        onPressed: (){
                          TextEditingController textedit = new TextEditingController();
                          return showDialog<void>(
                              context: context,
                              barrierDismissible: false, // user must tap button!
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, setState)
                                    {

                                      return AlertDialog(
                                        title: Row(
                                          children: <Widget>[
                                            Icon(Icons.local_hospital),
                                            Text('Search Hospital'),
                                          ],
                                        ),
                                        content: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ListBody(
                                              children: <Widget>[
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 300,
                                                      child: TextFormField(
                                                        controller: textedit,
                                                        decoration: InputDecoration(labelText: "Enter Hospital Name"),),
                                                    ),
                                                    SizedBox(width: 40,),
                                                    IconButton(
                                                      icon: Icon(Icons.search),
                                                      onPressed: (){
                                                              setState(() {

                                                              });
                                                      },
                                                    ),


                                                  ],
                                                ),
                                                Container(
                                                  height: 300,
                                                  width: 800,
                                                  child: FutureBuilder(
                                                      future: Api().searchHospital(textedit.text),
                                                      builder: (BuildContext context2,
                                                          AsyncSnapshot<dynamic> snapshot) {
                                                        //   print("sssss"+snapshot.data);
                                                        if(snapshot.data==null)
                                                          return Center(
                                                            child: Text("No Hospital Found"),
                                                          );
                                                        else
                                                          return
                                                            SingleChildScrollView(
                                                              child: Column(
                                                                children: <Widget>[
                                                                  Container(

                                                                    child: Padding(
                                                                      padding: const EdgeInsets.all(18.0),
                                                                      child: Row(
                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Container(width: 200,child: Text("Hospital Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                                                                          Text("Availabe Beds",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                                                          Text("PreBook",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    color: Colors.redAccent,
                                                                  ),
                                                                  new ListView.builder(

                                                                      shrinkWrap: true,
                                                                      itemCount: snapshot.data.length,
                                                                      itemBuilder: (BuildContext context, int index) {
                                                                        var currItem = snapshot.data[index];
                                                                        return Container(
                                                                          height: 60,
                                                                          color: index%2==0?Colors.orangeAccent:Colors.orange[200],
                                                                          child: Padding(
                                                                            padding: const EdgeInsets.all(18.0),
                                                                            child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Container(
                                                                                  width: 150,
                                                                                    child: Text(currItem["hospital_name"],style: TextStyle(color: index%2==0?Colors.white:Colors.black),)),
                                                                                Text(currItem["totSeat"],style: TextStyle(color: index%2==0?Colors.white:Colors.black),),
                                                                                RaisedButton(child: Text("Book Now"),onPressed: (){
                                                                                        Api().bookBed(currItem["hospital_name"], currItem["contact_num"]).then((value){
                                                                                          print(value);
                                                                                          setState(() {
                                                                                                          setState(() {

                                                                                                          });
                                                                                          });
                                                                                          if(value["status"]=="000")
                                                                                            {
                                                                                              Navigator.pop(context);
                                                                                              Flushbar(title: "Success",message: "Sucessfully booked . you will recieve a confirmation Message shortly",duration: Duration(seconds: 2),backgroundColor: Colors.green,).show(context);
                                                                                            }
                                                                                        });
                                                                                },)
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }),
                                                                ],
                                                              ),
                                                            );
                                                      }
                                                  ) ,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        actions: <Widget>[
                                          FlatButton(
                                            child: Text('Confirm'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          FlatButton(
                                            child: Text('Cancel'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    }
                                );
                              });
                        }
                        ,
                      ),
                    ],
                  )

                ],
              ),

            ),
          ),
          SizedBox(height: 20,),
          Card(
            elevation: 20,
            child: Container(
              height: 300,
              child: Column(
                children: [
                  Container(
                    height: 55,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("PERSONAL MEDICAL CONDITION",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("BMI"),
                        Text("GOOD",style: TextStyle(color: Colors.green),)
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
                        Text("HIGH",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ],
              ),

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            elevation: 20,
            child: Container(
              height: 350,
              child: Column(
                children: [
                  Container(

                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("HOW TO PREVENT COVID-19",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                    ),
                    color: Colors.blue,
                  ),
                 Row(
                   children: [
                     Container(
                       width: 311,
                       child: Column(
                         children: [
                           Text("HOW IT SPREADS",style: TextStyle(fontWeight: FontWeight.bold),),
                           Divider(thickness: 3,),
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
                                 Text("AIR BY COUGH OR SNEEZE"),
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
                                 Text("PERSONAL CONTACT"),
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
                                 Text("CONTAMINATED OBJECTS"),
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
                                 Text("MASS GATHERING"),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       width: 320,
                       child: Column(
                         children: [
                           Text("Prevention".toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
                           Divider(thickness: 3,),
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
                                 Text("WASH YOUR HANDS OFTEN"),
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
                                 Text("WEAR A FACE MASK"),
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
                                 Text("AVOID CONTACT WITH SICK PEOPLE"),
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
                                 Text("ALWAYS COVER YOUR COUGH OR SNEEZE"),
                               ],
                             ),
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
                  SizedBox(height: 70,),
                  RaisedButton(
                    child: Text("Check your Covid risk factor"),
                    onPressed: (){
                      Category category = categories[0];
                      print(category.name);
                      List<Question> questions = demoQuestions;
                      Navigator.push(context, CupertinoPageRoute(builder: (context)=> QuizPage(questions: questions, category: category,)));

                    },
                  )
                ],
              ),

            ),
          ),
          SizedBox(height: 20,),
          Card(
            elevation: 20,
            child: Container(
              height: 300,
                child: ChatTwoPage(),
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



import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:maa/utils/api.dart';
import 'package:maa/utils/models.dart';

import '../Singletons.dart';

class SignupPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                  Text("MAA SIGN UP PAGE"),
                  RaisedButton(child: Text("Submit"),
                    onPressed: (){

                      Api().signupPatient().then((value){

                        if(value["status"]=="000")
                        {
                          Navigator.pop(context);
                          Flushbar(title: "Signup status:",message:value["msg"].toString(),isDismissible: true,duration: Duration(seconds: 3),backgroundColor: Colors.green,).show(context);

                        }
                        Flushbar(title: "Signup status:",message:value["msg"].toString(),isDismissible: true,duration: Duration(seconds: 3),backgroundColor: Colors.green,).show(context);

                        //  Navigator.pop(context);
                    //    Flushbar(title: "Signup status:",message:value["msg"].toString(),isDismissible: true,duration: Duration(seconds: 3),).show(context);
                      });
                    },)
                ],),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: PatientSignUP1(),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: PatientSignUp3(),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: PatientSignUP2(),
                      )),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PatientSignUP1 extends StatelessWidget {
  TextEditingController _textEditingController1 = new TextEditingController();
  TextEditingController _textEditingController2 = new TextEditingController();
  TextEditingController _textEditingController3 = new TextEditingController();
  TextEditingController _textEditingController4 = new TextEditingController();
  TextEditingController _textEditingController5 = new TextEditingController();
  TextEditingController _textEditingController6 = new TextEditingController();
  TextEditingController _textEditingController7 = new TextEditingController();
  TextEditingController _textEditingController8 = new TextEditingController();
  TextEditingController _textEditingController9 = new TextEditingController();
  TextEditingController _textEditingController10 = new TextEditingController();
  TextEditingController _textEditingController11 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    _textEditingController1.text=Patient.name;
    _textEditingController5.text=Patient.pincode;
    _textEditingController8.text=Patient.email;
    _textEditingController7.text=Patient.mobile;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("General Information",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Supplier Name*",
                  icon: Icon(Icons.directions_car),

              ),
              readOnly: true,
              onChanged: ((val){
                Patient.name=val;
              }),
              onSubmitted: ((val){
                Patient.name =val;
                print(Data.hospital_name);
              }),
              onEditingComplete: (){
                Patient.name=_textEditingController1.text;
                print(Data.hospital_name);
              },
              controller: _textEditingController1,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Address",
                  icon: Icon(Icons.location_on)
              ),
              controller: _textEditingController3,
              onChanged: ((val){
                Patient.location=val;
              }),
            ),
            TextField(
              onChanged: ((val){
                Patient.city=val;
              }),
              decoration: InputDecoration(
                  labelText: "City",
                  icon: Icon(Icons.location_city)
              ),
              controller: _textEditingController4,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              readOnly: true,
              decoration: InputDecoration(
                  labelText: "PinCode",
                  icon: Icon(Icons.pin_drop)
              ),
              controller: _textEditingController5,
              onChanged: ((val){
                Patient.pincode=val;
              }),
            ),

            TextField(
              readOnly: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Contact Number*",
                  icon: Icon(Icons.call)
              ),
              controller: _textEditingController7,
              onChanged: ((val){
                Patient.mobile=val;
              }),
            ),
            TextField(
              readOnly: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Email",
                  icon: Icon(Icons.email)
              ),
              controller: _textEditingController8,
              onChanged: ((val){
                Patient.email=val;
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Emergency Contact",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Name*",
                  icon: Icon(Icons.person)
              ),
              controller: _textEditingController9,
              onChanged: ((val){
                Patient.emercy_contact_name=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Address",
                  icon: Icon(Icons.location_city)
              ),
              controller: _textEditingController10,
              onChanged: ((val){
                Patient.emercy_contact_address=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Contact Number",
                  icon: Icon(Icons.phone)
              ),
              controller: _textEditingController11,
              onChanged: ((val){
                Patient.emercy_contact_name=val;
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class PatientSignUP2 extends StatefulWidget {
  @override
  _PatientSignUP2State createState() => _PatientSignUP2State();
}

class _PatientSignUP2State extends State<PatientSignUP2> {
  bool q1 = false;
  bool q2 = false;
  bool q3 = false;
  bool q4 = false;
  bool q5 = false;
  bool q6 = false;
  bool q7 = false;
  bool q8 = false;
  bool q9 = false;
  bool q10 = false;
  bool q11 = false;
  bool q12 = false;
  bool q13 = false;
  bool q14 = false;
  bool q15 = false;
  bool q16 = false;


  Widget checkbox(String title, bool boolValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            if(title=="Diabetes*") {
              q1 = !q1;
              if(q1)
                Patient.dibeties_status="1";
              else
                Patient.dibeties_status="0";
            }
            else if(title=="Hypertension(Pressure)*") {
              q2 = !q2;
              if(q2)
                Patient.dibeties_status="1";
              else
                Data.blood_bank="0";
            }
            else if(title=="Asthama*") {

              q3 = !q3;
              if(q3)
                Data.emergency_service_24_avil="1";
              else
                Data.emergency_service_24_avil="0";
            }
            else if(title=="COPD*") {

              q4 = !q4;
              if(q4)
                Data.labour_room="1";
              else
                Data.labour_room="0";
            }
            else if(title=="Chronic Kidney Disease*") {

              q5 = !q5;
              if(q5)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Chronic Liver Disease*") {
              q6 = !q6;
              if(q6)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Cancer*") {
              q7 = !q7;
              if(q7)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Arthritis*") {
              q8 = !q8;
              if(q8)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Heart Disease*") {
              q9 = !q9;
              if(q9)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Glucoma*") {
              q10 = !q10;
              if(q10)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Cataract*") {
              q11 = !q11;
              if(q11)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Paralysis*") {
              q12 = !q12;
              if(q12)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Limb loss*") {
              q13 = !q13;
              if(q13)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Orthopedic deformity*") {
              q14 = !q14;
              if(q11)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Blindness*") {
              q15 = !q15;
              if(q11)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            else if(title=="Deafness*") {
              q16 = !q16;
              if(q11)
                Data.critical_room="1";
              else
                Data.critical_room="0";
            }
            setState(() {

            });
          },
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Choose Known Medical Condition",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
          ),
          checkbox("Diabetes*", q1),
          checkbox("Hypertension(Pressure)*", q2),
          checkbox("Asthama*", q3),
          checkbox("COPD*", q4),
          checkbox("Chronic Kidney Disease*", q5),
          checkbox("Chronic Liver Disease*", q6),
          checkbox("Cancer*", q7),
          checkbox("Arthritis*", q8),
          checkbox("Heart Disease*", q9),
          checkbox("Glucoma*", q10),
          checkbox("Cataract*", q11),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Choose Disability Status",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),

          ),
          checkbox("Paralysis*", q12),
          checkbox("Limb loss*", q13),
          checkbox("Orthopedic deformity*", q14),
          checkbox("Blindness*", q15),
          checkbox("Deafness*", q16),
        ],
      ),
    );
  }
}

class PatientSignUp3 extends StatefulWidget {
  @override
  _PatientSignUp3State createState() => _PatientSignUp3State();
}

class _PatientSignUp3State extends State<PatientSignUp3> {
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;
  bool thurVal = false;
  bool friVal = false;
  bool satVal = false;
  bool sunVal = false;
  bool munVal = false;
  Widget checkbox(String title, bool boolValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(child: Text(title)),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            if(title=="Fever*") {
              monVal = !monVal;
              if(monVal)
                Patient.fever="1";
              else
                Patient.fever="0";
            }
            else if(title=="Sore Throat*") {
              tuVal = !tuVal;
              if(tuVal)
                Patient.Sore_throat ="1";
              else
                Patient.Sore_throat="0";
            }
            else if(title=="Dry Cough*") {

              wedVal = !wedVal;
              if(wedVal)
                Patient.dry_cought="1";
              else
                Patient.dry_cought="0";
            }
            else if(title=="Difficulty in Breathing*") {

              thurVal = !thurVal;
              if(thurVal)
                Patient.difficult_in_breathing="1";
              else
                Patient.difficult_in_breathing="0";
            }
            else if(title=="Runny Nose*") {
              friVal = !friVal;
              if(friVal)
                Patient.runny_nose="1";
              else
                Patient.runny_nose="0";
            }
            else if(title=="Do you have a family member with any of the above symptoms*") {
              satVal = !satVal;
              if(satVal)
                Patient.family_member_of_any_symptoms="1";
              else
                Patient.family_member_of_any_symptoms="0";
            }
            else if(title=="Are you a health care worker*") {
              sunVal = !sunVal;
              if(sunVal)
                Patient.are_you_health_care_worker="1";
              else
                Patient.are_you_health_care_worker="0";
            }
            else if(title=="Did you have any international travel in last 30 days*") {
              munVal = !munVal;
              if(munVal)
                Patient.international_travel_last_30_days="1";
              else
                Patient.international_travel_last_30_days="0";
            }
            setState(() {

            });
          },
        )
      ],
    );
  }
  String gender,bloodGroup;
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  List<DropdownMenuItem<String>> _dropDownBloodGroupItems;
  List _genderType = ["Male", "Female", "Other"];
  List _yesNo = ["Yes", "No", ];
  void _GenderChanged(String selectedDist) {
    print(selectedDist);
    setState(() {
      setState(() {
        gender=selectedDist;
        Patient.gender=selectedDist;
      });

      //   currentBlock = _dropDownMenuItems2[0].value;
    });
  }
  List _BloodGroup = ["A +ve", "A -ve", "B +ve","B -ve","AB +ve","AB -ve","O +ve","O -ve" ];
  void _BloodGroupChanged(String selectedDist) {
    print(selectedDist);
    setState(() {
      setState(() {
        bloodGroup = selectedDist;
        Patient.blood_group=bloodGroup;
      });

      //   currentBlock = _dropDownMenuItems2[0].value;
    });
  }
  List<DropdownMenuItem<String>> getDropDownMenuItems() {

    List<DropdownMenuItem<String>> items = new List();
    for (String city in _genderType) {
      items.add(new DropdownMenuItem(value: city, child: new Text(city)));
    }
    return items;
  }
  List<DropdownMenuItem<String>> getDropDownBloodGroupItems() {

    List<DropdownMenuItem<String>> items = new List();
    for (String groups in _BloodGroup) {
      items.add(new DropdownMenuItem(value: groups, child: new Text(groups)));
    }
    return items;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dropDownMenuItems = getDropDownMenuItems();
    _dropDownBloodGroupItems=getDropDownBloodGroupItems();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Personal Information",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: "Age (Years)",
                icon: Icon(Icons.perm_contact_calendar)
            ),
            onChanged: ((val){
              Patient.age=val;
            }),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: "Height (in cms)",
                icon: Icon(Icons.perm_contact_calendar)
            ),
            onChanged: ((val){
              Patient.height=val;
            }),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: "Weight (in KG)",
                icon: Icon(Icons.perm_contact_calendar)
            ),
            onChanged: ((val){
             Patient.weight=val;
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  DropdownButton(
              elevation: 3,
              isExpanded: true,
              value: gender,
              icon: Icon(Icons.person_outline),
              hint: Text("Select Gender"),
              items: _dropDownMenuItems,
              onChanged: _GenderChanged,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  DropdownButton(
              elevation: 3,
              isExpanded: true,
              value: bloodGroup,
              icon: Icon(Icons.person_outline),
              hint: Text("Select Blood Group"),
              items: _dropDownBloodGroupItems,
              onChanged: _BloodGroupChanged,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("COVID19 Risk Assessment",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text("Check the symptoms you have")),
          checkbox("Fever*", monVal),
          checkbox("Sore Throat*", tuVal),
          checkbox("Dry Cough*", wedVal),
          checkbox("Difficulty in Breathing*", thurVal),
          checkbox("Runny Nose*", friVal),
          checkbox("Do you have a family member with any of the above symptoms*", satVal),
          checkbox("Are you a health care worker*", sunVal),
          checkbox("Did you have any international travel in last 30 days*", munVal),

        ],
      ),
    );
  }
}


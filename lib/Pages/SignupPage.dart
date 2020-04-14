import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maa/Singletons.dart';
import 'package:maa/utils/api.dart';
import 'package:maa/utils/models.dart';

class SignUpHospitalPage extends StatefulWidget {
  @override
  _SignUpHospitalPageState createState() => _SignUpHospitalPageState();
}

class _SignUpHospitalPageState extends State<SignUpHospitalPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
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
                Text("MAA SIGN UP PAGE"),
                RaisedButton(child: Text("Submit"),
                onPressed: (){
                //  Navigator.pop(context);
                  Api().signup().then((value){
                    if(value["status"]=="000")
                    {
                      Navigator.pop(context);
                      Flushbar(title: "Signup status:",message:value["msg"].toString(),isDismissible: true,duration: Duration(seconds: 3),backgroundColor: Colors.green,).show(context);

                    }
                    Flushbar(title: "Signup status:",message:value["msg"].toString(),isDismissible: true,duration: Duration(seconds: 3),backgroundColor: Colors.green,).show(context);

                  });
                },)
              ],),
              Row(
                children: [
                  Container(width: Utilities().getScreenWidth(context)/3,
                      child: HospitalSignup1()
                  ),
                  Container(
                    width: Utilities().getScreenWidth(context)/3,
                      child: HospitalSignup2()),
                  Container(
                    width: Utilities().getScreenWidth(context)/3,
                      child: HospitalSignup3())
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HospitalSignup1 extends StatelessWidget {
  TextEditingController _textEditingController1 = new TextEditingController();
  TextEditingController _textEditingController2 = new TextEditingController();
  TextEditingController _textEditingController3 = new TextEditingController();
  TextEditingController _textEditingController4 = new TextEditingController();
  TextEditingController _textEditingController5 = new TextEditingController();
  TextEditingController _textEditingController6 = new TextEditingController();
  TextEditingController _textEditingController7 = new TextEditingController();
  TextEditingController _textEditingController8 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    _textEditingController1.text=Data.hospital_name;
    _textEditingController5.text=Data.pincode;
    _textEditingController8.text=Data.email_id;
    _textEditingController7.text=Data.contact_num;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("General Information",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Hospital Name",
                  icon: Icon(Icons.local_hospital)
              ),
              onChanged: ((val){
                Data.hospital_name=val;
              }),
              onSubmitted: ((val){
                Data.hospital_name =val;
                print(Data.hospital_name);
              }),
              onEditingComplete: (){
                Data.hospital_name=_textEditingController1.text;
                print(Data.hospital_name);
              },
              controller: _textEditingController1,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Registration Number",
                  icon: Icon(Icons.receipt)
              ),
              controller: _textEditingController2,
              onChanged: ((val){
                Data.registration_num=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Address",
                  icon: Icon(Icons.location_on)
              ),
              controller: _textEditingController3,
              onChanged: ((val){
                Data.address=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "City",
                  icon: Icon(Icons.location_city)
              ),
              controller: _textEditingController4,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "PinCode",
                  icon: Icon(Icons.pin_drop)
              ),
              controller: _textEditingController5,
              onChanged: ((val){
                Data.pincode=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Name of the Hospital Superintendent",
                  icon: Icon(Icons.person)
              ),
              controller: _textEditingController6,
              onChanged: ((val){
                Data.hospital_superitendent_name=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Contact Number*",
                  icon: Icon(Icons.call)
              ),
              controller: _textEditingController7,
              onChanged: ((val){
                Data.contact_num=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Email",
                  icon: Icon(Icons.email)
              ),
            controller: _textEditingController8,
              onChanged: ((val){
                Data.email_id=val;
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class HospitalSignup2 extends StatefulWidget {
  @override
  _HospitalSignup2State createState() => _HospitalSignup2State();
}

class _HospitalSignup2State extends State<HospitalSignup2> {
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;
  bool thurVal = false;
  bool friVal = false;
  TextEditingController _textEditingController11 = new TextEditingController();
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
  Widget checkbox(String title, bool boolValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            if(title=="Do you have isolation beds for COVID19?*") {
              monVal = !monVal;
              if(monVal)
                Data.isolationbed_covid_90="1";
                  else
                    Data.isolationbed_covid_90="0";
            }
            else if(title=="Do you have blood bank?*") {
              tuVal = !tuVal;
              if(tuVal)
                Data.blood_bank="1";
              else
                Data.blood_bank="0";
            }
            else if(title=="Do you have emergency services available 24 hours?*") {

              wedVal = !wedVal;
              if(wedVal)
                Data.emergency_service_24_avil="1";
              else
                Data.emergency_service_24_avil="0";
            }
            else if(title=="Do you labour room facility?*") {

              thurVal = !thurVal;
              if(wedVal)
                Data.labour_room="1";
              else
                Data.labour_room="0";
            }
            else if(title=="Do you have critical care facility?*") {
              friVal = !friVal;
              if(wedVal)
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

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("COVID",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
            ),
            checkbox("Do you have isolation beds for COVID19?*", monVal),
            checkbox("Do you have blood bank?*", tuVal),
            checkbox("Do you have emergency services available 24 hours?*", wedVal),
            checkbox("Do you labour room facility?*", thurVal),
            checkbox("Do you have critical care facility?*", friVal),
            SizedBox(height: 10,),
            Text("Hospital Capacity",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Medicine"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController2,
                    onChanged: ((val){
                          Data.dep_med=val;
                    }),
                    //         maxLength: 4,
                    decoration:InputDecoration(
                      hintText: "0"
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Surgery"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController3,
                    onChanged: ((val){
                      Data.dep_surgery=val;
                    }),
                    decoration:InputDecoration(
                        hintText: "0"
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Gynaecology and Obstetrics"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController4,
                    onChanged: ((val){
                      Data.dep_gyn_obs=val;
                    }),
                    decoration:InputDecoration(
                        hintText: "0"
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Pediatricts"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController5,
                    onChanged: ((val){
                      Data.dep_prediatricts=val;
                    }),
                    decoration:InputDecoration(
                        hintText: "0"
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Pediatric Surgery"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController6,
                    onChanged: ((val){
                      Data.dep_pred_surg=val;
                    }),
                    decoration:InputDecoration(
                        hintText: "0"
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("ICU"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController7,
                    onChanged: ((val){
                      Data.icu=val;
                    }),
                    decoration:InputDecoration(
                        hintText: "0"
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("CCU"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController8,
                    onChanged: ((val){
                      Data.ccu=val;
                    }),
                    decoration:InputDecoration(
                        hintText: "0"
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("HDU"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController9,
                    onChanged: ((val){
                      Data.hdu=val;
                    }),
                    decoration:InputDecoration(
                        hintText: "0"
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("NICU"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController10,
                    onChanged: ((val){
                      Data.nicu=val;
                    }),
                    decoration:InputDecoration(
                        hintText: "0"
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("PCU"),
                Container(
                  width: Utilities().getScreenWidth(context)/20,
                  child: TextField(controller: _textEditingController11,
                    onChanged: ((val){
                      Data.picu=val;
                    }),
                    decoration:InputDecoration(
                        hintText: "0"
                    ),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class HospitalSignup3 extends StatelessWidget {
  TextEditingController _textEditingController1 = new TextEditingController();
  TextEditingController _textEditingController2 = new TextEditingController();
  TextEditingController _textEditingController3 = new TextEditingController();
  TextEditingController _textEditingController4 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Diagnostic Service Availability",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
            ),
            Align(child: Text("Pathological Test",textAlign: TextAlign.start,),
              alignment: Alignment.topLeft,),
            SizedBox(height: 20,),
            TextField(
              onChanged: ((val){
                Data.pathology=val;
              }),
              controller: _textEditingController4,
              maxLines: 4,
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, ),
                ),

                hintText: 'Pathological Test',
              ),
            ),
            Align(child: Text("Biochemical Test",textAlign: TextAlign.start,),
              alignment: Alignment.topLeft,),
            SizedBox(height: 20,),
            TextField(
              onChanged: ((val){
                Data.bioChem=val;
              }),
              maxLines: 4,
              controller: _textEditingController1,
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, ),
                ),

                hintText: 'Biochemical Test',
              ),
            ),
            Align(child: Text("Microbiological Test",textAlign: TextAlign.start,),
              alignment: Alignment.topLeft,),
            SizedBox(height: 20,),
            TextField(
              controller: _textEditingController2,
              maxLines: 4,
              onChanged: ((val){
                Data.microb=val;
              }),
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, ),
                ),

                hintText: 'Microbiological Test',
              ),
            ),
            Align(child: Text("Radiological Test",textAlign: TextAlign.start,),
              alignment: Alignment.topLeft,),
            SizedBox(height: 20,),

            TextField(
              onChanged: ((val){
                Data.radiology=val;
              }),
              controller: _textEditingController3,
              maxLines: 4,
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, ),
                ),

                hintText: 'Radiological Test',
              ),
            )

          ],
        ),

      ),
    );
  }
}





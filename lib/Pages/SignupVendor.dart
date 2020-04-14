import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:maa/utils/api.dart';
import 'package:maa/utils/models.dart';

import '../Singletons.dart';

class VendorSignUPMain extends StatelessWidget {
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
                   // Navigator.pop(context);
                    Api().signupVendor().then((value){
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: VendorSignUP1(),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: VendorSignUP2(),
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



// ignore: must_be_immutable
class VendorSignUP1 extends StatelessWidget {
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
  _textEditingController1.text=Vendor.suppylier_name ;
  _textEditingController5.text=Vendor.pin_code;
  _textEditingController8.text=Vendor.email_id;
  _textEditingController7.text=Vendor.contact_num;
  return Align(
    alignment: Alignment.topLeft,
    child: Container(
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
              readOnly: true,
              decoration: InputDecoration(
                  labelText: "Supplier Name*",

                  icon: Icon(Icons.local_hospital)
              ),
              onChanged: ((val){
                Vendor.suppylier_name=val;
              }),
              onSubmitted: ((val){
                Vendor.suppylier_name =val;
                print(Data.hospital_name);
              }),
              onEditingComplete: (){
                Vendor.suppylier_name=_textEditingController1.text;
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
                Vendor.reg_num=val;
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
                Vendor.address=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "City",
                  icon: Icon(Icons.location_city)
              ),
              onChanged: ((val){
                Vendor.city=val;
              }),
              controller: _textEditingController4,
            ),
            TextField(
              readOnly: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "PinCode",
                  icon: Icon(Icons.pin_drop)
              ),
              controller: _textEditingController5,
              onChanged: ((val){
                Vendor.email_id=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Owner",
                  icon: Icon(Icons.person)
              ),
              controller: _textEditingController6,
              onChanged: ((val){
                Vendor.owner_name=val;
              }),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              readOnly: true,
              decoration: InputDecoration(
                  labelText: "Contact Number*",
                  icon: Icon(Icons.call)
              ),
              controller: _textEditingController7,
              onChanged: ((val){
                Vendor.contact_num=val;
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
                Vendor.email_id=val;
              }),
            ),
          ],
        ),
      ),
    ),
  );
}
}

class VendorSignUP2 extends StatefulWidget {
  @override
  _VendorSignUP2State createState() => _VendorSignUP2State();
}

class _VendorSignUP2State extends State<VendorSignUP2> {

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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Container(
child: Column(

  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Supplier Information",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        Text("Supply 1"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController1,
            onChanged: ((val){
              Vendor.item1_supply=val;
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
        Text("Supply 2"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController2,
            onChanged: ((val){
              Vendor.item2_supply=val;
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
        Text("Supply 3"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController3,
            onChanged: ((val){
              Vendor.item3_supply=val;
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
        Text("Supply 4"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController4,
            onChanged: ((val){
              Vendor.item4_supply=val;
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
        Text("Supply 5"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController5,
            onChanged: ((val){
              Vendor.item5_supply=val;
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
        Text("Supply 6"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController6,
            onChanged: ((val){
              Vendor.item6_supply=val;
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
        Text("Supply 7"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController7,
            onChanged: ((val){
              Vendor.item7_supply=val;
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
        Text("Supply 8"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController8,
            onChanged: ((val){
              Vendor.item8_supply=val;
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
        Text("Supply 9"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController9,
            onChanged: ((val){
              Vendor.item9_supply=val;
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
        Text("Supply 10"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController10,
            onChanged: ((val){
              Vendor.item10_supply=val;
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
        Text("Supply 11"),
        Container(
          width: Utilities().getScreenWidth(context)/20,
          child: TextField(controller: _textEditingController11,
            onChanged: ((val){
              Vendor.item11_supply=val;
            }),
            decoration:InputDecoration(
                hintText: "0"
            ),),
        ),
      ],
    ),
  ],
),
    );
  }
}


import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class EmergencyScreen extends StatefulWidget {
  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  TextEditingController textEditControl = new TextEditingController();
  int index =0;
  List _cities =
  ["No Ration","NO LPG","Medical Emergency","others"];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;
  @override
  void initState() {
    // TODO: implement initState
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    super.initState();
  }
  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city)
      ));
    }
    return items;
  }
  void changedDropDownItem(String selectedCity) {
    int index =_cities.indexOf(selectedCity);
    print(index);
    setState(() {
      _currentCity = selectedCity;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        titleSpacing: 0.0,
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Text(
          "COIVDOUT 19",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
          textAlign: TextAlign.center,
        ),

      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 0,bottom: 5,right: 14,left: 14),
          child: SingleChildScrollView(
            child: Column(

              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
                  child: Image(
                    image: AssetImage(
                        "assets/images/jhk.png"
                    ),
                    width: MediaQuery.of(context).size.width/3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Center(child:            Stack(
                    children: <Widget>[
                      Positioned(
                        left: 20.0,
                        top: 15.0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(40.0)),
                          width: 120.0,
                          height: 20.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Text(
                          "Emergency",
                          style:
                          TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Emergency Type"),
                    new DropdownButton(
                      value: _currentCity,
                      items: _dropDownMenuItems,
                      onChanged: changedDropDownItem,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Your Address"),
                   Container(
                       width: 500 ,
                       child: TextFormField(
                         decoration: InputDecoration(
                           hintText: "Enter your Address Here"
                         ),
                       ))
                  ],
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: textEditControl,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(

                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),),
                      labelText: "Any Other Comments",
                      enabled: true,
                      alignLabelWithHint: true
                  ),
                  maxLines: 8,
                ),
                const SizedBox(height: 40.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: RaisedButton(
                    padding: const EdgeInsets.fromLTRB(40.0, 16.0, 30.0, 16.0),
                    color: Colors.red,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0))),
                    onPressed: () {
                      showDialog(
                          context: context,builder: (_) => AssetGiffyDialog(
                        image:Image.asset("assets/images/im.png"),
                        cornerRadius: 4,
                        title: Text('WARNING',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                        ),
                        description: Text('Make sure you are giving proper information. Improper or wrong information may result legal action against you.',
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                        buttonOkText: Text("Proceed",style: TextStyle(color: Colors.white),),
                        onOkButtonPressed: () {


                        },
                      ) );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "Request Services".toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0,color: Colors.white),
                        ),
                        const SizedBox(width: 10.0),
                        Icon(
                          FontAwesomeIcons.arrowRight,
                          size: 18.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
              ],

            ),
          ),
        ),
      ),
    );
  }
}

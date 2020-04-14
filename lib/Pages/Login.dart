import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maa/Pages/HospitalDashboard.dart';
import 'package:maa/Pages/PatientDashboard.dart';
import 'package:maa/Pages/SignUPPatient.dart';
import 'package:maa/Pages/SignupPage.dart';
import 'package:maa/Pages/SignupVendor.dart';
import 'package:maa/Pages/VendorDashboard.dart';
import 'package:maa/Singletons.dart';
import 'package:maa/utils/api.dart';
import 'package:maa/utils/models.dart';
import 'package:maa/widgets/ScrollingText.dart';
import 'package:maa/widgets/quiz/category.dart';
import 'package:maa/widgets/quiz/demo_values.dart';
import 'package:maa/widgets/quiz/questions.dart';
import 'package:maa/widgets/quiz/quiz_page.dart';


class AuthThreePage extends StatefulWidget {
  static final String path = "lib/src/pages/login/auth3.dart";

  @override
  _AuthThreePageState createState() => _AuthThreePageState();
}

class _AuthThreePageState extends State<AuthThreePage> {



  @override
  void initState() {
    super.initState();


  }

  SliverPadding _buildStats(BuildContext context) {
    final TextStyle stats = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white);
    return SliverPadding(

      padding: const EdgeInsets.all(16.0),
      sliver: SliverGrid.count(

        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blueAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "10938",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Center(child: Text("Total Cases".toUpperCase(),style: TextStyle(color: Colors.white),textAlign: TextAlign.center,))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.pinkAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "9294",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Center(child: Text("Active Cases".toUpperCase(),style: TextStyle(color: Colors.white),textAlign: TextAlign.center,))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.lightGreen,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "9294",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Center(child: Text("Hospitilized Cases".toUpperCase(),style: TextStyle(color: Colors.white),textAlign: TextAlign.center,))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "365",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Center(child: Text("DEATHS".toUpperCase(),style: TextStyle(color: Colors.white),textAlign: TextAlign.center,))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.pink,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "1279",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Text("CURED".toUpperCase(),style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.green,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "?",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Text("MIGRATED".toUpperCase(),style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
              ],
            ),
          ),
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    List m ;
    Api().getMessage().then((value){
      m = value;
    });
    if(Utilities().getOrientation(context)==1)
    return Scaffold(
        body: Container(child: Row(
          children: <Widget>[
            Container(
                child: LefTUI(),
              width: Utilities().getScreenWidth(context)/3,
            ),
            SingleChildScrollView(
              child: Container(
                width: Utilities().getScreenWidth(context)*2/3,

                child: Column(
                  children: [
                     SizedBox(height: Utilities().getScreenHeights(context)*.03,),
                    InkWell(
                      onTap: (){
                        Category category = categories[0];
                        print(category.name);
                        List<Question> questions = demoQuestions;
Navigator.push(context, CupertinoPageRoute(builder: (context)=> QuizPage(questions: questions, category: category,)));
                      },
                        child: Image(image: AssetImage("assets/images/corona.png"),width: Utilities().getScreenWidth(context)/6,)),
                    Text("COVID-19 UPDATES",style: TextStyle(fontSize: 20,),),
                    Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                        child: ScrollingText(text: "Tap on Covid Icon to Check your risk Assesment",scrollAxis: Axis.horizontal,)),

                    SizedBox(height: Utilities().getScreenHeights(context)*.015,),
                    Container(
                      width: 450,
                      height: 300,
                      child: CustomScrollView(
                          slivers: <Widget>[
                            _buildStats(context)
                          ]
                      ),
                    ),
                    SizedBox(height: Utilities().getScreenHeights(context)*.015,),
                    Card(
                      elevation: 20,
                      child: Container(
                        width: Utilities().getScreenWidth(context)*2/5,
                        height: Utilities().getScreenWidth(context)/8,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("News Feed :"),
                              FutureBuilder(
                              future: Api().getMessage(),
                              builder: (BuildContext context2,
                              AsyncSnapshot<dynamic> snapshot) {

                                return Container();
                              }
                              )

                            ],
                          ),
                        ),
                      ),
                    ),     SizedBox(height: Utilities().getScreenHeights(context)*.02,),

                    Card(
                      elevation: 20,
                      child: Container(
                        width: Utilities().getScreenWidth(context)*2/5,
                        height: Utilities().getScreenWidth(context)/8,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Government Regulation :")
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Utilities().getScreenHeights(context)*.02,),

                    Card(
                      elevation: 20,
                      child: Container(
                        height: Utilities().getScreenWidth(context)/8,
                        width: Utilities().getScreenWidth(context)*2/5,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Download links:")
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            )
          ],
        )));
    else{
      return Scaffold(
        body: LefTUI(),
      );
    }
  }

}

class LefTUI extends StatefulWidget {
  @override
  _LefTUIState createState() => _LefTUIState();
}

class _LefTUIState extends State<LefTUI> {
  final String backImg = "assets/images/splash.jpg";
  bool formVisible;
  int _formsIndex;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.black54,
            child: Column(
              children: <Widget>[
                const SizedBox(height: kToolbarHeight + 40),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        "Good Morning.\nWelcome to the Maa Hospital. ",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Login"),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formsIndex = 1;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.grey.shade700,
                        textColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Signup"),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formsIndex = 2;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10.0),
                  ],
                ),
                const SizedBox(height: 40.0),
                OutlineButton.icon(
                  borderSide: BorderSide(color: Colors.red),
                  color: Colors.red,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  icon: Icon(Icons.block),
                  label: Text("Continue with Google"),
                  onPressed: () {},
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: (!formVisible)
                ? null
                : Container(
              color: Colors.black54,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        textColor: _formsIndex == 1
                            ? Colors.white
                            : Colors.black,
                        color:
                        _formsIndex == 1 ? Colors.red : Colors.white,
                        child: Text("Login"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                          setState(() {
                            _formsIndex = 1;
                          });
                        },
                      ),
                      const SizedBox(width: 10.0),
                      RaisedButton(
                        textColor: _formsIndex == 2
                            ? Colors.white
                            : Colors.black,
                        color:
                        _formsIndex == 2 ? Colors.red : Colors.white,
                        child: Text("Signup"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                          setState(() {
                            _formsIndex = 2;
                          });
                        },
                      ),
                      const SizedBox(width: 10.0),
                      IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            formVisible = false;
                          });
                        },
                      )
                    ],
                  ),
                  Container(
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 300),
                      child:
                      _formsIndex == 1 ? Login() : SignupForm(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int index;
  List _loginType = ["Hospital", "Vendor", "Patient"];
  String _currentLoginType;
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  @override
  void initState() {
    // TODO: implement initState

    _dropDownMenuItems = getDropDownMenuItems();
  }
  void changedDropDownItem1(String selectedDist) {
    print(selectedDist);
    setState(() {
      setState(() {
        index=_loginType.indexOf(selectedDist);
        index+=1;
        _currentLoginType = selectedDist;
      });

      //   currentBlock = _dropDownMenuItems2[0].value;
    });
  }
  List<DropdownMenuItem<String>> getDropDownMenuItems() {

    List<DropdownMenuItem<String>> items = new List();
    for (String city in _loginType) {
      items.add(new DropdownMenuItem(value: city, child: new Text(city)));
    }
    return items;
  }
TextEditingController textEditingController = new TextEditingController();
  TextEditingController textEditingController1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(24.0),
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  DropdownButton(
              elevation: 3,
              isExpanded: true,
              value: _currentLoginType,
              icon: Icon(Icons.person_outline),
              hint: Text("Select Login Type"),
              items: _dropDownMenuItems,
              onChanged: changedDropDownItem1,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Enter email/Mobile Number",
              icon: Icon(Icons.email)
            ),
            controller: textEditingController,
          ),
          const SizedBox(height: 10.0),
          TextField(
            controller: textEditingController1,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              icon: Icon(Icons.lock),
            ),
keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 10.0),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            elevation: 0,

            child: Text("Login"),
            onPressed: () {

              Api().login(index.toString(), textEditingController.text, textEditingController1.text).then((val){
                Flushbar(title: "Login status:",message:val["msg"].toString(),isDismissible: true,duration: Duration(seconds: 3),backgroundColor: Colors.green,).show(context);
                if(val["status"]=="000")
                  {
                    if(val["rollId"]=="1")
                      Api().getHospital(textEditingController.text).then((value) {
                        Data.hospital_name=value["hospitalData"][0]["hospital_name"];
                        print(value);
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>HospitalDashboard()));
                      });

                    else if(val["rollId"]=="2")
                      {

                        Api().getVendor(textEditingController.text).then((value) {
                          Vendor.suppylier_name=value["vendorData"][0]["suppylier_name"];
                          Vendor.owner_name=value["vendorData"][0]["owner_name"];
                          Vendor.reg_num=value["vendorData"][0]["reg_num"];
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>VendorDashboard()));
                        });
                      }
                    else if(val["rollId"]=="3")
                    {
                      Api().getPatient(textEditingController.text).then((value) {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>PatientDashboard()));
                      });
                    }
                  }
              });


            },
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                child: Text("Forgot Password?"),
              splashColor: Colors.redAccent,
              onPressed: (){
                  },
              ),
            )
        ],
      ),
    );
  }
}


class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  List _loginType = ["Hospital", "Vendor", "Patient"];
  String _currentLoginType;
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  int index;
  @override
  void initState() {
    // TODO: implement initState

    _dropDownMenuItems = getDropDownMenuItems();
  }
  void changedDropDownItem1(String selectedDist) {
    print(selectedDist);
    setState(() {
      setState(() {
        _currentLoginType = selectedDist;
        index=_loginType.indexOf(selectedDist);
        index=index+1;
      });

      //   currentBlock = _dropDownMenuItems2[0].value;
    });
  }
  List<DropdownMenuItem<String>> getDropDownMenuItems() {

    List<DropdownMenuItem<String>> items = new List();
    for (String city in _loginType) {
      items.add(new DropdownMenuItem(value: city, child: new Text(city)));
    }
    return items;
  }
  TextEditingController textEditingController = new TextEditingController();
  TextEditingController textEditingController1 = new TextEditingController();
  TextEditingController textEditingController3 = new TextEditingController();
  TextEditingController textEditingController4 = new TextEditingController();
  TextEditingController textEditingController5 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(24.0),
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  DropdownButton(
              elevation: 3,
              isExpanded: true,
              value: _currentLoginType,
              icon: Icon(Icons.arrow_downward),
              hint: Text("Select Signup Type"),
              items: _dropDownMenuItems,
              onChanged: changedDropDownItem1,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: _currentLoginType==null?"Enter Name":"Enter "+_currentLoginType+" Name",
                icon: Icon(Icons.person)
            ),
            controller: textEditingController,
          ),
          const SizedBox(height: 10.0),
          TextField(
            controller: textEditingController1,
            obscureText: false,
            decoration: InputDecoration(
              hintText: "Enter Mobile",
              icon: Icon(Icons.phone),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 10.0),
          TextField(
            controller: textEditingController3,
            obscureText: false,
            decoration: InputDecoration(
              hintText: "Enter Email Address",
              icon: Icon(Icons.mail),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 10.0),
          TextField(
            controller: textEditingController4,
            obscureText: false,
            decoration: InputDecoration(
              hintText: "Enter Pincode",
              icon: Icon(Icons.location_on),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 10.0),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            elevation: 0,

            child: Text("Sign up"),
            onPressed: () {
              if(textEditingController1.text==""||textEditingController.text==""||textEditingController3.text==""||textEditingController4.text=="")
              {
                Flushbar(
                  title: "Please Enter all the fields",
                  messageText: Text("Field must not be empty"),
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.redAccent,
                ).show(context);
              }
              else {
                if(index==1) {
                  Data.hospital_name = textEditingController.text;
                  Data.contact_num = textEditingController1.text;
                  Data.email_id = textEditingController3.text;
                  Data.pincode = textEditingController4.text;
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignUpHospitalPage()
                  ));
                }
                else if(index==2)
                  {
                    Vendor.suppylier_name = textEditingController.text;
                    Vendor.contact_num = textEditingController1.text;
                    Vendor.email_id = textEditingController3.text;
                    Vendor.pin_code = textEditingController4.text;
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => VendorSignUPMain()
                    ));
                  }
                else if(index==3)
                {
                  Patient.name = textEditingController.text;
                  Patient.mobile = textEditingController1.text;
                  Patient.email = textEditingController3.text;
                  Patient.pincode = textEditingController4.text;
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignupPatient()
                  ));
                }
              }

            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              child: Text("Forgot Password?"),
              splashColor: Colors.redAccent,
              onPressed: (){

              },
            ),
          )
        ],
      ),
    );
  }
}

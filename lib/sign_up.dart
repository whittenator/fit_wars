

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {



  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Goal Page
  bool loseWeightButtonPressed = false;
  bool gainWeightButtonPressed = false;
  bool fitnessCompButtonPressed = false;

  // Activity Page
  bool notVeryActivePressed = false;
  bool lightlyActivePressed = false;
  bool activePressed = false;
  bool veryActivePressed = false;

  // PageView Controller
  PageController controller = PageController();
  var currentPageValue = 0.0;

  // Progress Bar
  bool pageOne = false;
  bool pageTwo = false;
  bool pageThree = false;
  bool pageFour = false;
  bool pageFive = false;
  bool pageSix = false;
  bool pageSeven = false;



  @override
  Widget build(BuildContext context) {

    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
        debugPrint("sign_up.dart: currentPageValue-> $currentPageValue");
        if(controller.page <= 1.0){
          pageOne = true;
          pageTwo = false;
          pageThree = false;
          pageFour = false;
          pageFive = false;
          pageSix = false;
          pageSeven = false;
        }
        if(controller.page > 1.0 && controller.page <= 2.0){
          pageOne = false;
          pageTwo = true;
          pageThree = false;
          pageFour = false;
          pageFive = false;
          pageSix = false;
          pageSeven = false;
        }
        if(currentPageValue > 2.0 && currentPageValue <= 3.0){
          pageOne = false;
          pageTwo = false;
          pageThree = true;
          pageFour = false;
          pageFive = false;
          pageSix = false;
          pageSeven = false;
        }

      });
    });

    Widget _buildChild(){
      if(currentPageValue <= 1.0){

      } else if(currentPageValue >= 2.0 && currentPageValue < 3.0){

      } else if(currentPageValue >= 3.0 && currentPageValue < 4.0){

      }
    }

    Widget activityPage = Scaffold(
      appBar: AppBar(
        title: Text("Activity Level"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          //TODO Add in a bar that highlights the pages(Pretty much a loading bar with a bar representing each page)
          Container(
            margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 16.0),
            alignment: Alignment.center,
            child: Text("What's your fitness level?", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          ),
          Container(
              margin: EdgeInsets.only(left: 64.0, right: 64.0, top: 32.0),
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                child:  RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  color: notVeryActivePressed ? Colors.green : Colors.white,
                  shape: ContinuousRectangleBorder(side: BorderSide(color: Colors.grey)),
                  child: Text('Not very active', style: TextStyle(fontSize: 16.0),),
                  onPressed: (){
                    // TODO Highlight blue
                    setState(() {
                      notVeryActivePressed = !notVeryActivePressed;
                      lightlyActivePressed = false;
                      activePressed = false;
                      veryActivePressed = false;
                    });
                  },
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(left: 64.0, right: 64.0, top: 16.0),
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  color: lightlyActivePressed ? Colors.green : Colors.white,
                  shape: ContinuousRectangleBorder(side: BorderSide(color: Colors.grey)),
                  child: Text('Lightly Active', style: TextStyle(fontSize: 16.0),),
                  onPressed: (){
                    // TODO Highlight blue
                    setState(() {
                      notVeryActivePressed = false;
                      lightlyActivePressed = !lightlyActivePressed;
                      activePressed = false;
                      veryActivePressed = false;
                    });
                  },
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(left: 64.0, right: 64.0, top: 16.0),
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  color: activePressed ? Colors.green : Colors.white,
                  shape: ContinuousRectangleBorder(side: BorderSide(color: Colors.grey)),
                  child: Text('Active', style: TextStyle(fontSize: 16.0),),
                  onPressed: (){
                    // TODO Highlight blue
                    setState(() {
                      notVeryActivePressed = false;
                      lightlyActivePressed = false;
                      activePressed = !activePressed;
                      veryActivePressed = false;
                    });
                  },
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(left: 64.0, right: 64.0, top: 16.0),
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  color: veryActivePressed ? Colors.green : Colors.white,
                  shape: ContinuousRectangleBorder(side: BorderSide(color: Colors.grey)),
                  child: Text('Very Active', style: TextStyle(fontSize: 16.0),),
                  onPressed: (){
                    // TODO Highlight blue
                    setState(() {
                      notVeryActivePressed = false;
                      lightlyActivePressed = false;
                      activePressed = false;
                      veryActivePressed = !veryActivePressed;
                    });
                  },
                ),
              )
          ),
        ],
      ),
    );

    Widget goalPage = Scaffold(
        appBar: AppBar(
          title: Text("Goal"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // TODO Take back to previous page(Main.dart)
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
            children: <Widget>[
              //TODO Add in a bar that highlights the pages(Pretty much a loading bar with a bar representing each page)
              Container(
                margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 16.0),
                alignment: Alignment.center,
                child: Text('What is your goal?', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(left: 64.0, right: 64.0, top: 32.0),
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child:  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    color: loseWeightButtonPressed ? Colors.green : Colors.white,
                    shape: ContinuousRectangleBorder(side: BorderSide(color: Colors.grey)),
                    child: Text('Fat Loss', style: TextStyle(fontSize: 16.0),),
                    onPressed: (){
                      // TODO Highlight blue
                      setState(() {
                        loseWeightButtonPressed = !loseWeightButtonPressed;
                        gainWeightButtonPressed = false;
                        fitnessCompButtonPressed = false;
                      });
                    },
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 64.0, right: 64.0, top: 16.0),
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    color: gainWeightButtonPressed ? Colors.green : Colors.white,
                    shape: ContinuousRectangleBorder(side: BorderSide(color: Colors.grey)),
                    child: Text('Muscle Gain', style: TextStyle(fontSize: 16.0),),
                    onPressed: (){
                      // TODO Highlight blue
                      setState(() {
                        gainWeightButtonPressed = !gainWeightButtonPressed;
                        loseWeightButtonPressed = false;
                        fitnessCompButtonPressed = false;
                      });
                    },
                  ),
                )
              ),
              Container(
                  margin: EdgeInsets.only(left: 64.0, right: 64.0, top: 16.0),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      color: fitnessCompButtonPressed ? Colors.green : Colors.white,
                      shape: ContinuousRectangleBorder(side: BorderSide(color: Colors.grey)),
                      child: Text('Fitness Competition', style: TextStyle(fontSize: 16.0),),
                      onPressed: (){
                        // TODO Highlight blue
                        setState(() {
                          fitnessCompButtonPressed = !fitnessCompButtonPressed;
                          gainWeightButtonPressed = false;
                          loseWeightButtonPressed = false;
                        });
                      },
                    ),
                  )
              ),
            ],
          ),
    );
    // TODO: implement build
    return Stack(
      children: <Widget>[
        PageView(
          controller: controller,
          children: <Widget>[
            goalPage,
            activityPage,
        ],
      ),
        Container(
          margin: EdgeInsets.only(left: 64.0, right: 64.0, bottom: 64.0),
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: SizedBox(
                  height: 8.0,
                  width: 32.0,
                  child: RaisedButton(
                    onPressed: (){},
                    color: pageOne ? Colors.green : Colors.grey,
                  ),
                ),
              ),
              Container(
                child: SizedBox(
                  height: 8.0,
                  width: 32.0,
                  child: RaisedButton(
                    onPressed: (){},
                    color: pageTwo ? Colors.green : Colors.grey,
                  ),
                ),
              ),
              Container(
                child: SizedBox(
                  height: 8.0,
                  width: 32.0,
                  child: RaisedButton(
                    onPressed: (){},
                    color: pageThree ? Colors.green : Colors.grey,
                  ),
                ),
              ),
              Container(
                child: SizedBox(
                  height: 8.0,
                  width: 32.0,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                child: SizedBox(
                  height: 8.0,
                  width: 32.0,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                child: SizedBox(
                  height: 8.0,
                  width: 32.0,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                child: SizedBox(
                  height: 8.0,
                  width: 32.0,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
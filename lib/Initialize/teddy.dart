import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class TeddyScreen extends StatefulWidget {
  @override
  _TeddyScreenState createState() => _TeddyScreenState();
}

class _TeddyScreenState extends State<TeddyScreen> {
  String pass = "admin";

  String animationType = "idle";

  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();

  @override
  void initState() {
    // implement initState
    passwordFocusNode.addListener(() {
      if (passwordFocusNode.hasFocus) {
        setState(() {
          animationType = "test";
        });
      } else {
        setState(() {
          animationType = "idle";
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //just for vertical spacing
            SizedBox(
              height: 60,
              width: 200,
            ),

            //space for teddy actor
            Center(
              child: Container(
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(3, 9, 23, 1),
                    child: ClipOval(
                      child: FlareActor(
                        "assets/teddy_test.flr",
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: animationType,
                      ),
                    ),
                  )),
            ),

            //just for vertical spacing
            SizedBox(
              height: 50,
              width: 10,
            ),

            //container for textfields user name and password
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 140,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "User name",
                              contentPadding: EdgeInsets.all(20)),
                        ),
                        Divider(),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              contentPadding: EdgeInsets.all(20)),
                          controller: passwordController,
                          focusNode: passwordFocusNode,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 70,
                    padding: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                        color: Colors.green,
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30),
                        ),
                        onPressed: () {
                          if (passwordController.text.compareTo(pass) == 0) {
                            setState(() {
                              animationType = "success";
                            });
                          } else {
                            setState(() {
                              animationType = "fail";
                            });
                          }
                        }),
                  )
                ],
              ),
            ),

            //container for raised button
          ],
        ),
      ),
    );
  }
}

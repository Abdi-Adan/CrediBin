// import 'package:flare_flutter/flare_actor.dart';
// import 'package:flutter/material.dart';

// class TeddyScreen extends StatefulWidget {
//   @override
//   _TeddyScreenState createState() => _TeddyScreenState();
// }

// class _TeddyScreenState extends State<TeddyScreen> {
//   String pass = "admin";

//   String animationType = "idle";

//   final passwordController = TextEditingController();
//   final passwordFocusNode = FocusNode();

//   @override
//   void initState() {
//     // implement initState
//     passwordFocusNode.addListener(() {
//       if (passwordFocusNode.hasFocus) {
//         setState(() {
//           animationType = "test";
//         });
//       } else {
//         setState(() {
//           animationType = "idle";
//         });
//       }
//     });

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         //just for vertical spacing
//         SizedBox(
//           height: 60,
//           width: 200,
//         ),

//         //space for teddy actor
//         Center(
//           child: Container(
//               height: 300,
//               width: 300,
//               child: CircleAvatar(
//                 child: ClipOval(
//                   child: FlareActor(
//                     "assets/teddy_test.flr",
//                     alignment: Alignment.center,
//                     fit: BoxFit.contain,
//                     animation: animationType,
//                   ),
//                 ),
//                 backgroundColor: Colors.white,
//               )),
//         ),

//         //just for vertical spacing
//         SizedBox(
//           height: 80,
//           width: 10,
//         ),

//         //container for textfields user name and password
//         Container(
//           height: 140,
//           width: 350,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(20)),
//               color: Colors.white),
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: "User name",
//                     contentPadding: EdgeInsets.all(20)),
//               ),
//               Divider(),
//               TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: "Password",
//                     contentPadding: EdgeInsets.all(20)),
//                 controller: passwordController,
//                 focusNode: passwordFocusNode,
//               ),
//             ],
//           ),
//         ),

//         //container for raised button
//         Container(
//           width: 350,
//           height: 70,
//           padding: EdgeInsets.only(top: 20),
//           child: RaisedButton(
//               color: Colors.pink,
//               child: Text(
//                 "Submit",
//                 style: TextStyle(color: Colors.white),
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(30),
//               ),
//               onPressed: () {
//                 if (passwordController.text.compareTo(pass) == 0) {
//                   setState(() {
//                     animationType = "success";
//                   });
//                 } else {
//                   setState(() {
//                     animationType = "fail";
//                   });
//                 }
//               }),
//         )
//       ],
//     );
//   }
// }

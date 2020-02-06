// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
// import 'package:smile_stack/InitializeApp/Onboarding/OnOne.dart';
// import 'package:smile_stack/InitializeApp/Onboarding/OnThree.dart';
// import 'package:smile_stack/InitializeApp/Onboarding/OnTwo.dart';
// import 'package:smile_stack/Provider/OffsetNotifier.dart';
// import 'package:smile_stack/Provider/indexNotifier.dart';
// import 'package:smile_stack/Widgets/PageIndicator.dart';

// class Onboarding extends StatefulWidget {
//   @override
//   _OnboardingState createState() => _OnboardingState();
// }

// class _OnboardingState extends State<Onboarding> {
//   PageController _pageController;

//   @override
//   void initState() {
//     SystemChrome.setEnabledSystemUIOverlays([]);
//     _pageController = PageController();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       builder: (context) => OffsetNotifier(_pageController),
//       child: Scaffold(
//         backgroundColor: Color(0xFFF2F2F2),
//         body: Column(
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.fromLTRB(20, 16, 20, 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     "Hops",
//                     style: TextStyle(
//                         fontSize: 22,
//                         fontFamily: 'Graphik',
//                         fontWeight: FontWeight.w800),
//                   ),
//                   Stack(
//                     children: <Widget>[
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.shopping_cart),
//                       ),
//                       Positioned(
//                         right: 10,
//                         bottom: 8,
//                         child: Container(
//                           width: 12,
//                           height: 12,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: PageView(
//                 controller: _pageController,
//                 onPageChanged: (int index) {
//                   Provider.of<IndexNotifier>(context).index = index;
//                 },
//                 children: <Widget>[OnOne(), OnTwo(), OnThree()],
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 PageIndicator(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

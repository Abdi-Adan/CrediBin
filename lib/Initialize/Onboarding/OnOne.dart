// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'dart:math' as math;

// import 'package:smile_stack/Provider/OffsetNotifier.dart';

// class OnOne extends StatefulWidget {
//   @override
//   _OnOneState createState() => _OnOneState();
// }

// class _OnOneState extends State<OnOne> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         Container(
//           width: double.infinity,
//           height: 500,
//           child: Stack(
//             alignment: Alignment.center,
//             children: <Widget>[
//               Consumer<OffsetNotifier>(
//                 builder: (context, notifier, child) {
//                   return Transform.scale(
//                     scale: math.max(0, 1 - notifier.page),
//                     child: Opacity(
//                       opacity: math.max(0, math.max(0, 1 - notifier.page)),
//                       child: child,
//                     ),
//                   );
//                 },
//                 child: Container(
//                   width: 340,
//                   height: 340,
//                   decoration: BoxDecoration(
//                       color: Colors.white, shape: BoxShape.circle),
//                 ),
//               ),
//               Consumer<OffsetNotifier>(
//                 builder: (context, notifier, child) {
//                   return Transform.rotate(
//                     angle: math.max(0, (math.pi / 2) * 4 * notifier.page),
//                     child: child,
//                   );
//                 },
//                 child: Image.asset('imageOne'),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Consumer<OffsetNotifier>(
//           builder: (context, notifier, child) {
//             return Opacity(
//               opacity: math.max(0, 1 - 4 * notifier.page),
//               child: child,
//             );
//           },
//           child: Column(
//             children: <Widget>[
//               Text("ImageOne Title",),
//               SizedBox(height: 16,),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 28),
//                 child: Text("description", textAlign: TextAlign.center,),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

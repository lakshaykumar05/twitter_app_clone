import 'package:flutter/material.dart';
import 'package:twitter_ui/menu_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: App(),
    );
  }
}











// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'App Title',
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   final Duration duration =const Duration(milliseconds: 300);
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.menu,size: 35,color: Colors.blue,),
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context){
//                       return MenuScreen(context);
//                     }));
//                   },
//                 ),
//                 Expanded(
//                   child: IconButton(
//                     icon: Icon(Icons.group,size: 35,color: Colors.blue,),
//                     onPressed: (){},
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.grade,size: 35,color: Colors.blue,),
//                   onPressed: (){},
//                 ),
//               ],
//             ),
//             Divider(
//               color: Colors.grey,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.account_circle_rounded, size: 67,),
//                   onPressed: (){},
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left:25.0,top: 27.0,),
//               child: Row(
//                 children: [
//                   Text(
//                     'Add',
//                     style: TextStyle(
//                       fontSize: 14.0,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20.0,
//               child: Divider(
//                 color: Colors.grey,
//                // thickness: 5.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




























// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.menu),
//                 onPressed: (){},
//               ),
//               IconButton(
//                 icon: Icon(Icons.group),
//                 onPressed: (){},
//               ),
//               IconButton(
//                 icon: Icon(Icons.grade),
//                 onPressed: (){},
//               ),
//             ],
//           ),
//           Row(
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.account_circle_rounded),
//                 onPressed: (){},
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Row(
//             children: [
//               IconButton(
//                 icon: Icon(Icons.menu),
//                 onPressed: (){},
//               ),
//               IconButton(
//                 icon: Icon(Icons.group),
//                 onPressed: (){},
//               ),
//               IconButton(
//                 icon: Icon(Icons.grade),
//                 onPressed: (){},
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               IconButton(
//                 icon: Icon(Icons.account_circle_rounded),
//                 onPressed: (){},
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

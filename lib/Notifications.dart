import 'package:flutter/material.dart';

// class Notifications extends StatefulWidget {
//   @override
//   _NotificationsState createState() => _NotificationsState();
// }
//
// class _NotificationsState extends State<Notifications> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListTile(
//         // trailing: Icon(
//         //   icon:
//         // ),
//         title: Text(
//           'World Health Organization approves Chinese vaccine for emergency use',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }


class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // trailing: Icon(
      //   icon:
      // ),
      title: Text(
        'World Health Organization approves Chinese vaccine for emergency use',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

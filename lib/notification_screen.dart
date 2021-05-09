import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'user_bookmarks.dart';
import 'message_screen.dart';
import 'user_moments.dart';
import 'Notifications.dart';
import 'Mentions.dart';


class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  // List<Widget> containers =[
  //   Column(
  //     children: [
  //       Row(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(top:12.0,left:34.0),
  //             child: Text('News for you',style:
  //               TextStyle(
  //                 color: Colors.grey,
  //               ),),
  //           ),
  //         ],
  //       ),
  //       Row(
  //         children: [
  //           Container(
  //             color: Colors.black,
  //             child: Text('ngfnsrgvegtrhrthrng'),
  //           ),
  //         ],
  //       ),
  //     ],
  //   ),
  //   Container(
  //     color: Colors.black,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            bottom: const TabBar(
              indicatorColor: Colors.blue,
              tabs: <Widget>[
                Tab(
                  child: TextButton(
                    child: Text('All',style:
                    TextStyle(
                      color: Colors.grey,
                    ),
                    ),
                   //  onPressed: () {
                   // //   Navigator.of();
                   //    var result =  Navigator.push(context, MaterialPageRoute(builder:
                   //    (context) => Notificatons();
                   //    ));
                   //  },
                  ),
                ),
                Tab(
                  child: TextButton(
                    child: Text('Mentions',style:
                    TextStyle(
                      color: Colors.grey,
                    ),),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.black,
            iconTheme: IconThemeData(color:Colors.blue),
            actions: [
              Row(
                children: [
                  // SizedBox(
                  //   width: 330.0,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right:190.0),
                    child: Text('Notifications',style: notboldstyling,),
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, size: 25, color: Colors.blue,),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          drawer: Drawer(
            child: SafeArea(
              child: Scaffold(
                backgroundColor: Colors.black,
                body: Column(
                  children: [
                    Row(
                      //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0, bottom: 3.0,),
                          child: IconButton(
                              icon: Icon(Icons.account_circle, size: 70,)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0, bottom: 2.0),
                      child: Row(
                        children: [
                          Text('Lakshay Kumar',
                            style: boldstyling,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0, top: 4.0,),
                      child: Row(
                        children: [
                          Text('@Lakshay59735726',
                            style: notboldgreystyling,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 17.0, top: 17.0, bottom: 10.0),
                      child: Row(
                        children: [
                          Text('1 ',
                            style: boldstyling,
                          ),
                          Text('Following  ',
                            style: notboldgreystyling,
                          ),
                          Text('0 ',
                            style: boldstyling,
                          ),
                          Text('Followers',
                            style: notboldgreystyling,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, bottom: 3.0,),
                            child: IconButton(
                              icon: Icon(Icons.account_circle, size: 33.0,color:Colors.grey),
                              onPressed: (){

                              },
                            ),
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, bottom: 3.0,),
                            child: IconButton(
                              icon: Icon(Icons.account_circle, size: 33.0,color:Colors.grey),
                            ),
                          ),
                          Text(
                            'Lists',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, bottom: 3.0,),
                            child: IconButton(
                              icon: Icon(Icons.account_circle, size: 33.0,color:Colors.grey),
                            ),
                          ),
                          Text(
                            'Topics',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, bottom: 3.0,),
                            child: IconButton(
                              icon: Icon(Icons.account_circle, size: 33.0,color:Colors.grey),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Bookmarks();
                                }));
                              },
                            ),
                          ),
                          Text(
                            'Bookmarks',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, bottom: 3.0,),
                            child: IconButton(
                              icon: Icon(Icons.account_circle, size: 33.0,color:Colors.grey),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Moments();
                                }));
                              },
                            ),
                          ),
                          Text(
                            'Moments',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 11.3,),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Settings and privacy',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 10,),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Help Centre',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 75.0,
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
         body: TabBarView(
           children: [
             Notifications(),
             Mentions(),
           ],
         ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.plus,color: Colors.white,),
              onPressed: (){},
            ),
          ),
        ),
      ),
    );
  }
}

// class Notifications extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//     );
//   }
// }


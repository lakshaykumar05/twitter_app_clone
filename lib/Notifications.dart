import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'display_not.dart';
import 'notidata.dart';


class Notifications extends StatelessWidget {

  List<Notidata> notification = [
    Notidata(info: 'World Health Organization approves Chinese vaccine for emergency use'),
    Notidata(info: 'The Indian Premier League is postponed due to COVID-19, says BCCI'),
    Notidata(info: 'Former PM Manmohan Singh tests positive for COVID-19'),
    Notidata(info: 'Chinese Rocket will land in India on May 9th'),
    Notidata(info: "COVID-19 SOS: Here's a list of resources for Delhi"),
    Notidata(info: 'AKTU Odd Semester result will declare in mid June'),
    Notidata(info: 'Shooter Dadi passes away due to COVID-19'),
  ];

  int l=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context,index) {
              return ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 30),
                  child: FaIcon(FontAwesomeIcons.bolt, color: Colors.blue),
                ),
                title: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, right: 205.0),
                          child: Text(
                            'News for You\n',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 9.0, right: 22.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              child: Column(
                                children: [
                                  DisplayNot(notification[(l++)%7],context),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                ],
                              ),
                            ),
                            // child: [
                            //   DisplayNot(notification[l++],context),
                            //   Divider(
                            //     color: Colors.grey,
                            //   ),
                            // ],
                          ),
                        ),

                          // child: Text(
                          //   'World Health Organization approves Chinese vaccine for emergency use',
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //   ),
                          //   maxLines: 3,
                          // ),
                      ],
                    ),
                  ],
                ),
              );

            },
                //     Divider(
                //       color: Colors.grey,
                //     ),
                //     Column(
                //       children: [
                //         //  Padding(
                //         //   padding: const EdgeInsets.only(top:40.0,left:30),
                //         //   child: FaIcon(FontAwesomeIcons.bolt,color:Colors.blue),
                //         // ),
                //         Padding(
                //           padding: const EdgeInsets.only(top:5.0,right: 205.0),
                //           child: Text(
                //             'News for You\n',
                //             style: TextStyle(
                //               color: Colors.grey,
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left:9.0,right:22.0,),
                //           child: Text(
                //             'The Indian Premier League is postponed due to COVID-19, says BCCI',
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //             maxLines: 3,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Divider(
                //       color: Colors.grey,
                //     ),
                //     Column(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(top:5.0,right: 205.0),
                //           child: Text(
                //             'News for You\n',
                //             style: TextStyle(
                //               color: Colors.grey,
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left:9.0,right:22.0),
                //           child: Text(
                //             'Former PM Manmohan Singh tests positive for COVID-19',
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //             maxLines: 3,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Divider(
                //       color: Colors.grey,
                //     ),
                //     Column(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(top:5.0,right: 205.0),
                //           child: Text(
                //             'News for You\n',
                //             style: TextStyle(
                //               color: Colors.grey,
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left:9.0,right:22.0),
                //           child: Text(
                //             'Chinese Rocket will land in India on May 9th',
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //             maxLines: 3,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Divider(
                //       color: Colors.grey,
                //     ),
                //     Column(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(top:5.0,right: 205.0),
                //           child: Text(
                //             'News for You\n',
                //             style: TextStyle(
                //               color: Colors.grey,
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left:9.0,right:22.0),
                //           child: Text(
                //             "COVID-19 SOS: Here's a list of resources for Delhi",
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //             maxLines: 3,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Divider(
                //       color: Colors.grey,
                //     ),
                //     Column(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(top:5.0,right: 205.0),
                //           child: Text(
                //             'News for You\n',
                //             style: TextStyle(
                //               color: Colors.grey,
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left:9.0,right:22.0),
                //           child: Text(
                //             'AKTU Odd Semester result will declare in mid June',
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //             maxLines: 3,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Divider(
                //       color: Colors.grey,
                //     ),
                //     Column(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(top:5.0,right: 205.0),
                //           child: Text(
                //             'News for You\n',
                //             style: TextStyle(
                //               color: Colors.grey,
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left:9.0,right:22.0),
                //           child: Text(
                //             'AKTU Odd Semester result will declare in mid June',
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //             maxLines: 3,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Divider(
                //       color: Colors.grey,
                //     ),
                //     Column(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(top:5.0,right: 205.0),
                //           child: Text(
                //             'News for You\n',
                //             style: TextStyle(
                //               color: Colors.grey,
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left:9.0,right:22.0),
                //           child: Text(
                //             'Shooter Dadi passes away due to COVID-19',
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //             maxLines: 3,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Divider(
                //       color: Colors.grey,
                //     ),
                //   ],
                // ),
          ),
        ),
      ],
    );
  }
}

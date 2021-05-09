import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
      //      itemCount: 8,
            itemBuilder: (context,index){
              return ListTile(
                // leading: Icon(
                //     icon: Icon(Icons.search),
                // ),
                // trailing: Icon(
                //   icon: Icon(Icons.headset_mic,color: Colors.grey,),
                //   ),
                title: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,right: 230.0),
                          child: Text(
                            'News for You\n',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:25.0,right:22.0),
                          child: Text(
                            'World Health Organization approves Chinese vaccine for emergency use',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,right: 230.0),
                          child: Text(
                            'News for You\n',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:25.0,right:22.0,),
                          child: Text(
                            'The Indian Premier League is postponed due to COVID-19, says BCCI',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,right: 230.0),
                          child: Text(
                            'News for You\n',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:25.0,right:22.0),
                          child: Text(
                            'Former PM Manmohan Singh tests positive for COVID-19',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,right: 230.0),
                          child: Text(
                            'News for You\n',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:11.0,right:22.0),
                          child: Text(
                            'Chinese Rocket will land in India on May 9th',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,right: 230.0),
                          child: Text(
                            'News for You\n',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:25.0,right:22.0),
                          child: Text(
                            "COVID-19 SOS: Here's a list of resources for Delhi",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,right: 230.0),
                          child: Text(
                            'News for You\n',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:25.0,right:22.0),
                          child: Text(
                            'AKTU Odd Semester result will declare in mid June',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,right: 230.0),
                          child: Text(
                            'News for You\n',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:25.0,right:22.0),
                          child: Text(
                            'COVID-19 vaccination for 18-45 age group is now open',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,right: 230.0),
                          child: Text(
                            'News for You\n',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:11.0,right:22.0),
                          child: Text(
                            'Shooter Dadi passes away due to COVID-19',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ],
    );
  }
}

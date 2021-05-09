import 'package:flutter/material.dart';
import 'package:twitter_ui/storydata.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'user_moments.dart';
import 'user_bookmarks.dart';
import 'user_lists.dart';
import 'user_profile.dart';
import 'user_topics.dart';
import 'search_screen.dart';
import 'notification_screen.dart';
import 'storybtn.dart';
import 'storydata.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentindex=0;

    List<StoryData> stories = [
       StoryData(userName: 'Lakshay Kumar' , avatarUrl: 'images/5.jpg'),
       StoryData(userName: 'Angela Yu' , avatarUrl: 'images/1.jpg'),
       StoryData(userName: 'Mam' , avatarUrl: 'images/2.jpg'),
       StoryData(userName: 'Joseph' , avatarUrl: 'images/3.jpg'),
       StoryData(userName: 'Sam' , avatarUrl: 'images/4.jpg'),
       StoryData(userName: 'Buttler' , avatarUrl: 'images/6.jpg'),
       StoryData(userName: 'Maam' , avatarUrl: 'images/7.jpg'),
    ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color:Colors.blue),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 130.0,
                ),
                IconButton(
                  icon: Icon(Icons.group, size: 35, color: Colors.blue,),
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
                        Text('@lakshaykumar05',
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
        body: Column(
          children: [
            // Row(
            //   children: [
            //     IconButton(
            //       icon: Icon(Icons.account_circle_rounded,color: Colors.grey,size: 60.0,),
            //     ),
            //   ],
            // ),
            Container(
              width: double.infinity,
              height:150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(stories[0],context),
                  storyButton(stories[1],context),
                  storyButton(stories[2],context),
                  storyButton(stories[3],context),
                  storyButton(stories[4],context),
                  storyButton(stories[5],context),
                  storyButton(stories[6],context),
                ],
              ),
            ),
          ],
        //   children: [
        //
        //     SizedBox(
        //       height: 40.0,
        //       child: Divider(
        //         color: Colors.grey,
        //       ),
        //     ),
        // ],
      ),
        bottomNavigationBar: BottomNavigationBar(
           currentIndex: _currentindex,
           type: BottomNavigationBarType.fixed,
           backgroundColor: Colors.black,
          iconSize: 29.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(''),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text(''),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email_outlined),
              title: Text(''),
              backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index){
            setState(() {
              _currentindex = index;
             // print(_currentindex);
              if(_currentindex==0){

              }
              if(_currentindex==1){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SearchScreen();
                }));
              }
              if(_currentindex==2){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NotificationScreen();
                }));
              }
              if(_currentindex==3){

              }
            });
          },
         ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.plus,color: Colors.white,),
            onPressed: (){},
          ),
        ),
    ),
    );
  }
}







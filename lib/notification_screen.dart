import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'user_bookmarks.dart';
import 'message_screen.dart';
import 'user_moments.dart';
import 'Notifications.dart';
import 'Mentions.dart';
import 'search_screen.dart';
import 'menu_screen.dart';


class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> with SingleTickerProviderStateMixin{

  int _currentindex=0;

  bool isOpened=false;
  AnimationController _animationcontroller;
  Animation<Color> _buttoncolor;
  Animation<double> _animationIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  void dispose(){
    _animationcontroller.dispose();
  }

  @override
  void initState()
  {
    _animationcontroller=AnimationController(vsync: this, duration: Duration(milliseconds: 500))
      ..addListener(() {setState(() {
      });
      });
    _animationIcon = Tween <double> (begin: 0.0,end: 1.0).animate(_animationcontroller);
    _buttoncolor = ColorTween(begin: Colors.blue,end: Colors.blue).animate(CurvedAnimation(
        parent: _animationcontroller,
        curve: Interval(0.0,1.0,curve: Curves.linear)));
    _translateButton =Tween <double> (begin: _fabHeight,end: -5).animate(CurvedAnimation(
        parent: _animationcontroller,
        curve: Interval(0.0,0.75,curve: _curve)));

    super.initState();
  }

  Widget buttonAdd(){
    return Container(
      child: FloatingActionButton(
        heroTag: 'next1',
        onPressed: (){

        },
        //     tooltip: 'Add',
        child: Icon(Icons.workspaces_filled,color: Colors.blue,),
      ),
    );
  }

  Widget buttonEdit(){
    return Container(
      child: FloatingActionButton(
        heroTag: 'next2',
        onPressed: (){

        },
        //   tooltip: 'Edit',
        child: Icon(Icons.photo,color: Colors.blue,),
      ),
    );
  }

  Widget buttonDelete(){
    return Container(
      child: FloatingActionButton(
        heroTag: 'next3',
        onPressed: (){

        },
        //   tooltip: 'Delete',
        child: Icon(Icons.gif,color: Colors.blue,),
      ),
    );
  }

  Widget buttonToggle(){
    return Container(
      child: FloatingActionButton(
        heroTag: 'next4',
        backgroundColor: _buttoncolor.value,
        onPressed: animate,
        //    tooltip: 'Toggle',
        child: Icon(Icons.add),
        //AnimatedIcon(icon: Icons.add,progress: _animationIcon,),
      ),
    );
  }

  animate()
  {
    if(!isOpened)
      _animationcontroller.forward();
    else
      _animationcontroller.reverse();
    isOpened=!isOpened;
  }

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
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return App();
                  }));
                }
                if(_currentindex==1){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SearchScreen();
                  }));
                }
                if(_currentindex==2){
                  // Navigator.push(context, MaterialPageRoute(builder: (context){
                  //   return NotificationScreen();
                  // }));
                }
                if(_currentindex==3){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MessageScreen();
                  }));
                }
              });
            },
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Transform(transform: Matrix4.translationValues(0.0, _translateButton.value*3.0, 0.0),
                child: buttonAdd(),
              ),
              Transform(transform: Matrix4.translationValues(0.0, _translateButton.value*2.0, 0.0),
                child: buttonEdit(),
              ),
              Transform(transform: Matrix4.translationValues(0.0, _translateButton.value, 0.0),
                child: buttonDelete(),
              ),
              buttonToggle(),
            ],
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


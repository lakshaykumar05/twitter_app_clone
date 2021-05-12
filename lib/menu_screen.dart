import 'package:flutter/cupertino.dart';
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
import 'message_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  int _currentindex=0;

  bool isOpened=false;
  AnimationController _animationcontroller;
  Animation<Color> _buttoncolor;
  Animation<double> _animationIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;



    List<StoryData> stories = [
       StoryData(userName: 'Lakshay' , avatarUrl: 'images/5.jpg'),
       StoryData(userName: 'Angela Yu' , avatarUrl: 'images/1.jpg'),
       StoryData(userName: 'Mam' , avatarUrl: 'images/2.jpg'),
       StoryData(userName: 'Joseph' , avatarUrl: 'images/3.jpg'),
       StoryData(userName: 'Sam' , avatarUrl: 'images/4.jpg'),
       StoryData(userName: 'Buttler' , avatarUrl: 'images/6.jpg'),
       StoryData(userName: 'Maam' , avatarUrl: 'images/7.jpg'),
    ];


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
                            icon: FaIcon(Icons.list_alt, size: 24.0,color:Colors.grey),
                        //    icon: Icon(Icons.account_circle, size: 33.0,color:Colors.grey),
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
                            icon: FaIcon(Icons.comment, size: 24.0,color:Colors.grey),
                          //  icon: Icon(Icons.account_circle, size: 33.0,color:Colors.grey),
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
                            icon: FaIcon(FontAwesomeIcons.bookmark, size: 24.0,color:Colors.grey),
                       //     icon: Icon(Icons.account_circle, size: 33.0,color:Colors.grey),
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
                            icon: FaIcon(FontAwesomeIcons.bolt, size: 24.0,color:Colors.grey),
                          //  icon: Icon(Icons.account_circle, size: 33.0,color:Colors.grey),
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
            Container(
              width: double.infinity,
              height:108.0,
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
            Divider(
              color: Colors.grey,
            ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context,index) {
                        return ListTile(
                    //      leading: CircleAvatar(backgroundColor: Colors.blue,maxRadius: 15,),
                          title: Column(
                            children: [
                          Row(
                          children: [
                          CircleAvatar(backgroundColor:Colors.blue,radius:24,child: Text('IPL',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                          Padding(
                            padding: const EdgeInsets.only(left:4.0),
                            child: Row(
                              children: [
                                Text('IndianPremierLeague',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),),
                                Padding(
                                  padding: const EdgeInsets.only(left:10.0),
                                  child: Text('@IPL 8h',style: TextStyle(
                                    color: Colors.grey,
                                    //       fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                ),
                              ],
                            ),
                          ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:30.0),
                              child: Text(' An absolute livewire on the field\n 4 splendid catches against #RR \n Celebration at the end of it.\n Sit back & enjoy this @imjadeja fielding\n special during ',style: TextStyle(
                                color: Colors.white,
                                //    fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:200.0),
                              child: Text('#VIVOIPL',style: TextStyle(
                                color: Colors.blue,
                                //    fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ),
                          ],
                        ),
                            Padding(
                              padding: const EdgeInsets.only(right: 173.0),
                              child: Text('@ChennaiIPL',style: TextStyle(
                                color: Colors.blue,
                                //    fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                              Container(
                                width: 280,
                                height:200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  image: DecorationImage(
                                //    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                //    Boxshape: Boxshape.rectangle,
                                    image: AssetImage('images/jaddu.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                              Padding(
                                padding: const EdgeInsets.only(top:18.0,left: 63),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.comment,color: Colors.grey,size: 17,),
                                    Text('   34 ',style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    FaIcon(FontAwesomeIcons.retweet,color: Colors.grey,size: 17,),
                                    Text('   197 ',style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    FaIcon(FontAwesomeIcons.heart,color: Colors.grey,size: 17,),
                                    Text('   3,148 ',style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.share,color: Colors.grey,size: 20),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                        ],
                        ),
                        );
                      },
                    ),
                  ),
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
    );
  }
}







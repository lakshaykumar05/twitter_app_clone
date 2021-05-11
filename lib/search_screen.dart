import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'user_bookmarks.dart';
import 'user_moments.dart';
import 'storyView.dart';
import 'menu_screen.dart';
import 'notification_screen.dart';
import 'message_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with SingleTickerProviderStateMixin{
  int initial_index;
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
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            bottom: const TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.red,
              isScrollable: true,
              tabs: <Widget>[
                TextButton(
                  child: Tab(
                    child: Text('For You',style:
                      TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                      ),),
                  ),
                ),
                Tab(
                  child: Text('COVID-19',style:
                  TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),),
                ),
                Tab(
                  child: Text('Trending',style:
                  TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),),
                ),
                Tab(
                  child: Text('News',style:
                  TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),),
                ),
                Tab(
                  child: Text('Sports',style:
                  TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),),
                ),
                Tab(
                  child: Text('Entertainment ',style:
                  TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),),
                ),
              ],
            ),
            backgroundColor: Colors.black,
            iconTheme: IconThemeData(color:Colors.blue),
            actions: [
              Row(
                children: [
                  Container(
                    child: SizedBox(
                      width: 300.0,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                   //       filled: true,
                          hintText: 'Search Twitter',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.5),
                            borderSide:BorderSide.none ,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, size: 25, color: Colors.blue,),
                    onPressed: () {},
                  ),
                ],
              )
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
                      padding: const EdgeInsets.only(left: 17.0, top: 17.0, bottom: 10.0),
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
          body:
          ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:13.0,left: 0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Text('COVID-19 - LIVE',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Text('COVID-19 vaccination for 18-45 age group is now open',style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                        // Divider(
                        //   color: Colors.grey,
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height:5.0
                  ),
                  Divider(
                    color: Colors.grey,
                    //       thickness: 8,
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:13.0,left: 0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Food - Trending',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('Milk',style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('129K Tweets',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                        // Divider(
                        //   color: Colors.grey,
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height:5.0
                  ),
                  Divider(
                    color: Colors.grey,
                    //       thickness: 8,
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:13.0,left: 0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('La Liga - Live',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('Real Madrid vs Barcellona',style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: [
                                Text('Tending with',style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                Text(' Messi, Ronaldo',style:TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ],
                            ),
                          ),
                        ),
                        // Divider(
                        //   color: Colors.grey,
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height:5.0
                  ),
                  Divider(
                    color: Colors.grey,
             //       thickness: 8,
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:13.0,left: 0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Politics - Trending',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('#ModiMahal',style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('38.1K Tweets',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height:5.0
                  ),
                  Divider(
                    color: Colors.grey,
                    //       thickness: 8,
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:13.0,left: 0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Sports - Trending',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('MS Dhoni',style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('35.4K Tweets',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height:5.0
                  ),
                  Divider(
                    color: Colors.grey,
                    //       thickness: 8,
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:13.0,left: 0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Entertainment - Trending',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('Disha Patani',style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('85K Tweets',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height:5.0
                  ),
                  Divider(
                    color: Colors.grey,
                    //       thickness: 8,
                  ),
                ],
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
                icon: Icon(Icons.search,color: Colors.blue,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return App();
                    }));
                }
                if(_currentindex==1){
                  // Navigator.push(context, MaterialPageRoute(builder: (context){
                  //   return SearchScreen();
                  //}));
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
      ),
    );
  }
}

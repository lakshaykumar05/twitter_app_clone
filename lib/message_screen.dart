import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'menu_screen.dart';
import 'search_screen.dart';
import 'notification_screen.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  int _currentindex=3;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:238.0),
                child: Text('Send a message, get a message\n',style:
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:22.0,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:18.0,right: 18,),
                child: Text('Direct Messages are private conversations \nbetween you and other people on Twitter.\n',
                  style:
                TextStyle(
                  color: Colors.grey,
                  fontSize:18.0,
                ),
                maxLines: 3,
                  ),
              ),
              Text('Share Tweets, media and more!',style:
              TextStyle(
                color: Colors.grey,
                fontSize:18.0,
              ),),
              SizedBox(
                height: 15,
              ),
              TextButton(
                // style: TextButton.styleFrom(
                //   backgroundColor: Colors.blue,
                // ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                child: Text('Write a message',style:
                  TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),),
              ),
            ],
          ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NotificationScreen();
                }));
              }
              if(_currentindex==3){
                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return MessageScreen();
                // }));
              }
            });
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.email,color: Colors.white,),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}

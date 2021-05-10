import 'package:flutter/material.dart';

class Fbutton extends StatefulWidget {
  @override
  _FbuttonState createState() => _FbuttonState();
}

class _FbuttonState extends State<Fbutton> with SingleTickerProviderStateMixin {

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
        heroTag: 'next2',
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
        heroTag: 'next3',
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
        heroTag: 'next4',
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
        heroTag: 'next5',
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
    return Scaffold(
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
    );
  }
}

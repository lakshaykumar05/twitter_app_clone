import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Moments extends StatefulWidget {
  @override
  _MomentsState createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  final TapGestureRecognizer _gesturerecognizer = TapGestureRecognizer()..onTap = (){
    debugPrint("Hello");
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color:Colors.blue),
          title: Text('Moments',style:
            TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:43.0,right: 30.0),
                  child: Text("You haven't created any Moments",style:
        TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21.0,
        ),
           //       maxLines: 2,
                  ),
                ),
        ],
      ),
         //      Row(
         // //       crossAxisAlignment: CrossAxisAlignment.center,
         //        mainAxisAlignment: MainAxisAlignment.center,
         //        children: [
         //          Padding(
         //            padding: const EdgeInsets.only(left:28.0,right: 28.0,top: 0.0),
         //            child: Text('Moments',style:
         //            TextStyle(
         //              color: Colors.white,
         //              fontWeight: FontWeight.bold,
         //              fontSize: 23.0,
         //            ),) ,
         //          ),
         //        ],
         //      ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:65.0,right: 58.0),
                    child: Text("You haven't create or edit a Moment, please use",style:
                    TextStyle(
                      color: Colors.grey,
              //        fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                    ),
                      //       maxLines: 2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:23.0),
                    child: RichText(
                      text: TextSpan(
                        text: "twitter.com.", style:
                      TextStyle(
                        color: Colors.grey,
                        //        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                        children: [
                          TextSpan(
                            text: "Learn more",style:
                          TextStyle(
                            color: Colors.blue,
                          ),
                            recognizer: _gesturerecognizer,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
      ),
    );
  }
}

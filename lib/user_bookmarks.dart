import 'package:flutter/material.dart';

class Bookmarks extends StatefulWidget {
  @override
  _BookmarksState createState() => _BookmarksState();
}

class _BookmarksState extends State<Bookmarks> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color:Colors.blue),
          title: Text('Bookmarks',style:
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
                    padding: const EdgeInsets.only(left:43.0,),
                    child: Text("You haven't created any Tweets to",style:
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:43.0,),
                    child: Text("your Bookmarks yet",style:
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
              SizedBox(
                height: 14.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:43.0,),
                    child: Text("When you do, they'll show up here.",style:
                    TextStyle(
                      color: Colors.grey,
                 //     fontWeight: FontWeight.bold,
                      fontSize: 15.0,
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
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left:65.0,right: 58.0),
              //       child: Text("You haven't create or edit a Moment, please use",style:
              //       TextStyle(
              //         color: Colors.grey,
              //         //        fontWeight: FontWeight.bold,
              //         fontSize: 13.0,
              //       ),
              //         //       maxLines: 2,
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 5.0,
              // ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left:23.0),
              //       child: Text("twitter.com.",style:
              //       TextStyle(
              //         color: Colors.grey,
              //         //        fontWeight: FontWeight.bold,
              //         fontSize: 13.0,
              //       ),
              //         //       maxLines: 2,
              //       ),
              //     ),
              //     Text('Learn more',style:
              //     TextStyle(
              //       color: Colors.blue,
              //     ),),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

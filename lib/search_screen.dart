import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'user_bookmarks.dart';
import 'user_moments.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int initial_index;
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
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.plus,color: Colors.white,),
              onPressed: (){},
            ),
          ),
        ),
      ),
    );
  }
}

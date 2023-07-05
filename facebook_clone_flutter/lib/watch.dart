import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home/Div.dart';

class Watch extends StatefulWidget {
  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
            child: Text('Watch',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 60.0,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 15.0),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.grey[300]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.videocam, size: 20.0,color: Colors.black),
                      SizedBox(width: 5.0),
                      Text('Live',
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black))
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.grey[300]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.music_note, size: 20.0,color: Colors.black),
                      SizedBox(width: 5.0),
                      Text('Music',
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black))
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.grey[300]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.check_box, size: 20.0,color: Colors.black),
                      SizedBox(width: 5.0),
                      Text('Following',
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black))
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.grey[300]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.fastfood, size: 20.0,color: Colors.black),
                      SizedBox(width: 5.0),
                      Text('Food',
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black))
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.grey[300]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.gamepad, size: 20.0,color: Colors.black),
                      SizedBox(width: 5.0),
                      Text('Gaming',
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black))
                    ],
                  ),
                ),
                SizedBox(width: 15.0),
              ],
            ),
          ),
          Div(),
          Column(
            children: <Widget>[
              const Padding(
                padding:  EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/LQLQ.jpg'),
                      radius: 20.0,
                    ),
                    SizedBox(width: 7.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Hajar',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0)),
                        SizedBox(height: 5.0),
                        Text('7h')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              Image.asset('assets/B.gif'),
              SizedBox(height: 10.0),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.thumbsUp,
                            size: 15.0, color: Colors.blue),
                        Text(' 23'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('2 comments  •  '),
                        Text('1 share'),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(height: 30.0),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                        SizedBox(width: 5.0),
                        Text('Like', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.message, size: 20.0),
                        SizedBox(width: 5.0),
                        Text('Comment', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.share, size: 20.0),
                        SizedBox(width: 5.0),
                        Text('Share', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Div(),
          Column(
            children: <Widget>[
              const Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/LQLQ1.jpg'),
                      radius: 20.0,
                    ),
                    SizedBox(width: 7.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Eman',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0)),
                        SizedBox(height: 5.0),
                        Text('10h')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Image.asset("assets/R.gif"),
              SizedBox(height: 10.0),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.thumbsUp,
                            size: 15.0, color: Colors.blue),
                        Text(' 98'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('12 comments  •  '),
                        Text('6 shares'),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(height: 30.0),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                        SizedBox(width: 5.0),
                        Text('Like', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.message, size: 20.0),
                        SizedBox(width: 5.0),
                        Text('Comment', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.share, size: 20.0),
                        SizedBox(width: 5.0),
                        Text('Share', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Div(),
        ],
      )
    ]);
  }
}

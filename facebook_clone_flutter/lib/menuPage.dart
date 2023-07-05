import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {

  final String name;
  const Menu({Key? key, required this.name}) : super(key: key);
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<int> listItems = [1, 2, 3, 4];
  List<String> listop = [
    "  Help Center",
    "  Help Center",
    "  support inbox",
    "  Report a problem",
    "  Terms & policies"
  ];
  int valueChoose = 1;

  final List<IconData> _iconList = <IconData>[
    Icons.live_help,
    Icons.support,
    Icons.inbox,
    Icons.report,
    Icons.book,
  ];

  List<int> listItems2 = [1, 2, 3, 4];
  List<String> listop2 = [
    "  Help Center",
    "  Setting",
    "  Privacy shortcuts",
    "  Language",
    "  Code Generator"
  ];
  int valueChoose2 = 1;

  final List<IconData> _iconList2 = <IconData>[
    Icons.live_help,
    Icons.lock,
    Icons.inbox,
    Icons.language,
    Icons.key,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // const Padding(
              //   padding: EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 15.0),
              //   child: Row(),
              // ),
              Row(
                children: <Widget>[
                  SizedBox(width: 15.0),
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0)),
                      const SizedBox(height: 5.0),
                      Text(
                        'See your profile',
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      height: 85.0,
                      padding: EdgeInsets.only(left: 15.0),
                      decoration: BoxDecoration(
                          color: Color(0xff5c5c59),
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Icon(Icons.group,
                              color: Colors.blue, size: 30.0),
                          const SizedBox(height: 5.0),
                          const Text('Groups',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      height: 85.0,
                      padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          color: Color(0xff5c5c59),
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Icon(Icons.shopping_basket,
                              color: Color(0xff21f371), size: 30.0),
                          const SizedBox(height: 5.0),
                          const Text('Marketplace',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      height: 85.0,
                      padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          color: Color(0xff5c5c59),
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.person,
                              color: Color(0xffedd051), size: 30.0),
                          SizedBox(height: 5.0),
                          Text('Friends',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      height: 85.0,
                      padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          color: Color(0xff5c5c59),
                          border: Border.all(
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.history,
                              color: Color(0xfff35221), size: 30.0),
                          SizedBox(height: 5.0),
                          Text('Memories',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      height: 85.0,
                      padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          color: Color(0xff5c5c59),
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.flag,
                              color: Color(0xfff32121), size: 30.0),
                          SizedBox(height: 5.0),
                          Text('Pages',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      height: 85.0,
                      padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          color: Color(0xff5c5c59),
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child:GestureDetector(child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                           Icon(Icons.save_alt,
                              color: Color(0xfff321e9), size: 30.0),
                          SizedBox(height: 5.0),
                          Text(
                          "Saved", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)
                          ,],),
                        onTap:() => Navigator.pushNamed(context, '/saved'),),
                      ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      height: 85.0,
                      padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          color: Color(0xff5c5c59),
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: GestureDetector(child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.videogame_asset_sharp,
                              color: Colors.cyanAccent, size: 30.0),
                          SizedBox(height: 5.0),
                          Text(
                            "Game", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)
                          ,],),
                        onTap:() => Navigator.pushNamed(context, '/game'),),
                    ),
                    Container(
                      width: 160.0,
                      height: 85.0,
                      padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                          color: Color(0xff5c5c59),
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: GestureDetector(child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.call_sharp,
                              color: Colors.orangeAccent, size: 30.0),
                          SizedBox(height: 5.0),
                          Text(
                            "Calls", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)
                          ,],),
                        onTap:() => Navigator.pushNamed(context, '/Calls'),),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xff414040),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('See more',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffd2cece),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
              ),
              Divider(
                color: Color(0xffeae0e0),
              ),
              Container(
                // width: 500,
                height: 65.0,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                margin: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                decoration: BoxDecoration(
                    color: Color(0xff5c5c59),
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: <Widget>[
                    DropdownButton(
                      value: valueChoose,
                      onChanged: (newValue) => setState(() {
                        valueChoose = newValue as int;
                      }),
                      items: listItems.map((valueItem) {
                        return DropdownMenuItem(
                            value: valueItem,
                            child: Row(children: <Widget>[
                              Icon(_iconList[valueItem]),
                              Text(listop[valueItem],
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 135,
                              )
                            ]));
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Container(
                //width: 800,
                height: 65.0,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                margin: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                decoration: BoxDecoration(
                    color: Color(0xff5c5c59),
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: <Widget>[
                    DropdownButton(
                      value: valueChoose2,
                      onChanged: (newValue) => setState(() {
                        valueChoose2 = newValue as int;
                      }),
                      items: listItems.map((valueItem) {
                        return DropdownMenuItem(
                            value: valueItem,
                            child: Row(children: <Widget>[
                              Icon(_iconList2[valueItem]),
                              Text(listop2[valueItem],
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 135,
                              )
                            ]));
                      }).toList(),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(context, '/login'),
                  FirebaseAuth.instance.signOut(),
                },
                 
                child: Container(
                  //width: 370.0,
              
                  height: 55.0,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  margin: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xff5c5c59),
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.circular(10.0)),
                  child:const  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.exit_to_app,
                          ),
                          SizedBox(width: 10.0),
                          
                          Text('Logout', style: TextStyle(fontSize: 17.0)),
                          
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]
        )
      ],
    );
  }
}

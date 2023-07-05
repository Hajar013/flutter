import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Saved extends StatefulWidget {
  const Saved({
    Key? key,
  }) : super(key: key);

  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  bool alive = true;
  late final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
        home:Scaffold(
          appBar: AppBar(title: Text('Saved'), centerTitle: true,
          actions: [
            IconButton(onPressed: ()=> Navigator.pop(context,'/TabNavigation'), icon: const Icon(Icons.arrow_forward_ios_sharp))
          ],
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 13),
            children: [
              const Text(
                'Most recent',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color(0xffd2cece),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Slidable(
                  key: const ValueKey(1),
                  groupTag: '0',
                  startActionPane: const ActionPane(
                    openThreshold: 0.1,
                    closeThreshold: 0.4,
                    motion: BehindMotion(),
                    children: [
                      SlideAction(color: Colors.green, icon: Icons.share,),
                      SlideAction(color: Colors.amber, icon: Icons.post_add_outlined,),
                    
                    ],
                  ),
                  endActionPane: const ActionPane(
                    motion: BehindMotion(),
                    children: [
                      //SlidableAction(onPressed:doSomething ),
                      SlideAction(color: Colors.red, icon: Icons.delete_forever),
                      SlideAction(color: Colors.blue, icon: Icons.search),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child:const  Image(
                            width: 100,
                            image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.4Jv5778ItiShmP7ylkj7DAHaFS?pid=ImgDet&rs=1',
                            ),
                          ),
                        ),
                      ),
                      const Column(
                        children: [
                          Text("Cute cats",
                              style: TextStyle(
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffd2cece))),
                          Text("Saved from cats",
                              style:
                              TextStyle(fontSize: 15.0, color: Colors.grey)),
                        ],
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Slidable(
                key: const ValueKey(2),
                groupTag: '0',
                startActionPane: const ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlideAction(color: Colors.green, icon: Icons.share,),
                    SlideAction(color: Colors.amber, icon: Icons.post_add_outlined),
                  ],
                ),
                endActionPane: const ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlideAction(color: Colors.red, icon: Icons.delete_forever),
                    SlideAction(color: Colors.blue, icon: Icons.search),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child:const Image(
                          width: 100,
                          image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.xu0xZfW5XBujGSEqlLLTGgHaE7?pid=ImgDet&rs=1',
                          ),
                        ),
                      ),
                    ),
                    //const SizedBox(width: 15.0),
                    const Column(
                      children: [
                        Text("Flower Spring",
                            style: TextStyle(
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffd2cece))),
                        Text("Saved from flowers",
                            style: TextStyle(fontSize: 15.0, color: Colors.grey)),
                      ],
                    ),
                    // const SizedBox(width: 60.0),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Slidable(
                key: const ValueKey(3),
                startActionPane: const ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlideAction(color: Colors.green, icon: Icons.share,),
                    SlideAction(color: Colors.amber, icon: Icons.post_add_outlined),
                  ],
                ),
                endActionPane: const ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlideAction(color: Colors.red, icon: Icons.delete_forever),
                    SlideAction(color: Colors.blue, icon: Icons.search),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image(
                              width: 100,
                              image: NetworkImage(
                                  'https://th.bing.com/th/id/OIP.V3OnWzmpcgfNGRlrKjGrnwHaE9?pid=ImgDet&rs=1'))),
                    ),
                    // const SizedBox(width: 15.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Office Laptop",
                            style: TextStyle(
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffd2cece))),
                        Text("Saved from Laptop",
                            style: TextStyle(fontSize: 15.0, color: Colors.grey)),
                      ],
                    ),
                    //const SizedBox(width: 60.0),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Slidable(
                key: const ValueKey(5),
                startActionPane: const ActionPane(
                  motion: BehindMotion(),
                  children: [
                    SlideAction(color: Colors.green, icon: Icons.share,),
                    SlideAction(color: Colors.amber, icon: Icons.post_add_outlined),
                  ],
                ),
                endActionPane: const ActionPane(
                  motion: BehindMotion(),
                  children: [
                    SlideAction(color: Colors.red, icon: Icons.delete_forever),
                    SlideAction(color: Colors.blue, icon: Icons.search),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child:const Image(
                              width: 100,
                              image: AssetImage('assets/quds.jpg'))),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("AlQuds",
                            style: TextStyle(
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffd2cece))),
                        Text("Saved from palestine",
                            style: TextStyle(fontSize: 15.0, color: Colors.grey)),
                      ],
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
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
                margin: EdgeInsets.symmetric(vertical: 15),
                child:const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Collections',
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Color(0xffd2cece),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Create',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xf943a1d7),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xff414040),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                            fit: BoxFit.cover,
                            //: 100,
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuNbaKbfwqcOMCDkFc8KOOxDaTBBUMhhCLUg&usqp=CAU')),
                        Text("for later use",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("only me")
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
              )
            ],
          ),
        ));
  }
}

class SlideAction extends StatelessWidget {
  const SlideAction({
    Key? key,
    required this.color,
    required this.icon,
    this.flex = 1,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      flex: flex,
      backgroundColor: color,
      onPressed: (_) {
        print(icon);
      },
      icon: icon,
    );
  }
}




import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name;
  const Profile({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 360.0,
          child: Stack(
            children: <Widget>[
              Container(
                height: 210.0,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_a_photo_outlined,
                      color: Colors.black,
                      size: 12.0,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('Add cover photo',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage('assets/profile.jpg')),
                  const SizedBox(height: 15.0),
                     Text(name,
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: MediaQuery.of(context).size.width - 250,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text('Add to story',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0))
                            ]),
                      ),
                      Container(
                        height: 40.0,
                        width: MediaQuery.of(context).size.width - 250,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.mode),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text('Edit profile',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0))
                            ]),
                      ),
                      Container(
                        height: 40.0,
                        width: 45.0,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Icon(Icons.more_horiz),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          child: Divider(height: 30.0),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.blue[500],
                        borderRadius: BorderRadius.circular(20)),
                    child:
                        const Text('Posts', style: TextStyle(fontSize: 15.0)),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text('Photos', style: TextStyle(fontSize: 15.0)),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text('Reels', style: TextStyle(fontSize: 15.0)),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                child: Divider(height: 20.0),
              ),
              const Row(
                children: [
                  Text('Details', style: TextStyle(fontSize: 18.0)),
                ],
              ),
              const SizedBox(height: 20.0),
              const Row(
                children: <Widget>[
                  Icon(Icons.home, color: Colors.grey, size: 30.0),
                  SizedBox(width: 10.0),
                  Text('Lives in New York', style: TextStyle(fontSize: 16.0))
                ],
              ),
              const SizedBox(height: 15.0),
              const Row(
                children: <Widget>[
                  Icon(Icons.location_on, color: Colors.grey, size: 30.0),
                  SizedBox(width: 10.0),
                  Text('From New York', style: TextStyle(fontSize: 16.0))
                ],
              ),
              const SizedBox(height: 15.0),
              const Row(
                children: <Widget>[
                  Icon(Icons.more_horiz, color: Colors.grey, size: 30.0),
                  SizedBox(width: 10.0),
                  Text('See your About Info', style: TextStyle(fontSize: 16.0))
                ],
              ),
              const SizedBox(height: 15.0),
              Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                    child: Text('Edit Public Details',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0))),
              ),
            ],
          ),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          child: Divider(height: 30.0),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Friends',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 6.0),
                      Text('536 friends',
                          style:
                              TextStyle(fontSize: 16.0, color: Colors.white70)),
                    ],
                  ),
                  Text('Find Friends',
                      style: TextStyle(fontSize: 16.0, color: Colors.blue)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.width / 3 - 20,
                          width: MediaQuery.of(context).size.width / 3 - 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/samanth.jpg')),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        SizedBox(height: 5.0),
                        const Text('Samantha',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.width / 3 - 20,
                          width: MediaQuery.of(context).size.width / 3 - 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/andy.jpg'),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        SizedBox(height: 5.0),
                        Text('Andrew',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.width / 3 - 20,
                          width: MediaQuery.of(context).size.width / 3 - 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Sam Wilson.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        SizedBox(height: 5.0),
                        Text('Sam Wilson',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.width / 3 - 20,
                          width: MediaQuery.of(context).size.width / 3 - 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/steven.jpg')),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        SizedBox(height: 5.0),
                        Text('Steven',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.width / 3 - 20,
                          width: MediaQuery.of(context).size.width / 3 - 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/g1.jpg')),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        SizedBox(height: 5.0),
                        Text('Greg',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.width / 3 - 20,
                          width: MediaQuery.of(context).size.width / 3 - 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/andy.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        SizedBox(height: 5.0),
                        Text('Andy',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Center(
                    child: Text('See All Friends',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))),
              ),
            ],
          ),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          child: Divider(height: 30.0),
        ),

        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Your posts',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold)),
                  Text('Filters',
                      style: TextStyle(fontSize: 16.0, color: Colors.blue)),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Text("What's in your mind?")
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                child: Divider(height: 10.0),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.add_outlined,
                        color: Colors.purple,
                      ),
                      Text('Status')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.photo_outlined,
                        color: Colors.green,
                      ),
                      Text('Photo')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.flag,
                        color: Colors.purpleAccent,
                      ),
                      Text(
                        'Life event',
                      )
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                child: Divider(height: 10.0),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15.0),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('See All Friends',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))
                  ],
                )),
              ),
            ])),

        Container(
          width: MediaQuery.of(context).size.width,
          height: 8.0,
          color: Colors.black,
        ),

        const Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),

        Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Mike Tyler',
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              '16 May 2001 ',
                              style: TextStyle(fontSize: 10.0),
                            ),
                            Icon(
                              Icons.access_time_outlined,
                              size: 10.0,
                            ),
                            Icon(
                              Icons.lock,
                              size: 10.0,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Icon(Icons.more_horiz)
              ],
            ),
            Column(
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(Icons.child_care),
                ),
                SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Born on May,16 2001',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'May, 16 2001',
                  style: TextStyle(fontSize: 12.0),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              child: Divider(height: 30.0),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_rounded,
                      size: 16.0,
                    ),
                    Text(' Like')
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mode_comment_outlined,
                      size: 16.0,
                    ),
                    Text(' Comment')
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      size: 16.0,
                    ),
                    Text(
                      ' Share',
                    )
                  ],
                ),
              ],
            ),
          ],
        )),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          width: MediaQuery.of(context).size.width,
          height: 8.0,
          color: Colors.black,
        ),
        //SeparatorWidget()
      ],
    );
  }
}

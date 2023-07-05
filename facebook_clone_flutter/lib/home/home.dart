import 'package:flutter/material.dart';
import 'What_s_on_your_mind.dart';
import 'Div.dart';
import 'Story.dart';
import 'Post.dart';
import 'Wpost.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        What_s_on_your_mind(),
        Div(),
        Story(),
        for (Post post in posts)
          Column(
            children: <Widget>[
              Div(),
              Wpost(post: post),
            ],
          ),
      ],
    );
  }
}

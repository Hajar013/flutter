import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List<dynamic> _users = [];

  @override
  Widget build(BuildContext context) {
    return _users.isNotEmpty
          ? ListView.builder(
           itemCount: _users.length,
           itemBuilder: ((context, index) {
           return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                    _users[index]['image'],
                    scale: 3,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _users[index]['firstName'],
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(_users[index]['email']),
                      Text(_users[index]['phone']),
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      )
          : Container(
        child: ElevatedButton(
          child: const Text("Refresh calls"),
          onPressed: loadUserList,
        ),
    );
  }

  loadUserList() async {
    var res = await http.get(Uri.https("dummyjson.com", "users"));
   // print('e'res);
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);

      setState(() {
        _users = jsonData['users'];
      });
    }
  }
}

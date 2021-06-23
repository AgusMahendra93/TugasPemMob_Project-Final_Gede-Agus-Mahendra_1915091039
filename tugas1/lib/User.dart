import 'package:flutter/material.dart';

class User extends StatefulWidget {
  User({Key key, this.nama, this.umur, this.image,})
      : super(key: key);
  final String nama;
  final String umur;
  final String image;
  @override
  _User createState() => _User();
}

class _User extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Profile")),
      body: Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    widget.image,
                  ),
                  radius: 90,
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    widget.nama,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.umur,
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_location,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          top:
                              BorderSide(color: Theme.of(context).dividerColor),
                          bottom: BorderSide(
                              color: Theme.of(context).dividerColor))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Call",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.green),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: Colors.green,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Message",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.green),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ])
          ],
        ),
      ),
    );
  }
}

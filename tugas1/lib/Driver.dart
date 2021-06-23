import 'package:flutter/material.dart';
import 'User.dart';


class ListDriver extends StatefulWidget {
  @override
  _ListDriverState createState() => _ListDriverState();
}

class _ListDriverState extends State<ListDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Driver"),
      ),
      body: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => User(
                          nama: "Gede Agus Mahendra",
                          umur: "20 tahun",
                          image:
                              "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/93289217_690791238360814_4386360978833408000_o.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=W6L-fyHdPPYAX8gAaQq&_nc_ht=scontent-sin6-2.xx&oh=1b145153fa5f6e7749905507e2de0f57&oe=60783B29",
                        )),
              );
            },
            child: Driver (
              nama: "Gede Agus Mahendra",
              umur: "20 tahun",
              image:
                  "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/93289217_690791238360814_4386360978833408000_o.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=W6L-fyHdPPYAX8gAaQq&_nc_ht=scontent-sin6-2.xx&oh=1b145153fa5f6e7749905507e2de0f57&oe=60783B29",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => User(
                          nama: "I Gede Anggie Suardika Arpin",
                          umur: "20 tahun",
                          image:
                              "https://media-exp1.licdn.com/dms/image/C5603AQHbZKgzo1QAyg/profile-displayphoto-shrink_200_200/0/1612793112343?e=1619049600&v=beta&t=lF-xB5VBzKwcjh9BH_Efp7Uk59YOd95Bczh7ekTPsrw",
                        )),
              );
            },
            child: Driver(
              nama: "I Gede Anggie Suardika Arpin",
              umur: "20 tahun",
              image:
                  "https://media-exp1.licdn.com/dms/image/C5603AQHbZKgzo1QAyg/profile-displayphoto-shrink_200_200/0/1612793112343?e=1619049600&v=beta&t=lF-xB5VBzKwcjh9BH_Efp7Uk59YOd95Bczh7ekTPsrw",
            ),
          ),
        ],
      ),
    );
  }
}

class Driver extends StatelessWidget {
  Driver({Key key, this.nama, this.umur, this.image,})
      : super(key: key);
  final String nama;
  final String umur;
  final String image;
  final children = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(this.image),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.nama, //untuk nama
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                this.umur,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

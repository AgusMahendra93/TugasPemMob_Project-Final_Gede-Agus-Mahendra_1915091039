import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Tentang Aplikasi"),
        ),
        body: Container(
          width: double.infinity,
          child: new ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: Center(
                  child: Text(
                    "Deskripsi Aplikasi",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child : Text("Bali Resto",)
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 30),
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            '        Aplikasi Bali Resto adalah aplikasi yang memungkinkan pengguna untuk membeli makanan khas bali. Masing-masing pengguna dapat membeli makanan yang disediakan.',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.justify,
                          
                          )),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    "Pengembang",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://static.wikia.nocookie.net/onepunchman/images/8/81/Saitama_Anime_Profile.png/revision/latest?cb=20161002154538",
                        ),
                        radius: 90,
                      ),
                      Text(
                        "Nama : Gede Agus Mahendra",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "NIM : 1915091039",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Program Studi Sistem Informasi ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}

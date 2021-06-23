import 'package:flutter/material.dart';
import 'Detail Minuman.dart';

class DaftarMinuman extends StatefulWidget {
  @override
  _DaftarMinuman createState() => _DaftarMinuman();
}

class _DaftarMinuman extends State<DaftarMinuman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//appbar
appBar:  AppBar(title:  Text("Menu Minuman")),
//body  untuk  content
      body: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          minuman: "Es Kuwud",
                          deskripsi: "Minuman Khas Bali",
                          harga: 5000,
                          gambar: "es kuwud.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              minuman: "Es Kuwud",
              deskripsi: "Minuman Khas Bali",
              harga: 5000,
              gambar: "es kuwud.png",
              rate: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          minuman: "Es Rujak",
                          deskripsi: "Minuman Khas Bali",
                          harga: 5000,
                          gambar: "es rujak.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              minuman: "Es Rujak",
              deskripsi: "Minuman Khas Bali",
              harga: 5000,
              gambar: "es rujak.png",
              rate: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          minuman: "Es Daluman",
                          deskripsi: "Minuman Khas Bali",
                          harga: 5000,
                          gambar: "es daluman.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              minuman: "Es Daluman",
              deskripsi: "Minuman Khas Bali",
              harga: 5000,
              gambar: "es daluman.png",
              rate: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          minuman: "Es Kuwud Cincau",
                          deskripsi:"Minuman Khas Bali",
                          harga: 5000,
                          gambar: "es kuwud cincau.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              minuman: "Es Kuwud Cincau",
              deskripsi: "Minuman Khas Bali",
              harga: 5000,
              gambar: "es kuwud cincau.png",
              rate: 5,
            ),
          ),
                    new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          minuman: "Es Tambring",
                          deskripsi:"Minuman Khas Bali",
                          harga: 5000,
                          gambar: "es tambring.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              minuman: "Es Tambring",
              deskripsi: "Minuman Khas Bali",
              harga: 5000,
              gambar: "es tambring.png",
              rate: 5,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.minuman, this.deskripsi, this.harga, this.gambar, this.rate})
      : super(key: key);
  final String minuman;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int rate;
  final children = <Widget>[];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < rate; i++) {
      children.add(new Icon(
        Icons.star,
        size: 12,
        color: Colors.orange,
      ));
    }

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            "gambar/" + gambar,
            width: 150,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Text(
                    this.minuman, 
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(this.deskripsi), 
                  Text(
                    "Harga :" + this.harga.toString(), 
                    style: TextStyle(color: Colors.orange),
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: children,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

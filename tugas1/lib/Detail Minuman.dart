import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  DetailProduk(
      {Key key, this.minuman, this.deskripsi, this.harga, this.gambar, this.rate})
      : super(key: key);
  final String minuman;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int rate;
  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < widget.rate; i++) {
      childrenstar.add(new Icon(
        Icons.star,
        size: 15,
        color: Colors.orange,
      ));
    }
    return Scaffold(
        appBar: new AppBar(title: new Text("${widget.minuman}")),
        body: new Container(
          width: double.infinity,
          child: new ListView(
            children: <Widget>[
              Column(
                children: <Widget>[new Image.asset("gambar/" + widget.gambar)],
              ),
              Container(
                decoration: new BoxDecoration(color: Colors.lightBlue),
                padding: EdgeInsets.all(10),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: childrenstar,
                    ),
                    new Container(
                      child: new Text("Rp " + this.widget.harga.toString(),
                          style: new TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.lightGreenAccent,
                width: double.infinity,
                height: double.maxFinite,
                child: new Text(widget.deskripsi),
              )
            ],
          ),
        ));
  }
}
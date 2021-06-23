import 'package:flutter/material.dart';
import 'Detail Makanan.dart';

class DaftarMakanan extends StatefulWidget {
  @override
  _DaftarMakanan createState() => _DaftarMakanan();
}

class _DaftarMakanan extends State<DaftarMakanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//appbar
appBar:  AppBar(title:  Text("Menu Makanan")),
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
                          makanan: "Lawar",
                          deskripsi: "Makanan Khas Bali",
                          harga: 15000,
                          gambar: "lawar.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              makanan: "Lawar",
              deskripsi: "Makanan Khas Bali",
              harga: 15000,
              gambar: "lawar.png",
              rate: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          makanan: "Sate Languan",
                          deskripsi: "Makanan Khas Bali",
                          harga: 20000,
                          gambar: "sate.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              makanan: "Sate Languan",
              deskripsi: "Makanan Khas Bali",
              harga: 20000,
              gambar: "sate.png",
              rate: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          makanan: "Ayam Betutu",
                          deskripsi: "Makanan Khas Bali",
                          harga: 50000,
                          gambar: "betutu.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              makanan: "Ayam Betutu",
              deskripsi: "Makanan Khas Bali",
              harga: 50000,
              gambar: "betutu.png",
              rate: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          makanan: "Tum Be Celeng",
                          deskripsi:"Makanan Khas Bali",
                          harga: 5000,
                          gambar: "tum.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              makanan: "Tum Be Celeng",
              deskripsi: "Makanan Khas Bali",
              harga: 5000,
              gambar: "tum.png",
              rate: 5,
            ),
          ),
                    new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          makanan: "Nasi Be Genyol",
                          deskripsi:"Makanan Khas Bali",
                          harga: 25000,
                          gambar: "genyol.png",
                          rate: 5,
                        )),
              );
            },
            child: ProductBox(
              makanan: "Nasi Be Genyol",
              deskripsi: "Makanan Khas Bali",
              harga: 25000,
              gambar: "genyol.png",
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
      {Key key, this.makanan, this.deskripsi, this.harga, this.gambar, this.rate})
      : super(key: key);
  final String makanan;
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
                    this.makanan, 
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

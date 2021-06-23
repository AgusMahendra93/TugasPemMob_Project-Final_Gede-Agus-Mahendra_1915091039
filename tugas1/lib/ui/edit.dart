import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:tugas1/ui/home.dart';

class EditData extends StatelessWidget {
  final Map input;
  EditData({@required this.input});
  final _formkey = GlobalKey<FormState>();
  TextEditingController namaController = TextEditingController();
  TextEditingController keteranganController = TextEditingController();
  TextEditingController hargaController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();

  //membuat method POST untuk Upload data ke API
  Future updatedata() async {
    // karena ingin mengedit data maka menggunakan method PUT maka perlu tambahan body karena di body API kita akan menambahkan data object yang sudah ditulis harus sama dengan yang ada di API
    // dan tambahan pada url yaitu upload ["id"] fungsinya untuk mengetahui id data ke berapa yang diedit pada API
    final response = await http
        .put(Uri.parse("http://192.168.9.130:80/api/inputs/" + input['id'].toString()), body: {
      "nama": namaController.text,
      "pesanan": keteranganController.text,
      "harga": hargaController.text,
      "jumlah": jumlahController.text,
    });
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Form Edit"),
        leading: Icon(Icons.arrow_back),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 10, right: 10),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: TextField(
                  controller: namaController..text=input['nama'],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nama pembeli",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: TextField(
                  controller: keteranganController..text=input['pesanan'],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Pesanan",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: TextField(
                  controller: hargaController..text=input['harga'],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "harga",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                ),
              ),
                Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: TextField(
                  controller: jumlahController..text=input['jumlah'],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "jumlah",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    // tombol simpan
                    Expanded(
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text(
                          'Pesan',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          if (_formkey.currentState.validate()) {
                            updatedata().then((value) {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Home()));
                            });
                          }
                        },
                      ),
                    ),
                    Container(
                      width: 5.0,
                    ),
                    // tombol batal
                    Expanded(
                      child: RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Text(
                          'Batal',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
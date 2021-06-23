import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tugas1/ui/edit.dart';

import 'dart:convert';

import 'package:tugas1/ui/inputpenjualan.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String url = "http://192.168.9.130:80/api/inputs";
  Future getData() async {
    var response = await http.get(Uri.parse(url));
    print(jsonDecode(response.body));
    return jsonDecode(response.body);
  }

  Future deleteData(String dataId) async {
    final String url = "http://192.168.9.130:80/api/inputs/" + dataId;
    var response = await http.delete(Uri.parse(url));

    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List Pesanan"),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FormInput()));
          }),
      body: FutureBuilder(
        future: getData(),
        builder: (context, data) {
          if (data.hasData) {
            return ListView.builder(
              itemCount: data.data['data'].length,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Nama Pemesan : " + data.data['data'][index]['nama']),
                            Text("Pesanan : " + data.data['data'][index]['pesanan']),
                            Text("Harga        : " + data.data['data'][index]['harga']),
                             Text("Jumlah       : " + data.data['data'][index]['jumlah']),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                 Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EditData(input: data.data['data'][index])));
                                }),
                            IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: () {
                                  deleteData(data.data['data'][index]['id'].toString())
                                      .then((value) {
                                    setState(() {});
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
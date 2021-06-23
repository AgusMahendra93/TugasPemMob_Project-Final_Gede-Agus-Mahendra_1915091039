

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas1/auth.dart';
import 'package:tugas1/auth1.dart';
import 'package:tugas1/pemesanan/pembelian_screen.dart';
import './about.dart';
import 'DaftarMakanan.dart';
import 'DaftarMinuman.dart';
import 'package:tugas1/ui/home.dart';

void main() {
  runApp(MyApp());
}

class  MyApp  extends  StatelessWidget  {

@override
//Isi  dari  widget
Widget  build(BuildContext  context)  {
return  ChangeNotifierProvider(
create: (ctx)=>Auth(),builder: (context,child)=>
      MaterialApp(
  
  title:  'First  App', home: LoginPage(),
  
  ),
);
}
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Bali Resto",
                ),
              ]),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.email_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: null),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text(
                  "Gede Agus Mahendra",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                accountEmail: new Text("agusmahendra978@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      "https://static.wikia.nocookie.net/onepunchman/images/8/81/Saitama_Anime_Profile.png/revision/latest?cb=20161002154538"),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("gambar/bg.jpg"), fit: BoxFit.cover)),
              ),
              new ListTile(
                leading: new Icon(Icons.person),
                title: new Text("Account"),
                onTap: null,
              ),
              new ListTile(
                leading: new Icon(Icons.settings),
                title: new Text("Setting"),
                onTap: null,
              ),
              new ListTile(
                leading: new Icon(Icons.info_outline),
                title: new Text("About"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return About();
                  }));
                },
              ),
              new ListTile(
                  leading: new Icon(Icons.help_outline),
                  title: new Text("Help"),
                  onTap: null),
              new ListTile(
                leading: new Icon(Icons.logout),
                title: new Text("Log Out"),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));}
              ),
            ],
          ),
        ),
        body: Container( color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned.fill(child: Opacity(opacity: 0.3,child: Image.asset("gambar/bcr.jpg",))),
                      GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(40),
              crossAxisSpacing: 25,
              mainAxisSpacing: 40,
              children: <Widget>[
                new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext content) =>
                                DaftarMakanan()));
                      },
                      child: Button(
                        image: "gambar/Makanan.png",
                        nama: "Makanan",
                      ),
                ),
                new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext content) =>
                                DaftarMinuman()));
                      },
                      child: Button(
                        image: "gambar/Minuman.png",
                        nama: "Minuman",
                      ),
                ),

                new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext content) => About()));
                      },
                      child: Button(
                        image: "gambar/About.png",
                        nama: "About",
                      ),
                ),
                new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext content) => PembelianScreen()));
                      },
                      child: Button(
                        image: "gambar/cart.png",
                        nama: "Tambah Menu",
                      ),
                ),
                new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext content) => Home()));
                      },
                      child: Button(
                        image: "gambar/cart.png",
                        nama: "Pesan",
                      ),
                )
              ]),
                    ],
                  ),
        ));
  }
}

class Button extends StatelessWidget {
  Button({Key key, this.image, this.nama}) : super(key: key);
  final String image;
  final String nama;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
          child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              this.image,
              width: 75,
            ),
            Text(
              this.nama,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

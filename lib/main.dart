// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //fungsi untuk manggil gambar atas
  Container ListGambar(String imgUrl){
    return Container(
      width: 80.0,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imgUrl),
        ),
      ),
    );
  }

// gambar bawah
  Row Gambar(String UrlGambar, String Tulisan){
    return Row(
      children: <Widget>[ 
        Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.red,
        width: 90.0,
        height: 120.0,
        child: Image(
          width: 50.0,
          height: 50.0,
          image: NetworkImage(UrlGambar),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        color: Colors.red,
        alignment: Alignment.center,
        height: 120.0,
        width: 300.0,
        
        child: Text(Tulisan),
      )
    ],
    );
  }
  @override
  Widget build(BuildContext context) {
    const title = 'MyApp';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
        title: const Text(title),
        backgroundColor: Colors.red,

        ),

        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text("BERITA TERBARU"),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text("PERTANDINGAN HARI INI"),
                ),
              ],
            ),
          Container(
            height: 200.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ListGambar("https://s.hs-data.com/bilder/spieler/gross/284095.jpg"),
                ListGambar("https://s.hs-data.com/bilder/spieler/gross/26622.jpg?fallback=png"),
                ListGambar("https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg"),
                ListGambar("https://static.wikia.nocookie.net/liverpoolfc/images/f/f6/MSalah2022.jpeg/revision/latest?cb=20220921065825"),
                ListGambar("https://cdns.klimg.com/merdeka.com/i/w/news/2022/05/19/1436653/content_images/670x335/20220519155810-1-mesut-ozil-005-khoirur-rohman.jpg"),
              ],
            ),
          ),
          Container(
          color: Colors.white,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "Lima Pesepak Bola yang Terkenal Dermawan",
              style: TextStyle(fontSize: 15),
            ),
            width: 400.0,
            height: 50.0,
          ),
          Container(
            height: 700.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,
              children: <Widget>[
              Gambar("https://s.hs-data.com/bilder/spieler/gross/284095.jpg","Kylian Mbappé"),
              Gambar("https://s.hs-data.com/bilder/spieler/gross/26622.jpg?fallback=png","Lionel Messi"),
              Gambar("https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg","Cristiano Ronaldo"),
              Gambar("https://static.wikia.nocookie.net/liverpoolfc/images/f/f6/MSalah2022.jpeg/revision/latest?cb=20220921065825","Mohamed Salah"),
              Gambar("https://cdns.klimg.com/merdeka.com/i/w/news/2022/05/19/1436653/content_images/670x335/20220519155810-1-mesut-ozil-005-khoirur-rohman.jpg","Mesut Özil"),
             ],
            ),
          ),
          ],
        ),

        
      ),
    );
  }
}
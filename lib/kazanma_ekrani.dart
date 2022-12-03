import 'package:flutter/material.dart';

class kazanma_ekrani extends StatefulWidget {
  bool sonuc;

  kazanma_ekrani(this.sonuc);

  @override
  State<kazanma_ekrani> createState() => _kazanma_ekraniState();
}

class _kazanma_ekraniState extends State<kazanma_ekrani> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            widget.sonuc? Image.asset("resimler/happy.png"):Image.asset("resimler/sad.png"),
            Text(widget.sonuc? "Tebrikler":"Tekrar Deneyiniz",style: TextStyle(
              fontSize: 36,
              color: Colors.black54,
            ),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Tekrar Deneyiniz",style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sayi_tahmin_uygulamasi/oyun_ekrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

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
            Text("Tahmin Oyunu",style: TextStyle(
                fontSize: 36,
                color: Colors.black54
            ),),
            SizedBox(
              height: 250,
              width: 250,
                child: Image.asset("resimler/oyun.jpg")),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> oyun_ekrani()));
                },
                child: Text("Oyun Başla",style: TextStyle(
                    color: Colors.black,
                  fontSize: 20
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

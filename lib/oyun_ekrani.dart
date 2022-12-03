import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin_uygulamasi/kazanma_ekrani.dart';

class oyun_ekrani extends StatefulWidget {
  const oyun_ekrani({Key? key}) : super(key: key);

  @override
  State<oyun_ekrani> createState() => _oyun_ekraniState();
}

class _oyun_ekraniState extends State<oyun_ekrani> {
  var tfcontroller=TextEditingController();
  int kalan_hak=5;
  String yardim="";
  int rastgele_sayi=0;

  @override
  void initState() {
    super.initState();
    rastgele_sayi=Random().nextInt(11);
    print("sayı = $rastgele_sayi");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyun Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Kalan Hak : $kalan_hak",style:TextStyle(
              color: Colors.pink,
              fontSize: 30
            ),),
            Text("Yardım : $yardim",style: TextStyle(
              color: Colors.black54,
              fontSize: 24
            ),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                controller:tfcontroller ,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white,
                ),

              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
              onPressed: (){
               setState(() {
                 kalan_hak--;
               });
               int tahmin=int.parse(tfcontroller.text);
              if(rastgele_sayi==tahmin){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>kazanma_ekrani(true)));
                return;
              }
              if(tahmin>rastgele_sayi){
                setState(() {
                  yardim="Tahmini Azalt";
                });
              }
              if(tahmin<rastgele_sayi){
                setState(() {
                  yardim="Tahmini Arttır";
                });
              }
              if(kalan_hak==0){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>kazanma_ekrani(false)));
              }
              tfcontroller.text="";
              },
              child: Text("Tahmin Et",style: TextStyle(
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

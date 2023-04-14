import 'package:flutter/material.dart';

import '../Model/Ozellikler.dart';
import '../items/SepetListesi.dart';
import 'Sepet.dart';


class DetaySayfa extends StatefulWidget {
  late Ozellikler ozellik;

  DetaySayfa({required this.ozellik});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.ozellik.urun_adi),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.ozellik.urun_resim_adi}"),
            Text("${widget.ozellik.urun_fiyat} \u{20BA}", style: TextStyle(fontSize: 35, color:  Colors.blue),),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                ),
                child: Text("SEPETE EKLE", style: TextStyle(color: Colors.white),),
                onPressed: (){
                  SepetListesi.sepet.add(widget.ozellik);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Sepet.empty() ));
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
import 'package:flutter/material.dart';

import '../items/SepetListesi.dart';

class Sepet extends StatefulWidget {

  late int urun_id;
  late String urun_adi;
  late String urun_resim_adi;
  late double urun_fiyat;

  Sepet({
    required this.urun_id,
    required this.urun_adi,
    required this.urun_resim_adi,
    required this.urun_fiyat,
  });

  Sepet.empty();


  @override
  State<Sepet> createState() => _SepetState();
}

class _SepetState extends State<Sepet> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Sepet"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              setState(() {
                SepetListesi.sepet.clear();
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.work_rounded),
            onPressed: () {
              setState(() {
                SepetListesi.sepet.clear();
              });
            },
          ),

        ],
      ),
      body:
      ListView.builder(
        itemCount: SepetListesi.sepet.length,
        itemBuilder: (context, indeks) {
          return Card(
            child: Row(
              children: [
                SizedBox(width: 150,
                    height: 150,
                    child: Image.asset("resimler/${SepetListesi.sepet[indeks].urun_resim_adi}")),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(SepetListesi.sepet[indeks].urun_adi, style: TextStyle(fontSize: 25),),
                    SizedBox(height: 50,),
                    Text("${SepetListesi.sepet[indeks].urun_fiyat} \u{20BA}",
                      style: TextStyle(fontSize: 20, color: Colors.blue),),
                  ],
                ),
                Spacer(),
              ],
            ),
          );


        },
      ),



    );
  }
}
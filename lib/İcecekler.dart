import 'package:flutter/material.dart';
import 'package:yoldaa/Ozellikler.dart';

import 'DetaySayfa.dart';

class Icecekler extends StatefulWidget {

  @override
  State<Icecekler> createState() => _IceceklerState();
}

class _IceceklerState extends State<Icecekler> {

  Future<List<Ozellikler>> ozellikleriGetir() async{

    var ozellikListesi = <Ozellikler>[];

    var O1 = Ozellikler(1, "Ayran", "ayran.png", 3.0);
    var O2 = Ozellikler(2, "Fanta", "fanta.png", 5.0);
    var O3 = Ozellikler(3, "Su", "su.jpeg", 2.0);
    var O4 = Ozellikler(4, "Coca-cola", "coca-cola.jpeg", 9.0);
    var O5 = Ozellikler(5, "Pepsi", "pepsi.jpeg", 9.0);
    var O6 = Ozellikler(6, "Sprite", "sprite.jpeg", 9.0);
    var O7 = Ozellikler(7, "Fruko", "fruko.jpeg", 8.0);

    ozellikListesi.add(O1);
    ozellikListesi.add(O2);
    ozellikListesi.add(O3);
    ozellikListesi.add(O4);
    ozellikListesi.add(O5);
    ozellikListesi.add(O6);
    ozellikListesi.add(O7);

    return ozellikListesi;


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("İçecekler"),
      ),
      body:FutureBuilder<List<Ozellikler>>(
          future: ozellikleriGetir(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var ozellikListesi = snapshot.data;

              return ListView.builder(
                itemCount: ozellikListesi!.length,
                itemBuilder: (context,indexs){
                  var icecek = ozellikListesi[indexs];

                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(ozellik: icecek,) ));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(width: 150,height: 150,child: Image.asset("resimler/${icecek.urun_resim_adi}")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(icecek.urun_adi, style: TextStyle(fontSize: 25),),
                              SizedBox(height: 50,),
                              Text("${icecek.urun_fiyat} \u{20BA}", style: TextStyle(fontSize: 20, color:  Colors.blue),),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_right),
                        ],
                      ),
                    ),
                  );


                },
              );
            }else{
              return Center();
            }
          }
      ),


    );
  }
}

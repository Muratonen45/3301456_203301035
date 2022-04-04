import 'package:flutter/material.dart';
import 'package:yoldaa/Ozellikler.dart';

import 'DetaySayfa.dart';

class Temizlik extends StatefulWidget {

  @override
  State<Temizlik> createState() => _TemizlikState();
}

class _TemizlikState extends State<Temizlik> {

  Future<List<Ozellikler>> ozellikleriGetir() async{

    var ozellikListesi = <Ozellikler>[];

    var T1 = Ozellikler(1, "Detarjan", "camasır_detarjani.jpg", 39.0);
    var T2 = Ozellikler(2, "Sabun", "sabun.jpeg", 32.0);
    var T3 = Ozellikler(3, "Peros", "peros.jpeg", 35.0);
    var T4 = Ozellikler(4, "Omo", "omo.jpeg", 45.0,);
    var T5 = Ozellikler(5, "Perwol", "perwol.jpeg", 38.0);
    var T6 = Ozellikler(6, "Domestos", "domestos.jpeg", 50.0);
    var T7 = Ozellikler(7, "Kağıt havlu", "kagıthavlu.jpeg", 55.0);




    ozellikListesi.add(T1);
    ozellikListesi.add(T2);
    ozellikListesi.add(T3);
    ozellikListesi.add(T4);
    ozellikListesi.add(T5);
    ozellikListesi.add(T6);
    ozellikListesi.add(T7);



    return ozellikListesi;


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Temizlik Ürünleri"),
      ),
      body:FutureBuilder<List<Ozellikler>>(
          future: ozellikleriGetir(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var ozellikListesi = snapshot.data;

              return ListView.builder(
                itemCount: ozellikListesi!.length,
                itemBuilder: (context,indexs){
                  var Temiz = ozellikListesi[indexs];

                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(ozellik: Temiz,) ));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(width: 150,height: 150,child: Image.asset("resimler/${Temiz.urun_resim_adi}")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Temiz.urun_adi, style: TextStyle(fontSize: 25),),
                              SizedBox(height: 50,),
                              Text("${Temiz.urun_fiyat} \u{20BA}", style: TextStyle(fontSize: 20, color:  Colors.blue),),
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

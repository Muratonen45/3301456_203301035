import 'package:flutter/material.dart';
import 'package:yoldaa/Ozellikler.dart';

import 'DetaySayfa.dart';

class Sekerleme_Kuruyemis extends StatefulWidget {

  @override
  State<Sekerleme_Kuruyemis> createState() => _Sekerleme_KuruyemisState();
}

class _Sekerleme_KuruyemisState extends State<Sekerleme_Kuruyemis> {

  Future<List<Ozellikler>> ozellikleriGetir() async{

    var ozellikListesi = <Ozellikler>[];

    var S1 = Ozellikler(1, "Hurma", "hurma.jpg", 200.0);
    var S2 = Ozellikler(2, "Ay çekirdeği", "aycekirdegi.jpeg", 20.0);
    var S3 = Ozellikler(3, "Kuru kayısı", "kurukayısı.jpeg", 20.0);
    var S4 = Ozellikler(4, "Çikolata", "cikolata.jpeg", 10.0);
    var S5 = Ozellikler(5, "Dido", "dido.jpeg", 5.0);
    var S6 = Ozellikler(6, "Dondurma", "dondurma.jpeg", 30.0);
    var S7 = Ozellikler(7, "Lays", "lays.jpeg", 8.0);
    var S8 = Ozellikler(8, "Fındık", "fındık.jpeg", 20.0);





    ozellikListesi.add(S1);
    ozellikListesi.add(S2);
    ozellikListesi.add(S3);
    ozellikListesi.add(S4);
    ozellikListesi.add(S5);
    ozellikListesi.add(S6);
    ozellikListesi.add(S7);
    ozellikListesi.add(S8);


    return ozellikListesi;


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Şekerleme ve Kuruyemiş"),
      ),
      body:FutureBuilder<List<Ozellikler>>(
          future: ozellikleriGetir(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var ozellikListesi = snapshot.data;

              return ListView.builder(
                itemCount: ozellikListesi!.length,
                itemBuilder: (context,indexs){
                  var Seker = ozellikListesi[indexs];

                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(ozellik: Seker,) ));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(width: 150,height: 150,child: Image.asset("resimler/${Seker.urun_resim_adi}")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Seker.urun_adi, style: TextStyle(fontSize: 25),),
                              SizedBox(height: 50,),
                              Text("${Seker.urun_fiyat} \u{20BA}", style: TextStyle(fontSize: 20, color:  Colors.blue),),
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

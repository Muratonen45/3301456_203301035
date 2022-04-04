import 'package:flutter/material.dart';
import 'package:yoldaa/Ozellikler.dart';

import 'DetaySayfa.dart';

class Sut_Kahvaltilik extends StatefulWidget {

  @override
  State<Sut_Kahvaltilik> createState() => _Sut_KahvaltilikState();
}

class _Sut_KahvaltilikState extends State<Sut_Kahvaltilik> {

  Future<List<Ozellikler>> ozellikleriGetir() async{

    var ozellikListesi = <Ozellikler>[];

    var K1 = Ozellikler(1, "Ezine peyniri", "ezine_peniri.jpg", 35.0);
    var K2 = Ozellikler(2, "Tereyağı", "tereyagı.jpeg", 40.0);
    var K3 = Ozellikler(3, "Süt", "sut.jpeg", 5.0);
    var K4 = Ozellikler(4, "Sucuk", "sucuk.jpeg", 35.0);
    var K5 = Ozellikler(5, "Zeytin", "zeytin.jpeg", 20.0);
    var K6 = Ozellikler(6, "Yumurta", "yumurta.jpeg", 36.0);
    var K7 = Ozellikler(7, "Yoğurt", "yogurt.jpeg", 15.0);




    ozellikListesi.add(K1);
    ozellikListesi.add(K2);
    ozellikListesi.add(K3);
    ozellikListesi.add(K4);
    ozellikListesi.add(K5);
    ozellikListesi.add(K6);
    ozellikListesi.add(K7);


    return ozellikListesi;


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Süt ve Kahvaltılıklar"),
      ),
      body:FutureBuilder<List<Ozellikler>>(
          future: ozellikleriGetir(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var ozellikListesi = snapshot.data;

              return ListView.builder(
                itemCount: ozellikListesi!.length,
                itemBuilder: (context,indexs){
                  var Sut = ozellikListesi[indexs];

                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(ozellik: Sut,) ));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(width: 150,height: 150,child: Image.asset("resimler/${Sut.urun_resim_adi}")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Sut.urun_adi, style: TextStyle(fontSize: 25),),
                              SizedBox(height: 50,),
                              Text("${Sut.urun_fiyat} \u{20BA}", style: TextStyle(fontSize: 20, color:  Colors.blue),),
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

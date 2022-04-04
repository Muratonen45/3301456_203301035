import 'package:flutter/material.dart';
import 'package:yoldaa/Ozellikler.dart';

import 'DetaySayfa.dart';

class Gida extends StatefulWidget {

  @override
  State<Gida> createState() => _GidaState();
}

class _GidaState extends State<Gida> {

  Future<List<Ozellikler>> ozellikleriGetir() async{

    var ozellikListesi = <Ozellikler>[];

    var G1 = Ozellikler(1, "Nutella", "nutella.jpeg", 30.0);
    var G2 = Ozellikler(2, "Pirinç", "pirinc.jpeg", 20.0);
    var G3 = Ozellikler(3, "Nohut", "nohut.jpeg", 9.0);
    var G4 = Ozellikler(4, "Mercimek", "mercimek.jpeg", 10.0);
    var G5 = Ozellikler(5, "Salça", "salca.jpeg", 23.0);
    var G6 = Ozellikler(6, "Ketçap", "ketcap.jpeg", 10.0);
    var G7 = Ozellikler(7, "Bulgur", "bulgur.jpeg", 10.0);




    ozellikListesi.add(G1);
    ozellikListesi.add(G2);
    ozellikListesi.add(G3);
    ozellikListesi.add(G4);
    ozellikListesi.add(G5);
    ozellikListesi.add(G6);
    ozellikListesi.add(G7);



    return ozellikListesi;


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Gıdalar"),
      ),
      body:FutureBuilder<List<Ozellikler>>(
          future: ozellikleriGetir(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var ozellikListesi = snapshot.data;

              return ListView.builder(
                itemCount: ozellikListesi!.length,
                itemBuilder: (context,indexs){
                  var Gida = ozellikListesi[indexs];

                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(ozellik: Gida,) ));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(width: 150,height: 150,child: Image.asset("resimler/${Gida.urun_resim_adi}")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Gida.urun_adi, style: TextStyle(fontSize: 25),),
                              SizedBox(height: 50,),
                              Text("${Gida.urun_fiyat} \u{20BA}", style: TextStyle(fontSize: 20, color:  Colors.blue),),
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

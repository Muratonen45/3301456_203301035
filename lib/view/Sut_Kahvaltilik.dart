import 'package:e_market/items/AddSutKahvaltilik.dart';
import 'package:flutter/material.dart';
import '../Model/Ozellikler.dart';
import 'DetaySayfa.dart';

class Sut_Kahvaltilik extends StatefulWidget {

  @override
  State<Sut_Kahvaltilik> createState() => _Sut_KahvaltilikState();
}

class _Sut_KahvaltilikState extends State<Sut_Kahvaltilik> {

  late AddSutKahvaltilik urun;
  late Future<List<Ozellikler>> urunn;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    urun  = AddSutKahvaltilik();
    urunn = (urun.addSutKahvaltilik()) as Future<List<Ozellikler>>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Süt ve Kahvaltılıklar"),
      ),
      body:FutureBuilder<List<Ozellikler>>(
          future: urunn,
          builder: (context,snapshot){
            if(snapshot.hasData){
              var urunler = snapshot.data;

              return ListView.builder(
                itemCount: urunler!.length,
                itemBuilder: (context,indexs){
                  var urun = urunler[indexs];

                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(ozellik: urun,) ));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(width: 150,height: 150,child: Image.asset("resimler/${urun.urun_resim_adi}")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(urun.urun_adi, style: TextStyle(fontSize: 25),),
                              SizedBox(height: 50,),
                              Text("${urun.urun_fiyat} \u{20BA}", style: TextStyle(fontSize: 20, color:  Colors.blue),),
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
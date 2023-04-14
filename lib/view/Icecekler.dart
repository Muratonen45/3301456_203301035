import 'package:flutter/material.dart';
import '../Model/Ozellikler.dart';
import '../items/AddIcecekler.dart';
import 'DetaySayfa.dart';

class Icecekler extends StatefulWidget {

  @override
  State<Icecekler> createState() => _IceceklerState();
}

class _IceceklerState extends State<Icecekler> {

  late AddIcecekler urun;
  late Future<List<Ozellikler>> urunn;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    urun  = AddIcecekler();
    urunn = (urun.addIcecekler()) as Future<List<Ozellikler>>;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("İçecekler"),
      ),
      body:FutureBuilder<List<Ozellikler>>(
          future:  urunn,
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
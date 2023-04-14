import 'package:flutter/material.dart';
import 'Gida.dart';
import 'Icecekler.dart';
import 'Sekerleme_Kuruyemis.dart';
import 'Sut_Kahvaltilik.dart';
import 'Temizlik.dart';




class Kategoriler extends StatefulWidget {


  @override
  State<Kategoriler> createState() => _KategorilerState();
}

class _KategorilerState extends State<Kategoriler> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Kategoriler"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Stack(
                    children:[
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Gida()));
                          },
                          child: Image.asset("resimler/gida.jpg")),
                      Positioned(
                          left: 160,
                          top: 80,
                          child: Text("Gıda", style:  TextStyle(fontSize: 30,color: Colors.white),)
                      )

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Stack(
                    children:[
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sut_Kahvaltilik()));
                          },
                          child: Image.asset("resimler/sut_kahvaltilik.jpg")),
                      Positioned(
                          left: 100,
                          top: 80,
                          child: Text("Süt-Kahvaltılık", style: TextStyle(fontSize: 30,color: Colors.white),)
                      )

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Stack(
                    children:[
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sekerleme_Kuruyemis()));
                          },
                          child: Image.asset("resimler/sekerleme_kuruyemis.jpg")),
                      Positioned(
                          left: 70,
                          top: 80,
                          child: Text("Şekerleme-Kuruyemiş", style: TextStyle(fontSize: 30,color: Colors.white),)
                      )

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Stack(
                    children:[
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Icecekler()));
                          },

                          child: Image.asset("resimler/icecekler.jpg")
                      ),
                      Positioned(
                          left: 140,
                          top: 80,
                          child: Text("İçecekler", style: TextStyle(fontSize: 30,color: Colors.white),)
                      )

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Stack(
                    children:[
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Temizlik()));
                          },
                          child: Image.asset("resimler/temizlik.jpg")),
                      Positioned(
                          left: 150,
                          top: 80,
                          child: Text("Temizlik", style: TextStyle(fontSize: 30,color: Colors.white),)
                      )

                    ],
                  ),
                ),
              ),

            ],

          ),
        ),
      ),




    );
  }
}
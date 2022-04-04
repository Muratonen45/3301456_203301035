import 'package:flutter/material.dart';
import 'package:yoldaa/Sepet.dart';

import 'Kategoriler.dart';

class BottomBarr extends StatefulWidget {
  const BottomBarr({Key? key}) : super(key: key);

  @override
  State<BottomBarr> createState() => _BottomBarrState();
}

class _BottomBarrState extends State<BottomBarr> {
  var sayfaListesi = [Sepet.empty(),Kategoriler()];


  var secilenIndexs = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaListesi[secilenIndexs],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: "",
          ),
        ],
        currentIndex: secilenIndexs,
        onTap: (indeks){
          setState(() {
            secilenIndexs=indeks;
          });
        },
      ),


    );
  }
}

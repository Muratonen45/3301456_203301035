import 'package:flutter/material.dart';

import 'view/Kategoriler.dart';
import 'view/KayitOlEkrani.dart';
import 'Model/Kullanici.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String kullanici_adi ="";
  String sifre ="";
  final Kullanici kullanici = Kullanici.empty();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    late final double ekranYuksekligi = ekranBilgisi.size.height;
    late final double  ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Form(
          key: formkey,
          child: Center(
            child: SingleChildScrollView( //pixel uyarısı giderdik
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: ekranYuksekligi/20),
                    child: SizedBox(
                        width: ekranGenisligi/4,
                        child: Image.asset("resimler/logo.png")
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(ekranYuksekligi/30),
                    child: TextFormField(
                      onSaved: (String? value){
                        setState(() {
                          kullanici_adi = value!;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Kullanıcı adı",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(ekranYuksekligi/30),
                    child: TextFormField(
                      onSaved: (String? value){
                        setState(() {
                          sifre = value!;
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Şifre",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(ekranYuksekligi/30),
                    child: SizedBox(
                      width: ekranGenisligi/2,
                      height: ekranYuksekligi/12,
                      child: ElevatedButton(
                          child: Text("GİRİŞ YAP",style: TextStyle(fontSize: ekranGenisligi/25, color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink,
                          ),
                          onPressed: (){
                            kontrol();

                          }
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      print("Yardım alındı");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => KayitOlEkrani()));
                    },
                    child: Text(
                      "Kayıt Ol ?",
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: ekranGenisligi/30,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        )

    );
  }
  void kontrol(){
    if(formkey.currentState!.validate()){
      formkey.currentState!.save();
      setState(() {
        for(int i=0; i<KayitOlEkrani.kullanici.length; i++){
          if(kullanici_adi==KayitOlEkrani.kullanici[i].kullanici_adi && sifre==KayitOlEkrani.kullanici[i].sifre){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Kategoriler()));
          }else{
            print("hatalı giriş");
          }
        }
      });
    }
  }
}


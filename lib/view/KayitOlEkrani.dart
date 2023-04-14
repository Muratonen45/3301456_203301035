import 'package:flutter/material.dart';
import '../Model/Kullanici.dart';

class KayitOlEkrani extends StatefulWidget {
  const KayitOlEkrani({Key? key}) : super(key: key);
  static List<Kullanici> kullanici = <Kullanici>[];
  @override
  State<KayitOlEkrani> createState() => _KayitOlEkraniState();
}

class _KayitOlEkraniState extends State<KayitOlEkrani> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    late final double ekranYuksekligi = ekranBilgisi.size.height;
    late final double ekranGenisligi = ekranBilgisi.size.width;

    late String ad;
    late String soyad;
    late String kullanici_adi;
    late String eposta;
    late String sifre;

    var formkey = GlobalKey<FormState>();
    var tfad = TextEditingController();
    var tfsoyad = TextEditingController();
    var tfkullanici_adi = TextEditingController();
    var tfeposta = TextEditingController();
    var tfsifre = TextEditingController();


    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body:
      Form(
        key: formkey,

        child: Center(
          child: SingleChildScrollView( //pixel uyarısı giderdik
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: EdgeInsets.only(bottom: ekranYuksekligi / 30),
                  child: SizedBox(
                      width: ekranGenisligi / 4,
                      child: Image.asset("resimler/logo.png")
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ekranYuksekligi / 40),
                  child: TextFormField(
                    onSaved: (String? value) {
                      ad = value!;
                    },
                    decoration: InputDecoration(
                      hintText: "Ad",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ekranYuksekligi / 40),
                  child: TextFormField(
                    onSaved: (String? value) {
                      soyad = value!;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Soyad",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ekranYuksekligi / 40),
                  child: TextFormField(
                    onSaved: (String? value) {
                      kullanici_adi = value!;
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
                  padding: EdgeInsets.all(ekranYuksekligi / 40),
                  child: TextFormField(
                    onSaved: (String? value) {
                      eposta = value!;
                    },
                    decoration: InputDecoration(
                      hintText: "Eposta",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ekranYuksekligi / 40),
                  child: TextFormField(
                    onSaved: (String? value) {
                      sifre = value!;
                    },
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
                  padding: EdgeInsets.all(ekranYuksekligi / 40),
                  child: SizedBox(
                    width: ekranGenisligi / 2,
                    height: ekranYuksekligi / 12,
                    child: ElevatedButton(
                        child: Text(
                          "KAYDET", style: TextStyle(fontSize: ekranGenisligi /
                            25, color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            formkey.currentState!.save();
                            Kullanici kullanici = Kullanici(ad: ad,
                                soyad: soyad,
                                kullanici_adi: kullanici_adi,
                                eposta: eposta,
                                sifre: sifre);
                            KayitOlEkrani.kullanici.add(kullanici);
                            Navigator.pop(context);
                          }
                        }
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),


    );
  }
}

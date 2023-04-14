import 'package:e_market/Model/Ozellikler.dart';

class AddSutKahvaltilik {
  Future<List<Ozellikler>> addSutKahvaltilik() async {
    var urun = <Ozellikler>[];

    var u1 = Ozellikler(1, "Ezine peyniri", "ezine_peniri.jpg", 35.0);
    var u2 = Ozellikler(2, "Tereyağı", "tereyagı.jpeg", 40.0);
    var u3 = Ozellikler(3, "Süt", "sut.jpeg", 5.0);
    var u4 = Ozellikler(4, "Sucuk", "sucuk.jpeg", 35.0);
    var u5 = Ozellikler(5, "Zeytin", "zeytin.jpeg", 20.0);
    var u6 = Ozellikler(6, "Yumurta", "yumurta.jpeg", 36.0);
    var u7 = Ozellikler(7, "Yoğurt", "yogurt.jpeg", 15.0);





    urun.add(u1);
    urun.add(u2);
    urun.add(u3);
    urun.add(u4);
    urun.add(u5);
    urun.add(u6);
    urun.add(u7);


    return urun;
  }
}
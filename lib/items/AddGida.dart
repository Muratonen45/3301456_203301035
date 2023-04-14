import 'package:e_market/Model/Ozellikler.dart';

class AddGida {
  Future<List<Ozellikler>> addGida() async {
    var urun = <Ozellikler>[];

    var u1 = Ozellikler(1, "Nutella", "nutella.jpeg", 30.0);
    var u2 = Ozellikler(2, "Pirinç", "pirinc.jpeg", 20.0);
    var u3 = Ozellikler(3, "Nohut", "nohut.jpeg", 9.0);
    var u4 = Ozellikler(4, "Mercimek", "mercimek.jpeg", 10.0);
    var u5 = Ozellikler(5, "Salça", "salca.jpeg", 23.0);
    var u6 = Ozellikler(6, "Ketçap", "ketcap.jpeg", 10.0);
    var u7 = Ozellikler(7, "Bulgur", "bulgur.jpeg", 10.0);



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
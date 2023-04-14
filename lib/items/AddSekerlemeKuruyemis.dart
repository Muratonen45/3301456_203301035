import 'package:e_market/Model/Ozellikler.dart';

class AddSekerlemeKuruyemis {
  Future<List<Ozellikler>> addSekerlemeKuruyemis() async {
    var urun = <Ozellikler>[];

    var u1 = Ozellikler(1, "Hurma", "hurma.jpg", 200.0);
    var u2 = Ozellikler(2, "Ay çekirdeği", "aycekirdegi.jpeg", 20.0);
    var u3 = Ozellikler(3, "Kuru kayısı", "kurukayısı.jpeg", 20.0);
    var u4 = Ozellikler(4, "Çikolata", "cikolata.jpeg", 10.0);
    var u5 = Ozellikler(5, "Dido", "dido.jpeg", 5.0);
    var u6 = Ozellikler(6, "Dondurma", "dondurma.jpeg", 30.0);
    var u7 = Ozellikler(7, "Lays", "lays.jpeg", 8.0);
    var u8 = Ozellikler(8, "Fındık", "fındık.jpeg", 20.0);



    urun.add(u1);
    urun.add(u2);
    urun.add(u3);
    urun.add(u4);
    urun.add(u5);
    urun.add(u6);
    urun.add(u7);
    urun.add(u8);

    return urun;
  }
}
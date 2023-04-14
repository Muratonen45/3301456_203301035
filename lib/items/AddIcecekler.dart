import 'package:e_market/Model/Ozellikler.dart';

class AddIcecekler {
  Future<List<Ozellikler>> addIcecekler() async {
    var urun = <Ozellikler>[];

    var u1 = Ozellikler(1, "Ayran", "ayran.png", 3.0);
    var u2 = Ozellikler(2, "Fanta", "fanta.png", 5.0);
    var u3 = Ozellikler(3, "Su", "su.jpeg", 2.0);
    var u4 = Ozellikler(4, "Coca-cola", "coca-cola.jpeg", 9.0);
    var u5 = Ozellikler(5, "Pepsi", "pepsi.jpeg", 9.0);
    var u6 = Ozellikler(6, "Sprite", "sprite.jpeg", 9.0);
    var u7 = Ozellikler(7, "Fruko", "fruko.jpeg", 8.0);




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
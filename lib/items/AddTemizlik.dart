import 'package:e_market/Model/Ozellikler.dart';

class AddTemizlik {
  Future<List<Ozellikler>> addTemizlik() async {
    var urun = <Ozellikler>[];

    var u1 = Ozellikler(1, "Detarjan", "camasır_detarjani.jpg", 39.0);
    var u2 = Ozellikler(2, "Sabun", "sabun.jpeg", 32.0);
    var u3 = Ozellikler(3, "Peros", "peros.jpeg", 35.0);
    var u4 = Ozellikler(4, "Omo", "omo.jpeg", 45.0,);
    var u5 = Ozellikler(5, "Perwol", "perwol.jpeg", 38.0);
    var u6 = Ozellikler(6, "Domestos", "domestos.jpeg", 50.0);
    var u7 = Ozellikler(7, "Kağıt havlu", "kagıthavlu.jpeg", 55.0);





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
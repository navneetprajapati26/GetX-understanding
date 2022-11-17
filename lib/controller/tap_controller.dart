import 'package:get/get.dart';

class TapController extends GetxController{
  int _x =0;
  int get x => _x;

  void increseX(){
    _x++;
    update();
    print(_x);
  }

  void dicreseX(){
    _x--;
    update();
    print(_x);
  }
}
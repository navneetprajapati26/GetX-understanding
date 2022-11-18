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


  RxInt _y = 0.obs;
  RxInt get y=>_y;

  void increseY(){
    _y.value++;

  }

  void dicresey(){
    _y.value--;
  }

  int _z = 0;
  int get z=>_z;

  void totelXY(){
    _z=x+_y.value;
    print(_z);
  }
}
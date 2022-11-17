import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/tap_controller.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //todo: dipendensi injection
    TapController controller = Get.put(TapController());

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController){
              return Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.cyanAccent),
                child: Center(
                    child: Text(
                      tapController.x.toString(),
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    )),
              );
            },),
            GestureDetector(
              onTap: (){
                controller.increseX();
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.cyanAccent),
                child: Center(
                    child: Text(
                  "increseX",
                      style: TextStyle(fontSize: 20,color: Colors.white),
                )),
              ),
            ),

            GestureDetector(
              onTap: (){
                controller.dicreseX();
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.cyanAccent),
                child: Center(
                    child: Text(
                      "dicreseX",
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    )),
              ),
            ),

            GestureDetector(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.cyanAccent),
                child: Center(
                    child: Text(
                      "Tap it",
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    )),
              ),
            ),



          ],
        ),
      ),
    );
  }
}





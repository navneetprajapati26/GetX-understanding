import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: Text("FirstPage"),
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.backspace_rounded,color: Colors.white,),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TapController>(builder: (_){
                return Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.cyanAccent),
                  child: Center(
                      child: Text(
                        controller.x.toString(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                );
              }),
              GestureDetector(
                onTap: () {
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
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}

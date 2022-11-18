import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/tap_controller.dart';

import 'my_home_page.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TapController controller = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: Text("ThirdPage"),
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



              GestureDetector(
                onTap: () {
                  Get.to(()=>HomePage());
                },
                child: GetBuilder<TapController>(builder: (_){
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.cyanAccent),
                    child: Center(
                        child: Text(
                          //controller.x.toString(),
                          Get.find<TapController>().x.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  );
                }),
              ),

              Obx(()=>Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.cyanAccent),
                child: Center(
                    child: Text(
                      "y is "+Get.find<TapController>().y.value.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              )),


              GestureDetector(
                onTap: () {
                  Get.find<TapController>().increseY();
                },
                child: Obx(()=>Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.cyanAccent),
                  child: Center(
                      child: Text(
                        "y is "+Get.find<TapController>().y.value.toString(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                )),
              ),


              GestureDetector(
                onTap: () {
                  Get.to(()=>HomePage());
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
                        "x+y "+(Get.find<TapController>().x + Get.find<TapController>().y.value).toString(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/tap_controller.dart';
import 'package:getx/screens/third_page.dart';
class SecondePage extends StatelessWidget {
  const SecondePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: Text("SecondePage"),
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
                        "totelXY "+controller.z.toString(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                );
              }),

              //incrising x
              GestureDetector(
                onTap: () {
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
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),

              //incrising y
              GestureDetector(
                onTap: () {
                  controller.increseY();
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
                        "increseY",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),

              //adding
              GestureDetector(
                onTap: () {
                  // controller.totelXY();
                  Get.find<TapController>().totelXY();
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
                        "totelXY",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),



              GestureDetector(
                onTap: () {
                  Get.to(()=>ThirdPage());
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
                        "Third Page",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}

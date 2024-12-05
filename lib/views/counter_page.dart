import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController controller=Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 10,
        shadowColor: Colors.black,
        title: Text(
          "Counter Page",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Center(
        child: Obx(() => Center(
          child: Text(
            '${controller.count.value}',
                style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
              ),
        )),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 70,bottom: 60,right: 50),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                controller.addition();
              },
              child: Icon(
                Icons.add,
              ),
            ),
            Spacer(),
            FloatingActionButton(onPressed: (){
              controller.subtraction();
            },child: Icon(CupertinoIcons.minus),)
          ],
        ),
      ),
    );
  }
}

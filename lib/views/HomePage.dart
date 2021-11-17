import 'package:almohamdy_getx_app/controllers/counterController.dart';
import 'package:almohamdy_getx_app/views/otherPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text("Clicks : ${ counterController.counter.value }")),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(onPressed: () {
                  Get.to(OtherPage());
                }, child: Text("Go to next screen :)")),
              )
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterController.increment();
      },
        child: Icon(Icons.add),
      ),
    );
  }
}
import 'package:almohamdy_getx_app/controllers/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherPage extends StatelessWidget {

  final CounterController counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Other Screen , the number ${ counterController.counter.value }")),
          SizedBox(height: 10,),
          Center(
            child: ElevatedButton(onPressed: (){
                Get.back();
            }, child: Text("Go Back :(")),
          )
        ],

      ),
    );
  }
}


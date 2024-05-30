import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/sum_controller.dart';

class Second extends StatelessWidget {
  Second({super.key});

  
  final SumController sumController = Get.put(SumController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SumController>(
              //You can use bindings instead of init. Bindings are when this widget gets
              //rendered, you can create your Controller
              builder: (_) {
                log("count1 rebuild");
                return Text(
                  'Counter #1:    ${_.count1.value}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            const Text("                        +"),
            GetX<SumController>(
              builder: (_) {
                log("count2 rebuild");
                return Text(
                  'Counter #2:    ${_.count2.value}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            const Text("                        ="),
            GetX<SumController>(builder: (_) {
              log("sum rebuild");
              return Text(
                'Sum:                 ${_.sum}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              );
            }),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              child: const Text("Increment Counter #1"),
              onPressed: () {
                sumController.increment();
              },
            ),
            ElevatedButton(
              child: const Text("Increment Counter #2"),
              onPressed: () {
                sumController.increment2();
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/Controller/get_builder.dart';

class CounterScreen extends StatelessWidget {
  // final Countercontroller controller = Get.put(Countercontroller());
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is counter screen',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
            const SizedBox(
              height: 20,
            ),
            // GetBuilder<Countercontroller>(builder: (controller) {
            //   return Text('The counter count is: ${controller.counter}',
            //       style: const TextStyle(
            //         color: Colors.white,
            //         fontSize: 15,
            //       ));
            // }),
            Obx(() => Text(
                  'The counter count is $count',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
                // controller.counterincrement();
                increment();
              },
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
    ;
  }
}

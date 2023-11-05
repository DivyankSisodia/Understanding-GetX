import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx/home.dart';
import 'package:getx/snackbar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text(
                'This is the second screen',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 59,
            ),
            FloatingActionButton(
              onPressed: () {
                Get.offAll(const HomeScreen());
              },
              child: const Icon(Icons.home),
            ),
            SizedBox(height: 59,),
            Text(Get.arguments.toString()),
          ],
        ));
  }
}
// get to is used to navigate to a screen and keep the previous screen in the stack
// get off is used to navigate to a screen and remove the previous screen from the stack
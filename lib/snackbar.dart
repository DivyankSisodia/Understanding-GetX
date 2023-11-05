import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX SnackBar'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Get.snackbar(
                    'This is getX snackbar', 'Snackbar is easy with getX', snackPosition: SnackPosition.BOTTOM,colorText: Colors.black);
              },
              minWidth: double.maxFinite,
              color: Colors.greenAccent,
              child: Text('Show SnackBar'),
            ),
            MaterialButton(
              onPressed: () {
                Get.defaultDialog(title: 'GetX dialog',content: const Text('This is getX dialog box'));
              },
              minWidth: double.maxFinite,
              color: Colors.yellowAccent,
              child: Text('Dialog Box'),
            ),
            MaterialButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 200,
                    color: Colors.white,
                    child: const Center(
                      child: Text('This is bottom sheet'),
                    ),
                  ),
                );
              },
              minWidth: double.maxFinite,
              color: Colors.orangeAccent,
              child: Text('Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}

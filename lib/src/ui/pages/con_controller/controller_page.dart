import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Getx Controller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Text('Nome: ${Get.find<Controller>().name}')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.find<Controller>().setName('Gilvan Araujo');
                  /* 
                  Get.reload<Controller>();
                  setState(() {}); 
                  */


                },
                child: const Text('GetX Controller')),
          ],
        ),
      ),
    );
  }
}

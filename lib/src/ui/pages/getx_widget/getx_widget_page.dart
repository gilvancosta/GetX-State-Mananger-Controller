// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/getx_widget_controller.dart';

class GetxWidgetPage extends StatelessWidget {
  const GetxWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page GetX Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GetX<GetxWidgetController>(
                //  init: GetxWidgetController(),
                builder: (controller) {
              return Column(
                children: [
                  Text('Nome: ${controller.name}'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        controller.setName('Gilvan Araujo');
                      },
                      child: const Text('GetX Controller')),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}

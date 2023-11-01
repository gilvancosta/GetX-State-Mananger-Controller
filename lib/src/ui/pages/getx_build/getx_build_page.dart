import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/getx_build_controller.dart';

class GetxBuildPage extends StatelessWidget {
  const GetxBuildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page GetX Build'),
        ),
        body: Center(
          child: GetBuilder<GetxBuildController>(builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Nome: ${controller.getName}'),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    controller.setName('Gilvan Costa');
                  },
                  child: const Text('Alterar Nome'),
                ),
                const SizedBox(height: 20),
                GetBuilder<GetxBuildController>(
                    id: 'counter',
                    builder: (controller2) {
                      return Text('Contador: ${controller2.counter}');
                    }),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: const Text('Incrementar'),
                ),
              ],
            );
          }),
        ));
  }
}

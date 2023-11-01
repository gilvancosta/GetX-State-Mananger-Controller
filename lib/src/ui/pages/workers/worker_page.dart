import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/worker_controller.dart';

class WorkerPage extends StatefulWidget {
  const WorkerPage({super.key});

  @override
  State<WorkerPage> createState() => _WorkerPageState();
}

class _WorkerPageState extends State<WorkerPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<WorkerController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Workers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Digite um Novo Nome Abaixo:'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: controller.setName,
              ),
            ),
            Obx(() => Text(
                  'Nome: ${Get.find<WorkerController>().name}',
                  style: const TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}

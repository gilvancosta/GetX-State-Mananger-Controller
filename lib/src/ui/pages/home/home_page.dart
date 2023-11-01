import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/getx-controller');
                },
                child: const Text('Page Controller')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/getx-widget');
                },
                child: const Text('Page GetX-Widget')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/local-state-widget');
                },
                child: const Text('Page Local State Widget')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/workers');
                },
                child: const Text('Page Workers')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/first-rebuild');
                },
                child: const Text('Page First Rebuild')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/getx-build');
                },
                child: const Text('Page GetX Build')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/full_live_cycle');
                },
                child: const Text('Full Live Cycle')),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

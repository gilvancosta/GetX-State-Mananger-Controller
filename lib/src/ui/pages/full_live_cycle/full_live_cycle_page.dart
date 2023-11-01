import 'package:flutter/material.dart';

class FullLiveCyclePage extends StatelessWidget {
  const FullLiveCyclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Full Live Cycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('FullLiveCyclePage '),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //  controller.increment();
              },
              child: const Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}

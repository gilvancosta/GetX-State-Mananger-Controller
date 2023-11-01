import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FirstRebuildPage extends StatefulWidget {
  const FirstRebuildPage({super.key});

  @override
  State<FirstRebuildPage> createState() => _FirstRebuildPageState();
}

class _FirstRebuildPageState extends State<FirstRebuildPage> {
  final isAluno = false.obs;

  @override
  void initState() {
    super.initState();
    // O objetivo do firstRebuild é evitar que o ever seja executado na primeira vez que a página é carregada
    isAluno.firstRebuild = false;
    ever<bool>(isAluno, (isAluno) {
      Get.snackbar('Ever', 'O valor de isAluno é $isAluno');
    });

    // isAluno.value = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page First Rebuild')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Switch(value: isAluno.value, onChanged: (_) {})),
            const SizedBox(height: 20),
            // ignore: prefer_const_constructors
            ElevatedButton(
                onPressed: () {
                  isAluno(true);
                },
                child: const Text('Set True')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  isAluno(false);
                },
                child: const Text('Set False')),
          ],
        ),
      ),
    );
  }
}

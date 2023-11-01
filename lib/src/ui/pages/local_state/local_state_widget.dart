// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalStateWidget extends StatelessWidget {
  const LocalStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Local State'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Nome: Gilvan Araujo'),
              const SizedBox(height: 20),
              ValueBuilder<bool?>(
                initialValue: true,
                builder: (obscureValue, updater) => TextFormField(
                  obscureText: obscureValue!,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        updater(!obscureValue);
                      },
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Nome',
                  ),
                ),
                onUpdate: (p0) => print('onUpdate: $p0'),
                onDispose: () => print('ValueBuilder removido da árvore'),
              ),
              const SizedBox(height: 20),
              ObxValue<RxBool>((obscureData) {
                return TextFormField(
                  obscureText: obscureData.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        obscureData.toggle();
                      },
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Nome',
                  ),
                );
              }, true.obs),
            ],
          ),
        ));
  }
}

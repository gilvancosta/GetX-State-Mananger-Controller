// ignore_for_file: avoid_print

import 'package:get/get.dart';

class WorkerController extends GetxController {
  final _workers = <Worker>[];
  final _name = 'Ojuara Costa'.obs;

  String get name => _name.value;

  void setName(String value) => _name(value);

  @override
  void onInit() {
    // criar um worker que esculta todas as alterações na variável name
    final everWorker = ever(_name, (value) {
      print('ever: $value');
    },
        cancelOnError: true,
        // se o valor for alterado mais de uma vez em 1 segundo, o worker só será executado uma vez
        condition: (value) => value.length > 10,
        onError: (error) => print('onError: $error'));
    _workers.add(everWorker);

    // criar um worker que esculta apenas a primeira alteração na variável name
    final onceWorker = once<String>(_name, (value) {
      print('##########  once: $value ########## ');
    }, onError: (error) => print('onError: $error'));

    _workers.add(onceWorker);

// ignora as alterações por intervalo de tempo
    final workerinterval = interval<String>(_name, (value) {
      print(' ########## interval: $value  ##########  ');
    }, time: const Duration(seconds: 1), onError: (error) => print('onError: $error'));

    _workers.add(workerinterval);

    // debounce
    //esperar o usuário digitar o nome completo para depois executar o worker o tempo de espera é
    // definido pelo parâmetro time
    final debounceWorker = debounce<String>(_name, (value) {
      print(' ########## debounce: $value  ##########  ');
    }, time: const Duration(seconds: 1), onError: (error) => print('onError: $error'));

    _workers.add(debounceWorker);

    super.onInit();
  }

// remover todos os workers
  @override
  void onClose() {
    // remover todos os workers
    for (final worker in _workers) {
      worker.dispose();
    }
    super.onClose();
  }
}

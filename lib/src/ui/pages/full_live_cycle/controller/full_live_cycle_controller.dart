// ignore_for_file: avoid_print

import 'package:get/get.dart';

class FullLiveCycleController extends FullLifeCycleController with FullLifeCycleMixin {
  @override
  void onInit() {
    print(' ######### onInit ######### ');
    super.onInit();
    // Inicialização: executar tarefas de configuração.
  }

  @override
  void onReady() {
    print(' ######### onReady ######### ');
    super.onReady();
  }

  @override
  void onDetached() {
    print(' ######### onDetached ######### ');
  }

  @override
  void onHidden() {
    print(' ######### onHidden ######### ');
  }

  @override
  void onInactive() {
    print(' ######### onInactive ######### ');
  }

  @override
  void onPaused() {
    print(' ######### onPaused ######### ');
    // O widget foi pausado: pausar tarefas em segundo plano, se necessário.
  }

  @override
  void onResumed() {
    print(' ######### onResumed ######### ');
    // O widget foi retomado: retomar tarefas pausadas no onPause.
  }

  @override
  void onClose() {
    // Encerrando o widget: liberar recursos, cancelar assinaturas, limpar.
    print(' ######### onClose ######### ');

    super.onClose();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/pages/con_controller/controller/controller.dart';
import 'ui/pages/con_controller/controller_page.dart';
import 'ui/pages/first_rebuild/controller/first_rebuild_controller.dart';
import 'ui/pages/first_rebuild/first_rebuild_page.dart';
import 'ui/pages/full_live_cycle/controller/full_live_cycle_controller.dart';
import 'ui/pages/full_live_cycle/full_live_cycle_page.dart';
import 'ui/pages/getx_build/controller/getx_build_controller.dart';
import 'ui/pages/getx_build/getx_build_page.dart';
import 'ui/pages/getx_widget/controller/getx_widget_controller.dart';
import 'ui/pages/getx_widget/getx_widget_page.dart';
import 'ui/pages/home/home_page.dart';
import 'ui/pages/local_state/local_state_widget.dart';
import 'ui/pages/workers/controller/worker_controller.dart';
import 'ui/pages/workers/worker_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/', page: () => const HomePage(), children: const []),
        GetPage(
          name: '/getx-controller',
          binding: BindingsBuilder.put(() => Controller()),
          page: () => const ControllerPage(),
        ),
        GetPage(
          name: '/getx-widget',
          binding: BindingsBuilder.put(() => GetxWidgetController()),
          page: () => const GetxWidgetPage(),
        ),
        GetPage(
          name: '/local-state-widget',
          page: () => const LocalStateWidget(),
        ),
        GetPage(
          name: '/workers',
          binding: BindingsBuilder.put(() => WorkerController()),
          page: () => const WorkerPage(),
        ),
        GetPage(
          name: '/first-rebuild',
          // binding: BindingsBuilder.put(() => FirstRebuildController()),
          page: () => const FirstRebuildPage(),
        ),
        GetPage(
          name: '/getx-build',
          binding: BindingsBuilder.put(() => GetxBuildController()),
          page: () => const GetxBuildPage(),
        ),
        GetPage(
          name: '/full_live_cycle',
          binding: BindingsBuilder.put(() => FullLiveCycleController()),
          page: () => const FullLiveCyclePage(),
        ),
      ],
    );
  }
}

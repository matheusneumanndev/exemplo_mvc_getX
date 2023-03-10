import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      init: Controller.to,
      builder: (controllerMagico) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('exemplo'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${controllerMagico.meioDeCampoVisaoXController()}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: controllerMagico.pecoPorFavorProCounterzinhoTrabalharComInteligencia,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      }
    );
  }
}

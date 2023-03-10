import 'package:gerenciamento_de_estado_exemplo/counter.dart';
import 'package:get/get.dart';

class Controller extends GetxController {

  static Controller get to => Get.find();

  Counter counterzinho = Counter();

  // int counter = 0;

  void pecoPorFavorProCounterzinhoTrabalharComInteligencia() {
    counterzinho.logicaMuitoComplexa();
    // counter++;
    update();
    // print(counter);
  }

  int meioDeCampoVisaoXController() {
    return counterzinho.meuValorzinhoPqEuDeixo;
  }
}

import 'dart:async';
import 'dart:math';
import 'package:flutter_default_state_manager/blocPattern/imc_state.dart';

class BlocPatternController {
  final _streamController = StreamController<ImcState>.broadcast()
    ..add(ImcState(imc: 0.0));
  Stream<ImcState> get imcOut => _streamController.stream;

  Future<void> calcularIMC(
      {required double peso, required double altura}) async {
    try {
      _streamController.add(ImcStateLoader());
      await Future.delayed(const Duration(seconds: 1));
      final imc = peso / pow(altura, 2);
      _streamController.add(ImcState(imc: imc));
    } on Exception catch (e) {
      _streamController.add(ImcStateError(message: 'Erro ao calcular o IMC'));
    }
  }

  void dispose() {
    _streamController.close();
  }
}

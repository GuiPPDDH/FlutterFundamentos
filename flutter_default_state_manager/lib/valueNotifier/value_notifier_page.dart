import 'dart:math';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/imc_gauge.dart';

class ValueNotifierPage extends StatefulWidget {
  const ValueNotifierPage({super.key});

  @override
  State<ValueNotifierPage> createState() => _ValueNotifierPageState();
}

class _ValueNotifierPageState extends State<ValueNotifierPage> {
  final pesoEC = TextEditingController();
  final alturaEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var imc = ValueNotifier(0.0);

  @override
  void dispose() {
    pesoEC.dispose();
    alturaEC.dispose();
    super.dispose();
  }

  void _calcularIMC({required double peso, required double altura}) {
    imc.value = peso / pow(altura, 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueNotifier'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ValueListenableBuilder<double>(
                  valueListenable: imc,
                  builder: (_, imcValue, __) {
                    return ImcGauge(imc: imcValue);
                  },
                ),
                TextFormField(
                  controller: pesoEC,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Peso',
                  ),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                        locale: 'pt_BR',
                        symbol: '',
                        turnOffGrouping: true,
                        decimalDigits: 2),
                  ],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo peso obrigatório';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: alturaEC,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Altura',
                  ),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                        locale: 'pt_BR',
                        symbol: '',
                        turnOffGrouping: true,
                        decimalDigits: 2),
                  ],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo altura obrigatório';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    if (formValid) {
                      var formatter = NumberFormat.simpleCurrency(
                          locale: 'pt_BR', decimalDigits: 2);
                      double peso = formatter.parse(pesoEC.text) as double;
                      double altura = formatter.parse(alturaEC.text) as double;
                      _calcularIMC(peso: peso, altura: altura);
                    }
                  },
                  child: const Text('Calcular IMC'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

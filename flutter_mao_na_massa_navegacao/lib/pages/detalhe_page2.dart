import 'package:flutter/material.dart';

class DetalhePage2 extends StatelessWidget {
  const DetalhePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe 2'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop('Parametro retornado pela tela Detalhe2');
          },
          child: const Text('Voltar'),
        ),
      ),
    );
  }
}

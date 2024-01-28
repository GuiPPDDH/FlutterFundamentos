import 'package:flutter/material.dart';
//import 'package:flutter_mao_na_massa/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              /*
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                        name: 'Detalhe', arguments: {'id': 20}),
                    builder: (context) => const Detalhe(),
                  ),
                );
              },*/
              onPressed: () {
                Navigator.of(context).pushNamed('/detalhe', arguments: {
                  'id': 30
                });
              },
              child: const Text('Detalhes'),
            )
          ],
        ),
      ),
    );
  }
}

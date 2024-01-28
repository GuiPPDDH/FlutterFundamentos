import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: 'Parametro X');
              },
              child: const Text('Ir para Detalhe'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    settings: const RouteSettings(
                      name: '/detalhe',
                      //arguments: 'Parametro pelo PageRoute'
                    ),
                    builder: (_) => const DetalhePage(
                        parametro: 'Parametro pelo PageRoute')));
              },
              child: const Text('Ir para Detalhe PageRoute'),
            ),
            TextButton(
              onPressed: () async {
                var message =
                    await Navigator.of(context).pushNamed('/detalhe2');
                print('Mensagem recebida da página: $message');
              },
              child: const Text('Ir para Detalhe'),
            ),
          ],
        ),
      ),
    );
  }
}

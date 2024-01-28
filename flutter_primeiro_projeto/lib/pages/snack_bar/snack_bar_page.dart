import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                final snackbar =
                    SnackBar(content: Text('Usuário salvo com sucesso'));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Simple Snackbar'),
            ),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Usuário salvo com sucesso'),
                    action: SnackBarAction(
                      label: 'Desfazer',
                      onPressed: () {
                        print('Clicado!');
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                },
                child: const Text('Action Snackbar')),
          ],
        ),
      ),
    );
  }
}

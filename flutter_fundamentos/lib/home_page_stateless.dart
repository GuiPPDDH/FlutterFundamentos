import 'package:flutter/material.dart';

class HomePageStateless extends StatelessWidget {
  String texto = 'Estou no StatelessWidget';

  HomePageStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(texto),
          TextButton(
            onPressed: () {
              texto = 'Alterei o texto do StatelessWidget';
            },
            child: const Text('Alterar Texto'),
          ),
        ],
      ),
    );
  }
}

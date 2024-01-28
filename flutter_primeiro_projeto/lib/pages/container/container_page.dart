import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de Container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 20,
                  offset: Offset(10, 10),
                ),
                BoxShadow(
                  color: Colors.yellow,
                  blurRadius: 20,
                  offset: Offset(-10, -10),
                ),
              ]),
        ),
      ),
    );
  }
}

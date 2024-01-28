import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final cor = Colors.red;
    //final corOpacity = Colors.red.withOpacity(0.5);
    //final corRGBO = Color.fromRGBO(0, 0, 255, 1);
    final cor = Color(0XFF45D1FD);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: Center(
        child: Container(
          color: cor,
        )
      ),
    );
  }
}

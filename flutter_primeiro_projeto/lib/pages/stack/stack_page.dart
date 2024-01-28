import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.pink,
            ),
          ),
          Positioned(
            left: 100,
            bottom: 100,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}

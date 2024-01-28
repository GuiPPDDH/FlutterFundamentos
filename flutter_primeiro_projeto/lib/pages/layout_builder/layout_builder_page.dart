import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: constraints.maxWidth * 0.5,
              height: constraints.maxHeight * 0.5,
            ),
            Container(
              color: Colors.blue,
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.5,
            ),
          ],
        );
      })),
    );
  }
}

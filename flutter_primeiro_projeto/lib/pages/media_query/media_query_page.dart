import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('Largura: ${mediaQuery.size.width}');
    print('Altura: ${mediaQuery.size.height}');
    print('Orientação: ${mediaQuery.orientation}');
    print('Padding Top: ${mediaQuery.padding.top}');
    print('Tamanho AppBar Default: ${mediaQuery.size.width}');

    var appBar = AppBar(
      title: const Text('MediaQuery'),
      backgroundColor: Colors.blue,
    );

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.size.width,
              height: heightBody * 0.5,
            ),
            Container(
              color: Colors.blue,
              width: mediaQuery.size.width,
              height: heightBody * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}

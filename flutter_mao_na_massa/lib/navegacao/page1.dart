import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      settings: const RouteSettings(name: 'page2'),
                      builder: (context) => const Page2()));
                },
                child: const Text('Page2 via Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Pop')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/page2');
                },
                child: const Text('Page2 via Named')),
          ],
        ),
      ),
    );
  }
}

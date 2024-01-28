import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                settings: const RouteSettings(
                  name: 'page4'
                ),
                builder: (context) => const Page4()));
            }, child: const Text('Page4 via Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Pop')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushReplacementNamed('/page4');
            }, child: const Text('Page4 via Named')),
          ],
        ),
      ),
    );
  }
}
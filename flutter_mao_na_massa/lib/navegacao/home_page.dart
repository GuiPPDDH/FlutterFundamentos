import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegação HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: const RouteSettings(
                        name: 'page1'
                      ),
                      builder: (context) => const Page1() 
                    )
                  );
                },
                child: const Text('Page1 via Page')),
            ElevatedButton(onPressed: () {
                  Navigator.of(context).pushNamed('/page1');
                }, child: const Text('Page1 via Named')),
          ],
        ),
      ),
    );
  }
}

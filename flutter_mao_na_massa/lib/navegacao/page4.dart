import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  /*Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: const RouteSettings(name: 'page1'),
                      builder: (context) => const Page1()
                    ), 
                    ModalRoute.withName('page1'));*/
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        settings: RouteSettings(name: 'page1'),
                        builder: (context) => Page1(),
                      ),
                      (route) => route.isFirst
                  );
                },
                child: const Text('Page1 via Page')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil('/page1', ModalRoute.withName('/page1'));
            }, child: Text('PushNamedAndRemoveUntil via Named')),
          ],
        ),
      ),
    );
  }
}

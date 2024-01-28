import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/home_page_stateless.dart';

class HomePageStateful extends StatefulWidget {
  const HomePageStateful({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageStatefulState();
  }
}

class _HomePageStatefulState extends State<StatefulWidget> {
  String texto = 'Estou no StatefulWidget';

  @override
  void initState() {
    super.initState();
    texto = 'Texto alterado pelo initState';
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallback');
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePageStateless(),
      ));
    });
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            TextButton(
              onPressed: () {
                setState(() {
                  texto = 'Alterei o texto do StatefulWidget';
                });
              },
              child: const Text('Alterar Texo'),
            ),
          ],
        ),
      ),
    );
  }
}

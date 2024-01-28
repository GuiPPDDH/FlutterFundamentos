import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/core/navigator_observer_custom.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/detalhe_page.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/detalhe_page2.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/home_page.dart';
//import 'package:flutter_mao_na_massa_navegacao/pages/detalhe_page.dart';
//import 'package:flutter_mao_na_massa_navegacao/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      //*onGenerateRoute 
      //*Usado para criar navegações de telas de forma customizada
      //*funciona apenas com navegação nomeada ou rotas nomeadas
      //*Não vai ser chamado se for utilizado navegação padrão
      onGenerateRoute: (RouteSettings settings) {
        /*if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const HomePage(),
          );
        }*/
        if (settings.name == '/detalhe') {
          final parametro = settings.arguments as String;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(
              parametro: parametro
            ),
          );
        }
        return null;
      },
      routes: {
        '/': (_) => const HomePage(),
        //'/detalhe': (_) => DetalhePage(),
        '/detalhe2': (_) => DetalhePage2(),
      },
    );
  }
}

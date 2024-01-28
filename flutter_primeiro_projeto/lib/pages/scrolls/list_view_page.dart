import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice: $index'),
            subtitle: const Text('Flutter tem muito potencial'),
            leading: const CircleAvatar(
              
              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/4/4f/Dash%2C_the_mascot_of_the_Dart_programming_language.png'),
            ),
            trailing: const CircleAvatar(backgroundColor: Colors.blue),
          );
        },
        itemCount: 1000,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nossa primeira AppBar',
          style: TextStyle(fontFamily: 'Tourney'),
        ),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.alarm)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_box)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.circle)),
        ],
      ),
      drawer: const Drawer(
        child: Center(child: Text('Drawer aberto')),
      ),
      endDrawer: const Drawer(child: Center(child: Text('Drawer end'))),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Academia do Flutter',
              style: TextStyle(
                fontFamily: 'Tourney', 
                fontWeight: FontWeight.bold, 
                fontSize: 30
              ),
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 20,
                      offset: Offset(10, 10),
                    ),
                    BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 20,
                      offset: Offset(-10, -10),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/flutter-development-areas.jpg')
            ),
            Container(
              width: 300,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/flutter-lockup.png'),
                  //fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Flutter logo',
                  style: TextStyle(
                    backgroundColor: Colors.white.withOpacity(0.6),
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/4/4f/Dash%2C_the_mascot_of_the_Dart_programming_language.png'),
            ),
          ],
        ),
      ),
    );
  }
}
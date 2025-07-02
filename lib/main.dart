import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              icon: const Icon(Icons.add_box_rounded),
              onPressed: () {
              },
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {
              },
            ),
          ],
        ),

        body: Center(
          child: Image.asset(
            'lib/assets/Untirta-Logo-Transparan.webp',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

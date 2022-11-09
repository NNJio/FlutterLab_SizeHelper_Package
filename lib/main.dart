import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test SizeHelper Package'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.pink.shade50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: const[
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
              ],
            ),
            Column(
              children: const[
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
              ],
            ),
            Column(
              children: const[
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
              ],
            ),
            Column(
              children: const[
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
              ],
            ),
            Column(
              children: const[
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
                Text("Test1"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

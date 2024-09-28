import 'package:flutter/material.dart';

void main() {
  runApp(const FashionMart());
}

class FashionMart extends StatelessWidget {
  const FashionMart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Starting point')),
      ),
    );
  }
}

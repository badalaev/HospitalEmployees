import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Новая страница'),
      ),
      body: const Center(
        child: Text(
          'Это новая страница!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
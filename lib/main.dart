import 'package:flutter/material.dart';
import 'new_page.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const title = 'MyAwesomeApp';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: const MyGridViewBuilderWidget(),
      ),
    );
  }
}

class MyGridViewBuilderWidget extends StatelessWidget {
  const MyGridViewBuilderWidget({Key? key}) : super(key: key);
  final gridItems = 10;
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: gridItems,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
                child:InkWell(
                  onTap: () {
                  // Обработка нажатия
                     // Переход на новую страницу
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPage()),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.blue,
                    child: const Center(
                    child: Text(
                      'Нажмите здесь',
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ));
        });
  }
}
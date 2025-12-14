import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My App"), centerTitle: true),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const inputDecoration =  InputDecoration(
            hintText: "Please Enter Your Name!",
            labelText: " Lastname ",
            border: OutlineInputBorder(),
          );
    return SingleChildScrollView(
      child: Column(
      children: [
        Icon(Icons.account_circle_outlined, size: 105, color: Colors.amber),
        TextField(
        decoration: InputDecoration(
          hintText: "Please Enter Your Name!",
          labelText: " Firstname ",
          border: OutlineInputBorder(),
        ),
        onChanged: (text) {
          if (kDebugMode) {
          print(" Text Change: $text");
          }
        },
        ),
        SizedBox(height: 20),
        TextField(
        decoration: inputDecoration,
        onChanged: (text) {
          if (kDebugMode) {
          print(" Text Change: $text");
          }
        },
        ),
        Center(child: Image.asset('assets/raksa.jpg', width: 300, height: 300)),
        Center(child: Image.asset('assets/raksa.jpg', width: 300, height: 300)),
        Center(child: Image.asset('assets/raksa.jpg', width: 300, height: 300))
      ],
      ),
    );
  }
}

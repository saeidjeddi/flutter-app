import 'package:flutter/cupertino.dart';
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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('my first app '), actions:const [
        Icon(CupertinoIcons.chat_bubble),
        SizedBox(width: 10,),
        Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
        child: Icon(CupertinoIcons.ellipsis_vertical),
        )


      ],),
      body: const Center(
        child: Text('Hello world'),
      ),
    );
  }
}

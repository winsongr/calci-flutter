// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var children;
    return Scaffold(
      appBar: AppBar(title: const Text("calci")),
      body: Column(children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.bottomRight,
            child: const Text(
              "0",
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Row(
          children: [customOutbut('2'), customOutbut('2'), customOutbut('2'),customOutbut('2')],
        ),
        Row(
          children: [customOutbut('2'), customOutbut('2'),customOutbut('2'), customOutbut('2')],
        ),
        Row(
          children: [customOutbut('2'),customOutbut('2'), customOutbut('2'), customOutbut('2')],
        ),
      ]),
    );
  }

  Expanded customOutbut(String val) {
    return Expanded(
      child: OutlineButton(
          padding: const EdgeInsets.all(25.0),
          onPressed: () {},
          child: Text(
            val,
            style: const TextStyle(fontSize: 25.0),
          )),
    );
  }
}

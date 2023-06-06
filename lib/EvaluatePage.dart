// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EvaluatePage extends StatefulWidget {
  const EvaluatePage({ Key? key }) : super(key: key);

  @override
  State<EvaluatePage> createState() => _EvaluatePageState();
}

class _EvaluatePageState extends State<EvaluatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 50, 50, 50),
        title: Text(
          "Evaluate this Session",
          style: TextStyle(
            fontFamily: "Futura",
            color: Color.fromARGB(255, 224, 224, 224),
          ),
        ),
      ),
      body: ListView(
        children: [
          Text("hello world!"),
        ],
      ),
    );
  }
}

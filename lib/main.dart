// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iands_app/AuthenticationPage.dart';
import 'package:iands_app/EvaluatePage.dart';
import 'package:iands_app/SessionsPage.dart';
import 'package:iands_app/SchedulePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Conference Companion",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ""),
      routes: <String, WidgetBuilder>{
        "/welcome": (BuildContext context) => MyHomePage(title: ""),
        "/authentication": (BuildContext context) => AuthenticationPage(),
        "/sessions": (BuildContext context) => SessionsPage(),
        "/schedule": (BuildContext context) => SchedulePage(),
        "/evaluate": (BuildContext context) => EvaluatePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 17, 93, 196),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    width: 1.5,
                    color: const Color.fromARGB(87, 255, 255, 255)
                  ),
                  gradient: const LinearGradient(
                    colors: [Color.fromARGB(200, 255, 255, 255), Color.fromARGB(100, 255, 255, 255)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: const Image(
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.fitHeight,
                          image: AssetImage("lib/assets/logo.jpg")
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Welcome to the IANDS",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Futura"
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                            child: Text(
                              "Conference Companion",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Futura",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            "This app allows you to see the conference schedule and bookmark sessions you are interested in attending.", 
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Futura"
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        width: double.infinity,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(13),
                                  child: MaterialButton(
                                    height: double.infinity,
                                    minWidth: double.infinity,
                                    color: const Color.fromARGB(255, 240, 240, 240),
                                    child: const Text(
                                      "Create Account",
                                      style: TextStyle(
                                        fontFamily: "Futura",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        Navigator.of(context).pushReplacementNamed("/authentication");
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(13),
                                  child: MaterialButton(
                                    height: double.infinity,
                                    minWidth: double.infinity,
                                    child: const Text(
                                      "Sign In",
                                      style: TextStyle(
                                        fontFamily: "Futura",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        Navigator.of(context).pushReplacementNamed("/authentication");
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
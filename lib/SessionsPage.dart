// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SessionsPage extends StatefulWidget {
  const SessionsPage({ Key? key }) : super(key: key);

  @override
  State<SessionsPage> createState() => _SessionsPageState();
}

class _SessionsPageState extends State<SessionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 17, 93, 196),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 102, 163, 255),
            child: Icon(Icons.open_in_browser, color: Colors.white),
            onPressed: () {}
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 255, 102, 102),
              child: Icon(Icons.calendar_today, color: Colors.white),
              onPressed: () {}
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    width: 1.5,
                    color: const Color.fromARGB(87, 255, 255, 255)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                  gradient: const LinearGradient(
                    colors: [Color.fromARGB(200, 255, 255, 255), Color.fromARGB(100, 255, 255, 255)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: TextField(
                      style: TextStyle(
                        fontFamily: "Futura",
                      ),
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color.fromARGB(127, 0, 0, 0),
                          fontFamily: "Futura",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

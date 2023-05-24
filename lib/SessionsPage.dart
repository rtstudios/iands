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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.calendar_today, color: Colors.white),
        onPressed: () {}
      ), // sort this out later; gives an error because the floating buttons are in a row
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 13, 13, 22),
              child: Container(
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
            ),
            SessionListItem(),
            SessionListItem(),
            SessionListItem(),
            SessionListItem(),
          ],
        ),
      ),
    );
  }
}

class SessionListItem extends StatefulWidget {
  const SessionListItem({ Key? key }) : super(key: key);

  @override
  State<SessionListItem> createState() => _SessionListItemState();
}

class _SessionListItemState extends State<SessionListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(13, 0, 13, 13),
      child: Container(
        width: double.infinity,
        height: 228,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 247, 247),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      width: 100,
                      height: 100,
                      fit: BoxFit.fitHeight,
                      image: AssetImage("lib/assets/pfp.jpg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Session Title",
                          style: TextStyle(
                            fontFamily: "Futura",
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Speaker: John Doe",
                          style: TextStyle(
                            fontFamily: "Futura",
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "Tue Mar 28 at 11:30 AM in Room A",
                          style: TextStyle(
                            fontFamily: "Futura",
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "Session Type: Keynote",
                          style: TextStyle(
                            fontFamily: "Futura",
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: Color.fromARGB(255, 255, 102, 102),
                    height: 50,
                    minWidth: 100,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: Icon(Icons.calendar_today, color: Colors.white),
                        ),
                        Text(
                          "Add to Schedule",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    color: Color.fromARGB(255, 102, 163, 255),
                    height: 50,
                    minWidth: 100,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: Icon(Icons.info, color: Colors.white),
                        ),
                        Text(
                          "Details",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

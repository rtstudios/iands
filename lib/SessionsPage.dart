// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

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
        onPressed: () {
          setState(() {
            Navigator.of(context).pushReplacementNamed("/schedule");
          });
        }
      ), 
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
            SessionListItem("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          ],
        ),
      ),
    );
  }
}

class SessionListItem extends StatefulWidget {
  final String description;

  SessionListItem(this.description, {Key? key}) : super(key: key);

  @override
  State<SessionListItem> createState() => _SessionListItemState();
}

class _SessionListItemState extends State<SessionListItem> {
  var showDesc = false;
  ScrollPhysics lockedScrolling = NeverScrollableScrollPhysics();
  var alreadyAdded = false;

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
        child: ListView(
          physics: lockedScrolling,
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
              child: Visibility(
                visible: showDesc
                ? true
                : false,
                child: Text(
                  widget.description,
                  style: TextStyle(
                    fontFamily: "Futura",
                    fontSize: 16,
                  ),
                ),
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
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: alreadyAdded 
                    ? Colors.green
                    : Color.fromARGB(255, 255, 102, 102),
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
                          child: alreadyAdded
                          ? Icon(Icons.check, color: Colors.white)
                          : Icon(Icons.calendar_today, color: Colors.white),
                        ),
                        Text(
                          alreadyAdded
                          ? "Added!"
                          : "Add to Schedule",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        if(!alreadyAdded) {
                          alreadyAdded = true;
                        }
                        else if(alreadyAdded) {
                          alreadyAdded = false;
                        }
                      });
                    },
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
                          showDesc
                          ? "Hide"
                          : "Details",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        if(!showDesc) {
                          showDesc = true;
                          lockedScrolling = AlwaysScrollableScrollPhysics();
                        }
                        else if(showDesc) {
                          showDesc = false;
                          lockedScrolling = NeverScrollableScrollPhysics();
                        }
                      });
                    },
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

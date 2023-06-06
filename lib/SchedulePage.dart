// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({ Key? key }) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 50, 50, 50),
        title: Text(
          "My Schedule",
          style: TextStyle(
            fontFamily: "Futura",
            color: Color.fromARGB(255, 224, 224, 224),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.home, color: Colors.white),
        onPressed: () {
          setState(() {
            Navigator.of(context).pushReplacementNamed("/sessions");
          });
        }
      ),
      body: Center(
        child: ListView(
          children: [
            ScheduleListItem("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          ],
        ),
      ),
    );
  }
}

class ScheduleListItem extends StatefulWidget {
  final String description;

  ScheduleListItem(this.description, {Key? key}) : super(key: key);

  @override
  State<ScheduleListItem> createState() => _ScheduleListItemState();
}

class _ScheduleListItemState extends State<ScheduleListItem> {
  var showDesc = false;
  ScrollPhysics lockedScrolling = NeverScrollableScrollPhysics();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(13, 13, 13, 0),
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
                    color: Colors.green,
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
                          "Evaluate Session",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pushReplacementNamed("/evaluate");
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
                  MaterialButton(
                    color: Colors.black45,
                    height: 50,
                    minWidth: 50,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(Icons.delete, color: Colors.white),
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

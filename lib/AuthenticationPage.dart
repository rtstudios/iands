// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({ Key? key }) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    colors: [Color.fromARGB(150, 255, 255, 255), Color.fromARGB(100, 255, 255, 255)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign in to the IANDS",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Futura"
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Text(
                        "Conference Companion",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Futura",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 18),
                      child: Text(
                        "Continue with your email or social account.",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Futura",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 12, 5),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 242, 242),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter email address",
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
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 242, 242),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter password",
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 12, 35),
                      child: MaterialButton(
                        color: Color.fromARGB(255, 177, 130, 210),
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        height: 60,
                        minWidth: double.infinity,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).pushReplacementNamed("/sessions");
                          });
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                            child: Container(
                              width: 5,
                              height: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          "Or continue with",
                          style: TextStyle(
                            fontFamily: "Futura",
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 12, 0),
                            child: Container(
                              width: 5,
                              height: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            elevation: 2,
                            color: Color.fromARGB(255, 240, 240, 240),
                            height: 60,
                            minWidth: 60,
                            child: Image(
                              width: 30,
                              height: 30,
                              image: AssetImage("lib/assets/google.png"),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)
                            ),
                            onPressed: () {},
                          ),
                          MaterialButton(
                            elevation: 2,
                            color: Color.fromARGB(255, 240, 240, 240),
                            height: 60,
                            minWidth: 60,
                            child: Image(
                              width: 30,
                              height: 30,
                              image: AssetImage("lib/assets/apple.png"),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)
                            ),
                            onPressed: () {},
                          ),
                          MaterialButton(
                            elevation: 2,
                            color: Color.fromARGB(255, 240, 240, 240),
                            height: 60,
                            minWidth: 60,
                            child: Image(
                              width: 30,
                              height: 30,
                              image: AssetImage("lib/assets/facebook.png"),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)
                            ),
                            onPressed: () {},
                          ),
                        ],
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

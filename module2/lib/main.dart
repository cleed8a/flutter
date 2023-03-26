import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Business Card",
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/profile_pic.jpg'),
                  radius: 100,
                ),
                Text("James Parker",
                    style: TextStyle(
                      fontFamily: 'Alkatra',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      letterSpacing: 3,
                    )),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("DEVELOPER",
                      style: TextStyle(
                        fontFamily: 'Alkatra',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        letterSpacing: 1.5,
                      )),
                ),
                Container(
                  width: 200,
                  child: Divider(
                    height: 10.0,
                    color: Colors.white,
                  ),
                ),
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ListTile(
                        leading: Icon(Icons.phone,
                        color: Colors.teal,),
                        title: Text(
                          "224-206-2000",
                          style: TextStyle(
                            fontFamily: 'Alkatra',
                            fontSize: 16,
                            color: Colors.black,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    )),
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ListTile(
                        leading: Icon(Icons.email,
                        color: Colors.teal,),
                        title: Text("testing@email.com",
                            style: TextStyle(
                                fontFamily: 'Alkatra',
                                fontSize: 16,
                                color: Colors.black,
                                letterSpacing: 1.5)),
                      ),
                    ))
              ],
            ))));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quintessential Solitaire',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(

          primary: const Color.fromARGB(255, 206, 182, 31),
          secondary: const Color.fromARGB(255, 206, 182, 31),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 105, 23)
      ),
      home: const MyHomePage(title: 'Welcome to Quintessential Solitaire'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/freecellrocks2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center( 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome to Quintessential Solitaire',
                    style: TextStyle(height: 1.5, fontSize: 51, fontFamily: "carolingia", shadows: <Shadow>[
                      Shadow(
                        offset: Offset(3.0, 3.0),
                        blurRadius: 5.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      ]),
                  ),
                  InkWell(
                      child: Text(
                        'Go check out the blog:   https://quintessentialsolitaire.substack.com/',
                        style: TextStyle(height: 1.5, fontSize: 51, fontFamily: "carolingia", shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 5.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ]),
                      ),
                      onTap: () => launch('https://quintessentialsolitaire.substack.com/')
                  ),
                  // Text(
                  //   'Check out the blog:   https://quintessentialsolitaire.substack.com/',
                  //   style: TextStyle(height: 1.5, fontSize: 85, fontFamily: "carolingia", shadows: <Shadow>[
                  //     Shadow(
                  //       offset: Offset(3.0, 3.0),
                  //       blurRadius: 5.0,
                  //       color: Color.fromARGB(255, 0, 0, 0),
                  //     ),
                  //     ]),
                  // ),
                ],
              ),
            ]
          ),
        ),
        // child: Positioned( 
        //     left: 200.0,
        //     top: 200.0,
        //     child: Container(
        //       width: 1000.0,
        //       height: 1000.0,
        //       child: Text(
        //           'Welcome to Quintessential Solitaire',
        //           style: TextStyle(height: -8, fontSize: 51, fontFamily: "carolingia",),
        //         ),
        //       )
        //   ),
      ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ),
    );
  }
}

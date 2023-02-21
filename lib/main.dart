import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0)
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

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[ 
          Container(
            height: 50
          ),
          Container(
            child: Row(
              children: <Widget> [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/doublepyramid.gif"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 200),
                AutoSizeText(
                  "Welcome to Quintessential Solitaire",
                  style: TextStyle(fontSize: 120.0, color: Colors.yellow),
                  maxLines: 1,
                ),
                SizedBox(width: 200),
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/doublepyramid.gif"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container( height: 50 ),
          InkWell(
            child: AutoSizeText(
              'Go check out the blog: https://quintessentialsolitaire.substack.com/',
              style: TextStyle(fontSize: 100.0, color: Colors.yellow),
              maxLines: 2,
            ),
            onTap: () => launch('https://quintessentialsolitaire.substack.com/')
          ),
          Container(
            height: 100
          ),
          FittedBox(
            fit: BoxFit.fitHeight,
            child: Container(
              width: 2000,
              height:1100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/faelt.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
                child: AutoSizeText(
                  "Online solitaire (and more) coming soon...",
                  style: TextStyle(fontSize: 100.0, color: Color.fromARGB(255, 255, 255, 255)),
                  maxLines: 1,
                ),
              ),
            ),
          ),
          Container( height: 50 )
        ],
      ),
    );
  }
}

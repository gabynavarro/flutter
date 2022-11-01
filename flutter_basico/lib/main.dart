import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi App",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavBar"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text("Imagen de muestra"),
              )
            ],
          ),
          Container(
            width: 150,
            height: 150,
            child: Image.asset(              
                ,
          )
        ],
      ),
    );
  }
}

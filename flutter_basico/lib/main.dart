import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_prymary/widget/alto_ancho.dart';
import 'package:flutter_prymary/widget/icon_widget.dart';
import 'package:flutter_prymary/widget/row_expanded.dart';

void main() {
  debugPaintSizeEnabled:
  true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("NavBar"),
      ),
      body: Column(
        children: [
          //MEdia Queries
          Alto_Ancho(mediaQuery: mediaQuery),
          //Row y expanded
          const row_expanded(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //aliniacion vertical
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              IconWidget(),
              IconWidget(),
              IconWidget(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              IconWidget(),
              IconWidget(),
              IconWidget(),
            ],
          ),
          Row(
            //primero y ultimo espacio son distintos
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              IconWidget(),
              IconWidget(),
              IconWidget(),
            ],
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Colors.amber.shade100,
                  width: 150,
                  height: 150,
                  child: Image.asset("../asset/images/burger.png"),
                ),
                Container(
                  color: Colors.blueAccent.shade100,
                  width: 150,
                  height: 150,
                  child: Image.asset("../asset/images/burger.png"),
                ),
                Container(
                  color: Colors.pink.shade100,
                  width: 150,
                  height: 150,
                  child: Image.asset("../asset/images/burger.png"),
                ),
                Container(
                  color: Colors.amber.shade100,
                  width: 150,
                  height: 150,
                  child: Image.asset("../asset/images/burger.png"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

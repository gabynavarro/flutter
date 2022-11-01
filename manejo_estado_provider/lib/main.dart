import 'package:manejo_estado_provider/provider/heroinfo.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:manejo_estado_provider/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => HeroeInfo(),
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          "home": (context) => Home(),
        },
      ),
    );
  }
}

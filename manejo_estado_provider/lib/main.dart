import 'package:manejo_estado_provider/provider/heroinfo.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:manejo_estado_provider/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HeroeInfo()), //lista
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider App',
        initialRoute: 'home',
        routes: {
          "home": (context) => Home(),
        },
      ),
    );
  }
}

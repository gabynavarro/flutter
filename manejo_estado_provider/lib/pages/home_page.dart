import 'package:flutter/material.dart';
import 'package:manejo_estado_provider/provider/heroinfo.dart';
import 'package:manejo_estado_provider/widget/super_floatingaction.dart';
import 'package:manejo_estado_provider/widget/super_text.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroeInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Provider")),
      ),
      body: Center(child: SuperText()),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}

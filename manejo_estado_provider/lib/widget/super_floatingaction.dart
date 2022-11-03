import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/heroinfo.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroeInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.accessible_forward_rounded),
            backgroundColor: Colors.red,
            onPressed: () => {
                  heroesinfo.setHeroe = 'SUPERMAN',
                }),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.ac_unit_outlined),
            backgroundColor: Colors.blue,
            onPressed: () => {heroesinfo.setHeroe = "OTRO HEROE"}),
      ],
    );
  }
}

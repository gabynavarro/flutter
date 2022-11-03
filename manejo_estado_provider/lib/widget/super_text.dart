import 'package:flutter/material.dart';
import 'package:manejo_estado_provider/provider/villanosinfo.dart';
import 'package:provider/provider.dart';

import '../provider/heroinfo.dart';

class SuperText extends StatelessWidget {
  const SuperText({super.key});

  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroeInfo>(context);
    final villanoinfo = Provider.of<VillanoInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          heroesinfo.getHeroe,
          style: TextStyle(
            color: heroesinfo.color,
          ),
        ),
        Text(
          villanoinfo.getVillano,
          style: TextStyle(
            color: heroesinfo.color,
          ),
        ),
      ],
    );
  }
}

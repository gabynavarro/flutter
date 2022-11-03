import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/heroinfo.dart';

class SuperText extends StatelessWidget {
  const SuperText({super.key});

  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroeInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(heroesinfo.getHeroe),
      ],
    );
  }
}

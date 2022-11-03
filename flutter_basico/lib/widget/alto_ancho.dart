import 'package:flutter/material.dart';

class Alto_Ancho extends StatelessWidget {
  const Alto_Ancho({
    Key? key,
    required this.mediaQuery,
  }) : super(key: key);

  final MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          "Ancho:${mediaQuery.size.width}",
          style: TextStyle(
            fontSize: 20,
          ),
        )),
        Center(
            child: Text(
          "Alto:" + mediaQuery.size.height.toString(),
          style: TextStyle(
            fontSize: 20,
          ),
        )),
      ],
    );
  }
}

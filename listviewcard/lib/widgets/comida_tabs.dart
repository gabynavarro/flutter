import 'package:flutter/material.dart';
import 'package:listviewcard/widgets/pizza_tabs.dart';

class ComidaTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 180.0,
      width: width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: PizzaTabs("Italiana", "15", "assets/images/pizza.png"),
          ),
          PizzaTabs("Mendocina", "20", "assets/images/empanadas.png"),
          PizzaTabs("Mexicana", "24", "assets/images/mexican.png"),
          PizzaTabs("Americana", "21", "assets/images/burger.png"),
        ],
      ),
    );
  }
}

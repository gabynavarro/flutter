import 'package:flutter/material.dart';

class RestaurantText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        20.0,
      ),
      child: Row(
        children: const [
          Text("Restaurantes en ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          Text("Mendoza ,Argentina",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(215, 153, 79, 1)))
        ],
      ),
    );
  }
}

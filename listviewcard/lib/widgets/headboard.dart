import 'package:flutter/material.dart';

class HeadBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.location_on),
              SizedBox(
                width: 3.0,
              ),
              const Text(
                "Valle de Uco, Mendoza",
                style: const TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Container(
            height: 55.0,
            width: 55.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: const Color.fromARGB(255, 226, 222, 222),
                    width: 2.0)),
            child: const Icon(Icons.shopping_basket),
          )
        ],
      ),
    );
  }
}

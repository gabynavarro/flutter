import 'package:flutter/material.dart';

import '../widgets/comida_tabs.dart';
import '../widgets/headboard.dart';
import '../widgets/info_delivery.dart';
import '../widgets/restaurant_lista.dart';
import '../widgets/restaurant_text.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          child: ListView(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              HeadBoard(),
              const SizedBox(
                height: 30.0,
              ),
              InfoDelivery(),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.all(
                  20.0,
                ),
                child: Text("Explorar las cocinas",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              ComidaTabs(),
              const SizedBox(
                height: 20.0,
              ),
              RestaurantText(),
              RestaurantLista(),
            ],
          ),
        ),
      ),
    );
  }
}

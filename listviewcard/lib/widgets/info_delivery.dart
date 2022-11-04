import 'package:flutter/material.dart';

class InfoDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromRGBO(255, 248, 230, 1),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: width / 20),
              height: 150.0,
              width: width / 2.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "10-minutos\ndelivery",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(215, 153, 79, 1)),
                  ),
                  SizedBox(
                    height: width / 30,
                  ),
                  Text(
                    "Disfruta de tu comida en sólo 10 minutos. Gratis para siempre",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            //here comes the image
            Container(
              height: 150.0,
              width: width / 2.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/pizzagirl.png"))),
            )
          ],
        ),
      ),
    );
  }
}

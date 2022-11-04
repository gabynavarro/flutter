import 'package:flutter/material.dart';

class RestaurantTabs extends StatelessWidget {
  const RestaurantTabs(this.address, this.name);

  final String address;
  final String name;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Container(
          width: width / 2.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120.0,
                width: width / 2.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: NetworkImage(address), fit: BoxFit.cover)),
              ),
              //name of the dish
              SizedBox(
                height: 15.0,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ));
  }
}

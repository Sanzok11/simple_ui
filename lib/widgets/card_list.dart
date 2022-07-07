import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final dynamic itemData;
  const CardView({Key? key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
        children: [
          Stack(
            children: [
              Image.asset(itemData["image"]),
              const Positioned(top:15,right:15,child: Icon(Icons.favorite_border, color: Colors.black))
            ],
          )
        ],
      )),
    );
  }
}

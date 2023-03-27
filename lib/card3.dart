import 'package:flutter/cupertino.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            constraints: const BoxConstraints.expand(width: 350, height: 450),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Stack(
              children: [],
            )));
  }
}

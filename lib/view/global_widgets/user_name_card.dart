import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard(
      {super.key,
      required this.name,
      required this.image,
      this.onCardTapped,
      this.hieght,
      this.width});
  final String name;
  final String image;
  final double? hieght;
  final double? width;
  final void Function()? onCardTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: Column(children: [
        Image.asset(
          image,
          height: hieght,
          width: width,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white),
        )
      ]),
    );
  }
}

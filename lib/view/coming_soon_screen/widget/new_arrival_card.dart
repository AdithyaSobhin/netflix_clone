import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

// ignore: unused_element
class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
    required this.title,
    required this.url,
    required this.date,
  });
  final String title;
  final String url;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      color: ColorConstants.darkgrey,
      child: Row(
        children: [
          Image.network(
            url,
            height: 55,
            width: 113,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Arrival",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                title,
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(.83),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                date,
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(.48),
                    fontSize: 11,
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}

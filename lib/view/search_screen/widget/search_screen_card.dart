import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class SearchScreenCard extends StatelessWidget {
  const SearchScreenCard({super.key, required this.url, required this.title});
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.darkgrey,
      child: Row(
        children: [
          Image.network(
            url,
            height: 76,
            width: 146,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              title,
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 15,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outline_outlined,
            color: ColorConstants.mainWhite,
            size: 26,
          )
        ],
      ),
    );
  }
}

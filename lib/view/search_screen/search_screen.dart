import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/search_screen/widget/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                filled: true,
                fillColor: ColorConstants.darkgrey,
                hintText: "Search for a show, movie,genre,e.t.c.",
                hintStyle:
                    TextStyle(color: ColorConstants.lightgrey, fontSize: 15),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstants.lightgrey,
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: ColorConstants.lightgrey,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Top Searches",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 21,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => SearchScreenCard(
                      title: DummyDb.searchScreenDatas[index]["title"],
                      url: DummyDb.searchScreenDatas[index]["url"]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 3,
                      ),
                  itemCount: 10))
        ],
      ),
    );
  }
}

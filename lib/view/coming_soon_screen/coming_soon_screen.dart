import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/coming_soon_screen/widget/coming_soon_movie_card.dart';
import 'package:netflix_clone/view/coming_soon_screen/widget/new_arrival_card.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        appBar: AppBar(
          titleSpacing: 0,
          leadingWidth: 60,
          backgroundColor: ColorConstants.mainBlack,
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(
              backgroundColor: ColorConstants.red,
              child: Icon(
                Icons.notifications,
                color: ColorConstants.mainWhite,
              ),
            ),
          ),
          title: Text(
            "Notifications",
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold,
                fontSize: 19),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: List.generate(
                DummyDb.NewArrivalCardList.length,
                (index) => NewArrivalCard(
                  title: DummyDb.NewArrivalCardList[index]["title"],
                  url: DummyDb.NewArrivalCardList[index]["url"],
                  date: DummyDb.NewArrivalCardList[index]["date"],
                ),
              ),
            ),
            ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 25),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ComingSoonMovieCard(
                      title: DummyDb.comingSoonMovieList[index]["title"],
                      url: DummyDb.comingSoonMovieList[index]["url"],
                      des: DummyDb.comingSoonMovieList[index]["description"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 17,
                    ),
                itemCount: DummyDb.comingSoonMovieList.length)
          ]),
        ));
  }
}

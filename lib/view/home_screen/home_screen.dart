import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/home_screen/my_list_screen/my_list_screen.dart';
import 'package:netflix_clone/view/home_screen/widgets/custom_poster_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              stack_section(context),
              SizedBox(
                height: 20,
              ),
              //#2 play button section
              _buildPlayButtonSection(),
              SizedBox(
                height: 15,
              ),

              CustomPosterBuilder(
                imagesList: DummyDb.imagesList,
                isCircle: true,
                width: 102,
                hieght: 200,
                title: "Priviews",
              ),
              CustomPosterBuilder(
                hieght: 200,
                isInfoVisible: true,
                imagesList: DummyDb.imagesList,
                title: "Continue Watching for Emenalo",
              ),
              CustomPosterBuilder(
                imagesList: DummyDb.imagesList,
                title: "Popular on Netflix",
                hieght: 251,
                width: 154,
              ),
              CustomPosterBuilder(
                imagesList: DummyDb.imagesList,
                title: "Popular on Netflix",
                hieght: 251,
                width: 154,
              ),
              CustomPosterBuilder(
                imagesList: DummyDb.imagesList,
                title: "Popular on Netflix",
                hieght: 251,
                width: 154,
              ),
              CustomPosterBuilder(
                imagesList: DummyDb.imagesList,
                title: "Popular on Netflix",
                hieght: 251,
                width: 154,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildPlayButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              size: 24,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: TextStyle(color: ColorConstants.mainWhite),
            ),
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: ColorConstants.mainWhite,
          ),
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 20),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 21,
                color: ColorConstants.mainBlack,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Play",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              size: 24,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Info",
              style: TextStyle(color: ColorConstants.mainWhite),
            ),
          ],
        ),
      ],
    );
  }

  Stack stack_section(context) {
    return Stack(
      children: [
        Container(
          height: 415,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://s3-alpha-sig.figma.com/img/7bb1/9b45/51b7ed5e50b1b5f28c18a87b391af6d1?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HU6q~JRZLakHaGLUj-7PeWPuTV-4~3na8YgvjISfkpBzFhI2tKLjPWW6nFpx4AKx6LWmgOOsGkjNElsbFOCAYvVVJ5SS9T4C4-8n54K8BYyaK9FlaD~ax2~DNihVttzlNB8ieHUqXGZ0Ynx-SLON7THLSX0kMTqwjWC7T4vefcziKE9JNuIHD5gE7jbXSECZlZYwF2c8YiAUgn0CbZZY~Tz1OoApMerZGjMcN7Y7rsDHC27ImeCw-YxJ8i2-zIXrWjsIAy25hux9LnQVvl1F9JxzDXLbhmWQnApDvTBVfr-w2N4i9dp3Ns4walckoPxklFf2~rv5EPfIoVhtGdiOVw__"),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 45, left: 10, right: 20),
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [ColorConstants.mainBlack, Colors.transparent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              top_section(context),
              top10_section(),
            ],
          ),
        ),
      ],
    );
  }

  Row top_section(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(ImageConstants.LOGO_N),
        Text(
          "TV Shows",
          style: TextStyle(color: ColorConstants.mainWhite, fontSize: 17.2),
        ),
        Text(
          "Movies",
          style: TextStyle(color: ColorConstants.mainWhite, fontSize: 17.2),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyListScreen(),
                ));
          },
          child: Text(
            "My List",
            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 17.2),
          ),
        ),
      ],
    );
  }

  Row top10_section() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(children: [
          Container(
            child: Image.asset(
              ImageConstants.TOP_10_border,
              height: 15,
              width: 15,
            ),
          ),
          Container(
            child: Image.asset(
              ImageConstants.TOP_10,
              height: 15,
              width: 15,
            ),
          )
        ]),
        SizedBox(
          width: 5,
        ),
        Text(
          "#2 in Nigeria Today",
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

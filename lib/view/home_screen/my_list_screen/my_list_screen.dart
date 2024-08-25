import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        leading: Image.asset(ImageConstants.LOGO_N),
        title: Row(
          children: [
            Text(
              "My List",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 18),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: ColorConstants.mainWhite,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.6),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://creativereview.imgix.net/content/uploads/2023/12/Oppenheimer.jpg?auto=compress,format&q=60&w=1263&h=2000"))),
            ),
            itemCount: 20,
          ),
        ),
      ),
    );
  }
}

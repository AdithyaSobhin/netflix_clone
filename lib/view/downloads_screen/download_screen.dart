import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Text(
          "Smart Downloads",
          style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14.72),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Introducing Downloads For You",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 19.63,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 10.78,
                )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xff424242),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40.89,
              width: 353,
              color: Color(0xff0071EB),
              child: Center(
                child: Text("SETUP",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 13.86,
                    )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 33,
                width: 239,
                color: Color(0xff424242),
                child: Center(
                  child: Text("Find Something to Download",
                      style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 15,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

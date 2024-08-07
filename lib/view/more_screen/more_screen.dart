import 'dart:io';

import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/global_widgets/user_name_card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 38,
            ),
            //#1 user selection section

            _buildUserSelectionSection(),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstants.mainWhite,
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Manage Profiles",
                  style: TextStyle(color: ColorConstants.mainWhite),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //#2 referrel section
            _buildReferrelSection()
          ],
        ),
      ),
    );
  }

  Container _buildReferrelSection() {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 19, right: 9, bottom: 26),
      color: ColorConstants.lightBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.message,
                size: 25,
                color: ColorConstants.mainWhite,
              ),
              SizedBox(
                width: 9,
              ),
              Text(
                "Tell friends about Netflix",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
            style: TextStyle(
                letterSpacing: 1,
                color: ColorConstants.mainWhite,
                fontSize: 11,
                fontWeight: FontWeight.w500,
                height: 1.8),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Terms & Conditions",
            style: TextStyle(
                shadows: [Shadow(offset: Offset(0, -8), color: Colors.grey)],
                letterSpacing: 1,
                color: Colors.transparent,
                fontSize: 11,
                fontWeight: FontWeight.w500,
                height: 1.8,
                decoration: TextDecoration.underline,
                decorationColor: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: ColorConstants.mainBlack,
                    filled: true),
              )),
              SizedBox(
                width: 7,
              ),
              Container(
                height: 45,
                width: 96,
                alignment: Alignment.center,
                color: ColorConstants.mainWhite,
                child: Text(
                  "Copy link",
                  style: TextStyle(color: ColorConstants.mainBlack),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.facebook,
                size: 33,
                color: Colors.blue,
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                  width: 3,
                  thickness: 3,
                ),
              ),
              Icon(
                Icons.facebook,
                size: 33,
                color: Colors.blue,
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                  width: 3,
                  thickness: 3,
                ),
              ),
              Icon(
                Icons.facebook,
                size: 33,
                color: Colors.blue,
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                  width: 3,
                  thickness: 3,
                ),
              ),
              Icon(
                Icons.facebook,
                size: 33,
                color: Colors.blue,
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                  width: 3,
                  thickness: 3,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding _buildUserSelectionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Row(
        children: List.generate(
            DummyDb.userList.length + 1,
            (index) => index < DummyDb.userList.length
                ? Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: UserNameCard(
                        hieght: index == 0 ? 68 : 60,
                        width: index == 0 ? 73 : 65,
                        name: DummyDb.userList[index]["name"],
                        image: DummyDb.userList[index]["imagePath"]),
                  )
                : Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ColorConstants.mainWhite)),
                        height: 60,
                        width: 65,
                        child: Icon(
                          Icons.add,
                          color: ColorConstants.mainWhite,
                        ),
                      ),
                      Text(
                        "",
                        style: TextStyle(color: Colors.white, height: 2),
                      )
                    ],
                  )),
      ),
    );
  }
}

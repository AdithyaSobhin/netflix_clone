import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/global_widgets/user_name_card.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.mainBlack,
        title: Image.asset(
          ImageConstants.LOGO,
          height: 24,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Center(
        child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 75),
            itemCount: DummyDb.userList.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
                mainAxisExtent: 121),
            itemBuilder: (context, index) => index < DummyDb.userList.length
                ? UserNameCard(
                    name: DummyDb.userList[index]["name"],
                    image: DummyDb.userList[index]["imagePath"],
                    onCardTapped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                  )
                : UserNameCard(
                    name: "Add",
                    image: ImageConstants.ADD,
                    onCardTapped: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("feature not available")));
                    },
                  )),
      ),
    );
  }
}

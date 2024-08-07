import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/coming_soon_screen/widget/new_arrival_card.dart';

class DummyDb {
  static List userList = [
    {"imagePath": ImageConstants.USER1, "name": "user 1"},
    {"imagePath": ImageConstants.USER2, "name": "user 2"},
    {"imagePath": ImageConstants.USER3, "name": "user 3"},
    {"imagePath": ImageConstants.USER4, "name": "user 4"},
  ];
  static List<String> imagesList = [
    "https://images.pexels.com/photos/4473634/pexels-photo-4473634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://m.media-amazon.com/images/I/71Jxq2p5YWL._AC_UF1000,1000_QL80_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3YKw6n-RDgqyFy69GSuuiue2qkkByXQLJLg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu87qHuOdz_IEI8J2i5WFaqOhQvclIAwjHBA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIM0-w43ChyvBSM5cXykYx5NV-Yl0WEX6Aqw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpCkLGD5QILxxv_hoeqqNeAySv0a3_2kg9xw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjoP95gLHgXRmQ6mBBS6I8zAewiFCmXYfZpA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFz-sL6uP9CrVrG_ps9l0St5leOy-Q3czjoA&s",
  ];
  static List searchScreenDatas = [
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Inception"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Dark Knight"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Interstellar"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Matrix"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Fight Club"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Pulp Fiction"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Shawshank Redemption"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Godfather"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Forrest Gump"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Lord of the Rings"
    }
  ];
  static List comingSoonMovieList = [
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Inception",
      "description":
          "A mind-bending thriller where a thief enters people's dreams to steal secrets."
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Dark Knight",
      "description":
          "Batman faces his greatest nemesis, the Joker, in this gripping crime drama."
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Interstellar",
      "description":
          "A team of explorers travel through a wormhole in space to ensure humanity's survival."
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Matrix",
      "description":
          "A hacker discovers the reality he knows is a simulation controlled by machines."
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Fight Club",
      "description":
          "A disillusioned man forms an underground fight club as a form of male bonding."
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Pulp Fiction",
      "description":
          "Interwoven stories of crime and redemption in Los Angeles, directed by Tarantino."
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Shawshank Redemption",
      "description":
          "A banker is wrongfully imprisoned and forms a deep friendship over many years."
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Godfather",
      "description":
          "A powerful family's legacy of crime and loyalty, centered around Don Vito Corleone."
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Forrest Gump",
      "description":
          "The extraordinary life of a simple man who witnesses and influences historical events."
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Lord of the Rings",
      "description":
          "A hobbit sets out on a perilous journey to destroy a powerful ring and save Middle-earth."
    }
  ];
  static List NewArrivalCardList = [
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "Inception",
      "date": "2010-07-16"
    },
    {
      "url":
          "https://images.pexels.com/photos/758532/pexels-photo-758532.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "title": "The Dark Knight",
      "date": "2008-07-18"
    },
  ];
}

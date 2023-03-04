import 'package:flutter/material.dart';

import 'feed.dart';

class FeedList extends StatelessWidget {
  const FeedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posts = [
      {
        "imgUrl": "https://images.pexels.com/photos/11538096/pexels-photo-11538096.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "title": "Lorem ipsum dolor sit amet",
        "profilePic": "https://images.pexels.com/photos/10869715/pexels-photo-10869715.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "description": "Hello Ahavah👋🏻,Join us tonight for a time of prayer and worship❤️ @ 7:00 pm* @ 705 Progress Ave Unit 10* If you are unable to join us in person,watch us live on zoom🧑🏻‍💻",
        "dateTime": "",
        "likes": "25"
      },
      {
        "profilePic": "https://images.pexels.com/photos/10869715/pexels-photo-10869715.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "title": "Lorem ipsum dolor sit amet",
        "description": "Can u pray for my friend. Her name is kudzie and she is one of the closest friend I got here. She went to doctor recently and they said that she is showing sign of cancer . However , she has a test on Thursday for thorough investigation! Can u stand with me in prayer for healing and a good report Hello Church, This req",
        "dateTime": "",
        "likes": "25"
      },
      {
        "imgUrl": "https://images.pexels.com/photos/14920182/pexels-photo-14920182.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "title": "Lorem ipsum dolor sit amet",
        "profilePic": "https://images.pexels.com/photos/10869715/pexels-photo-10869715.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "dateTime": "",
        "description": "Hello Ahavah👋🏻,Join us tonight for a time of prayer and worship❤️ @ 7:00 pm* @ 705 Progress Ave Unit 10* If you are unable to join us in person,watch us live on zoom🧑🏻‍💻",
        "likes": "25"
      },
      {
        "profilePic": "https://images.pexels.com/photos/10869715/pexels-photo-10869715.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "title": "Lorem ipsum dolor sit amet",
        "description": "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet",
        "dateTime": "",
        "likes": "25"
      }
    ];
    return ListView.builder(
        itemCount: posts.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index){
          return  Feed(url: posts[index]['imgUrl'], title: posts[index]['title']!, description: posts[index]['description']!, likes: int.parse(posts[index]['likes']!), profilePic: posts[index]['profilePic']!);
        });
  }
}
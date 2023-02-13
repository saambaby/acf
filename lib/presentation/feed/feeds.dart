import 'package:acf/presentation/feed/widget/story_tile.dart';
import 'package:flutter/material.dart';
import '../core/utils/size_config.dart';
class Feeds extends StatelessWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: rh(50)),
      child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                padding: EdgeInsets.only(top: rh(50), left: rw(10), right: rw(10)),
                height: rh(size.height * .15),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  List.generate(10, (int index) {
                    return  StoryTile(isMe: index==0, userName: 'saam.baby',) ;}
                  ),
                ),
              )
            ],
          )),
    );
  }
}






import 'package:flutter/material.dart';

import '../../profile/widgets/user_avatar.dart';

class Story extends StatelessWidget {
  final bool isMe;
  final String userName;
  final String storyId;
  const Story({
    super.key, required this.isMe, required this.userName, required this.storyId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            UserAvatar(isMe: isMe, imgUrl: 'https://picsum.photos/537/35$storyId',),
            Text(
              isMe? 'Your Story':userName,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
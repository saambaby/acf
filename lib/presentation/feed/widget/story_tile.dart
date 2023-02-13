
import 'package:flutter/material.dart';

import '../../profile/widgets/user_avatar.dart';

class StoryTile extends StatelessWidget {
  final bool isMe;
  final String userName;
  const StoryTile({
    super.key, required this.isMe, required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          UserAvatar(isMe: isMe),
          Text(
            isMe? 'Your Story':userName,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 9,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
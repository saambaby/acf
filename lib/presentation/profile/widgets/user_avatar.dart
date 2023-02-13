

import 'package:flutter/material.dart';

import '../../core/utils/size_config.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.isMe,
  });

  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: !isMe? Alignment.center:Alignment.bottomRight,
      children: [
        !isMe? Container(
          height: rw(55),
          width: rw(55),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.redAccent,
                    Colors.amberAccent,
                  ]
              ),
              borderRadius: BorderRadius.circular(60)
          ),
        ):const SizedBox.shrink(),
        Container(
          height:rw(50),
          width: rw(50),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              image:const  DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage("https://picsum.photos/536/354")
              ),
              border: !isMe? Border.all(color:Colors.white, width: 3):Border.all(width: 0)
          ),
        ),
        isMe? GestureDetector(
          onTap:(){},
          child: Container(
              height: rh(20),
              width: rw(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.redAccent,
                  border:Border.all(color:Colors.black, width: 3)
              ),
              child:const Icon(Icons.add, size: 15 , color: Colors.white,)
          ),
        ):const SizedBox.shrink()

      ],
    );
  }
}
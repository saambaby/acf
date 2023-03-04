import 'package:acf/presentation/core/utils/size_config.dart';
import 'package:acf/presentation/core/widgets/button/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  final String? url;
  final String profilePic;
  final String title;
  final String description;
  final int likes;
  const Feed({Key? key, required this.url, required this.title, required this.description, required this.likes, required this.profilePic}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: rh(15), horizontal: rw(20)),
      width: double.infinity,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: rf(15), backgroundImage: NetworkImage(widget.profilePic)),
                  SizedBox(width: rw(5),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'acfcanada',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700,
                            letterSpacing: .2,
                            fontSize: 10,
                            color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        width: size.width*.55,
                        child: Text(
                          'When life gets too hard to stand!.. Kneel',
                          maxLines: 1,
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              letterSpacing: .2,
                              fontSize: 9,
                              height: 1.5,
                              color:Theme.of(context).primaryColor.withOpacity(.8)),
                        ),
                      ),
                    ],)
                ],
              ),
              Buttons.icon(context: context, right: 10,size:22, semanticLabel: 'Like',iconColor: Theme.of(context).primaryColor, onPressed: (){}, icon: Icons.more_horiz_outlined, ),
            ],
          ),
          SizedBox(height: rh(10),),
          Text(
            widget.description,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w500,
                height: 1.25,
                fontSize: 12,
                color: Theme.of(context).primaryColor.withOpacity(.8)),
          ),

          SizedBox(height: rh(5),),

          SizedBox(height: rh(10),),
         ( widget.url==null)? Container():Container(
            height: size.height*.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(rf(10)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.url!)
                )
            ),
          ),
          SizedBox(height: rh(5),),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Buttons.icon(context: context, right: 5,size:20, semanticLabel: 'Like',iconColor: Theme.of(context).primaryColor, onPressed: (){}, icon: CupertinoIcons.hand_thumbsup, ),
                    Text(
                      '${widget.likes}',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w600,
                          letterSpacing: .2,
                          fontSize: 10,
                          height: 2,
                          color: Theme.of(context).primaryColor),
                    ),
                    const SizedBox(width: 5,)
                  ]),
                  Buttons.icon(context: context, right: 10,size:22, semanticLabel: 'Like',iconColor: Theme.of(context).primaryColor, onPressed: (){}, icon: CupertinoIcons.bookmark, ),
                ],
              ),

              SizedBox(height: rh(5),),
              Text(
                '5 hours ago',
                maxLines: 3,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w400,
                    letterSpacing: .2,
                    fontSize: 9,
                    color: Theme.of(context).primaryColor.withOpacity(.5)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:acf/presentation/home/widget/reel_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils/size_config.dart';
import '../core/widgets/app_bar/custom_app_bar.dart';
import '../core/widgets/button/buttons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(alignment: Alignment.bottomCenter, children: [
      const ReelPlayer(
          url:
              'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
      Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: size.height * .2,
          child: Center(
            child: Column(children: [
              Text(
                'Desire Him More',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Theme.of(context).primaryColor),
              ),
              const SizedBox(height: 10),
              Text(
                'Ps. 27:4 . 4:29 min',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Theme.of(context).hintColor),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 1,
                    child: AppBarIcon(
                      icon: CupertinoIcons.share,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Buttons.flexible(
                      context: context,
                      text: "Begin",
                      borderRadius: 10,
                      vPadding: space1x,
                      onPressed: () {},
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: AppBarIcon(
                      icon: CupertinoIcons.heart,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(CupertinoIcons.circle_fill,
                        size: 8, color: Theme.of(context).primaryColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(
                      CupertinoIcons.circle_fill,
                      size: 8,
                      color: Theme.of(context).highlightColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(
                      CupertinoIcons.circle_fill,
                      size: 8,
                      color: Theme.of(context).highlightColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(
                      CupertinoIcons.circle_fill,
                      size: 8,
                      color: Theme.of(context).highlightColor,
                    ),
                  ),
                ],
              )
            ]),
          )),
    ]);
  }
}

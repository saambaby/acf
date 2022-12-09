import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../custom_widgets.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.isTransparent = true,
    this.isTitleCentered,
    this.hasBackButton = true,
    this.isHeroAnimated = true,
    this.actions,
    this.onBackTap,
    this.showOptions = true,
  });

  ///Title of text
  final String title;

  ///Should the title be centered
  ///
  ///[Default is null]
  final bool? isTitleCentered;
  final bool isTransparent;

  ///Platform adaptive back icon
  ///
  ///[Default is true]
  final bool hasBackButton;

  ///The widgets are rendered from end
  final List<Widget>? actions;

  ///Is Hero animated
  final bool isHeroAnimated;

  ///Show Action Option
  final bool showOptions;

  final VoidCallback? onBackTap;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: isHeroAnimated ? 'app_bar' : 'no_hero_animation',
      child: Container(
        width: double.infinity,
        color: isTransparent ? Colors.transparent : Colors.black,
        padding: EdgeInsets.only(
          top: rh(40),
          left: space3x,
          right: space3x,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                if (!hasBackButton)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: onBackTap ?? () => Navigation.pop(context),
                      child: const AppBarIcon(
                        icon: CupertinoIcons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),

                //Back Button
                if (hasBackButton)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: onBackTap ?? () => Navigation.pop(context),
                      child: Row(
                        children: [
                          const AppBarIcon(
                            icon: CupertinoIcons.back,
                            color: Colors.white,
                          ),
                          Text(
                            'Back',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontSize: rf(14), color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),

                //Main Heading and Title
                Align(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),

                //Actions
                if (showOptions)
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CIcons.fromMaterial(
                          size: 25,
                          color: Colors.white,
                          icon: CupertinoIcons.person_circle,
                          semanticLabel: 'Account',
                        ),
                        SizedBox(width: rw(space3x)),
                        CIcons.fromMaterial(
                          size: 25,
                          color: Colors.white,
                          icon: CupertinoIcons.chat_bubble_2,
                          semanticLabel: 'Chats',
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            //Back Button
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({Key? key, required this.icon, this.color})
      : super(key: key);
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Buttons.icon(
      context: context,
      icon: icon,
      size: 25,
      right: space1x,
      iconColor: color,
      semanticLabel: 'Back',
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

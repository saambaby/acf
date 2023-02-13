import 'package:acf/domain/core/entity/video_enity.dart';
import 'package:acf/presentation/core/utils/navigation.dart';
import 'package:acf/presentation/core/widgets/video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:video_player/video_player.dart';
import '../../core/animations/page_transition.dart';
import '../../core/utils/size_config.dart';
import '../../core/widgets/button/buttons.dart';

class ReelPlayer extends StatefulWidget {
  final VideoEntity video;
  final int length;
  final int selected;
  const ReelPlayer({super.key, required this.video, required this.length, required this.selected});

  @override
  State<ReelPlayer> createState() => _ReelPlayerState();
}

class _ReelPlayerState extends State<ReelPlayer>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AcfVideoPlayer(url: widget.video.url),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment(0, -0.75),
                  begin: Alignment(0, 0.95),
                  colors: [Colors.white, Colors.transparent])),
        ),
        Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: size.height * .25,
            child: Center(
              child: Column(children: [
                Text(
                  DateFormat('MMMEd').format(widget.video.date),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Theme.of(context).hintColor),
                ),
                SizedBox(height: rh(10)),
                Text(
                  widget.video.title,
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
                  widget.video.subTitle,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Theme.of(context).hintColor),
                ),
                SizedBox(height: rh(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Buttons.icon(
                        context: context,
                        icon: CupertinoIcons.share,
                        iconColor: Colors.black, semanticLabel: 'share',
                        onPressed: () {  },
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Buttons.flexible(
                        context: context,
                        text: 'Begin',
                        borderRadius: 10,
                        vPadding: space1x,
                        onPressed: () async {
                          await Navigation.push(
                            context,
                            customPageTransition: PageTransition(
                              duration: const Duration(milliseconds: 750),
                              type: PageTransitionType.fadeIn,
                              child: FullScreenVideoPlayer(url: widget.video.url, isLive: false, title: widget.video.title,),
                            ),
                          );

                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Buttons.icon(
                        context: context,
                        icon: CupertinoIcons.heart,
                        iconColor: Colors.black, semanticLabel: 'like', onPressed: () {  },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: rh(15)),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildIndicator(widget.length),
                    )
                ),

              ]),
            )),
      ],
    );
  }
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 30 : 8,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator(int length) {
    List<Widget> indicators = [];
    for (int i = 0; i < length; i++) {
      if (widget.selected == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}

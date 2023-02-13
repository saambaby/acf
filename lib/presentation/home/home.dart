import 'package:acf/presentation/home/widget/reels_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../domain/core/entity/video_enity.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final videos = [
    VideoEntity(
        title: 'Desire Him More',
        url: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        subTitle: 'Ps. 27:4 . 4:29 min',
        date: DateTime.now(),
        time: 0),
    VideoEntity(
        title: 'Start Fresh This Weekend',
        url: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        subTitle: 'Mt. 6:6 . 4:29 min',
        date: DateTime.now(),
        time: 0)
  ];
  @override
  Widget build(BuildContext context) {
    return
      ReelsPageView(data: videos);
  }
}

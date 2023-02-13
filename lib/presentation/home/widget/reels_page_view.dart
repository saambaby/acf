import 'package:acf/presentation/home/widget/reel_player.dart';
import 'package:flutter/material.dart';
import '../../../domain/core/entity/video_enity.dart';


class ReelsPageView extends StatefulWidget {
  final List<VideoEntity> data;
  const ReelsPageView({Key? key, required this.data}) : super(key: key);

  @override
  State<ReelsPageView> createState() => _ReelsPageViewState();
}

class _ReelsPageViewState extends State<ReelsPageView> {
  PageController? _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: PageView.builder(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            itemCount: widget.data.length,
            itemBuilder: (context, index){
              return  ReelPlayer(video: widget.data[index], selected: currentIndex, length: widget.data.length,);
            })
    );
  }


}

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelPlayer extends StatefulWidget {
  final String url;
  const ReelPlayer({super.key, required this.url});

  @override
  State<ReelPlayer> createState() => _ReelPlayerState();
}

class _ReelPlayerState extends State<ReelPlayer>
    with SingleTickerProviderStateMixin {
  VideoPlayerController? _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        _videoPlayerController!.setLooping(true);
        _videoPlayerController!.play;
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _videoPlayerController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        _videoPlayerController!.value.isInitialized
            ? Container(
                width: double.infinity,
                child: VideoPlayer(_videoPlayerController!),
              )
            : Container(),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment(0, -0.75),
                  begin: Alignment(0, 0.95),
                  colors: [Colors.white, Colors.transparent])),
        ),
      ],
    ));
  }
}

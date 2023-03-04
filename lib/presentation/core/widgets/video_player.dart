import 'package:acf/presentation/core/widgets/app_bar/custom_app_bar.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import '../utils/size_config.dart';

class AcfVideoPlayer  extends StatefulWidget {
  final String url;
  const AcfVideoPlayer({Key? key, required this.url}) : super(key: key);

  @override
  State<AcfVideoPlayer> createState() => _AcfVideoPlayerState();
}

class _AcfVideoPlayerState extends State<AcfVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.url);
    _initializeVideoPlayerFuture = _videoPlayerController.initialize().then((_) async {
      setState(() {
        _videoPlayerController.play();
      });
    });;
    _videoPlayerController.setLooping(true);
    _videoPlayerController.setVolume(0.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return    SizedBox(
              width: double.infinity,
              child: VideoPlayer(_videoPlayerController),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

        }); }}

class FullScreenVideoPlayer extends StatefulWidget {
  final String url;
 final String title;
 final bool isLive;
  const FullScreenVideoPlayer({Key? key, required this.url, required this.title, required this.isLive}) : super(key: key);

  @override
  State<FullScreenVideoPlayer> createState() => _FullScreenVideoPlayerState();
}

class _FullScreenVideoPlayerState extends State<FullScreenVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  int? bufferDelay;
  Future<void> initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(widget.url);
    await Future.wait([
      _videoPlayerController.initialize()
    ]);
    _createChewieController();
    setState(() {

    });
  }
  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  void _createChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      zoomAndPan: true,
      isLive: widget.isLive,
      materialProgressColors: ChewieProgressColors(
          playedColor: Colors.redAccent,
          bufferedColor: Colors.white38,
          backgroundColor: Colors.black),
      looping: false,
      cupertinoProgressColors: ChewieProgressColors(
          playedColor: Colors.redAccent,
          bufferedColor: Colors.white38,
          backgroundColor: Colors.black),
      allowFullScreen: true,
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      showControlsOnInitialize: true,
      progressIndicatorDelay:
      bufferDelay != null ? Duration(milliseconds: bufferDelay!) : null,
      hideControlsTimer: const Duration(seconds: 1),
      autoInitialize: true,
      controlsSafeAreaMinimum: EdgeInsets.symmetric(vertical: rh(20), horizontal: rw(20))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: _chewieController != null &&
            _chewieController!.videoPlayerController.value.isInitialized
            ? Chewie(
          controller: _chewieController!,
        )
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
          ],
        )
      ),
    );
  }
}



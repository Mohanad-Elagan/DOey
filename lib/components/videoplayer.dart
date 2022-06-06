// @dart = 2.9
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/State.dart';
import 'package:video_player/video_player.dart';

class chiwe extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  const chiwe({Key key, this.videoPlayerController, this.looping}) : super(key: key);

  @override
  _chiweState createState() => _chiweState();
}

class _chiweState extends State<chiwe> {
  ChewieController _chewieController;
  @override
  void initState(){
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      looping: widget.looping,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 225,
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
  @override
  void dispose(){
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}


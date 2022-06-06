// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/videoplayer.dart';
import 'package:video_player/video_player.dart';

import '../constants.dart';

class webdevlearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Web Development Course",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.05),
                chiwe(
                  videoPlayerController: VideoPlayerController.asset('videos/web.mp4'),
                  looping: true,
                )
              ],
            ),
          ),
        )
    );
  }
}

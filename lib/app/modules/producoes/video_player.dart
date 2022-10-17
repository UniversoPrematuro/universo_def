import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../models/video_model.dart';

class VideoScreen extends StatefulWidget {

  final String id;
  const VideoScreen({super.key, required this.id});


  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {

  Video video = Video();
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        onReady: () {
          print('Player is ready.');
        },
      ),
    );
  }
}